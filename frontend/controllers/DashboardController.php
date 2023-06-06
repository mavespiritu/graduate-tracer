<?php
namespace frontend\controllers;

use Yii;
use yii\db\Expression;
use yii\base\InvalidArgumentException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\Stage;
use common\models\UserInfo;
use common\models\Badge;
use common\models\BadgeUser;
use common\models\Alumnus;
use common\models\Region;
use common\models\Province;
use common\models\VoucherCode;
use common\models\VoucherCodeUser;
use common\models\Answer;
use common\models\Question;
use common\models\Option;
use dektrium\user\models\Course;
use dektrium\user\models\Major;
use common\models\Completion;
use yii\helpers\ArrayHelper;

/**
 * Site controller
 */
class DashboardController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['index'],
                'rules' => [
                    [
                        'actions' => ['index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionMajorsList($id)
    {
        $majors = Major::find()
                    ->where(['course_id' => $id])
                    ->asArray()
                    ->all();

        $arr = [];
        $arr[] = ['id'=>'','text'=>''];
        foreach($majors as $major){
            $arr[] = ['id' => $major['id'] ,'text' => $major['name']];
        }
        \Yii::$app->response->format = 'json';
        return $arr;
    }

    public function actionAlumniList($q = null, $id = null) {
        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;

        $out = ['results' => ['id' => '', 'name' => '']];
        if (!is_null($q)) {
            $names = UserInfo::find()
                    ->select(['user_id as id', 'concat(user_info.firstname," ",user_info.middlename," ",user_info.lastname," ",user_info.extname) as name'])

                    ->orWhere(['like','firstname', $q])
                    ->orWhere(['like','middlename', $q])
                    ->orWhere(['like','lastname', $q])
                    ->orWhere(['like','extname', $q])
                    ->orWhere(['like','concat(user_info.firstname," ",user_info.middlename," ",user_info.lastname," ",user_info.extname)', $q])
                    ->orWhere(['like','concat(user_info.firstname," ",user_info.lastname," ",user_info.extname)', $q])
                    ->orWhere(['like','concat(user_info.firstname," ",user_info.lastname)', $q])
                    ->andWhere(['<>', 'user_id', Yii::$app->user->id])
                    ->limit(20)
                    ->asArray()
                    ->all();

            $out['results'] = array_values($names);
        }
        elseif ($id > 0) {
            $out['results'] = ['id' => $id, 'name' => UserInfo::find($id)->firstname.' '.UserInfo::find($id)->middlename.' '.UserInfo::find($id)->lastname.' '.UserInfo::find($id)->extname];
        }
        return $out;
    }

    public function actionProvinceList($region)
    {
        $provinces = Province::find()->select(['province_c','province_m'])->where(['region_c' => $region])->all();
        $arr = [];
        $arr[] = ['id'=>'','text'=>''];
        foreach($provinces as $province){
            $arr[] = ['id'=>$province->province_c,'text'=> $province->province_m];
        }
        \Yii::$app->response->format = 'json';
        return $arr;
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        $model = new Alumnus();

        $years = Alumnus::find()->select(['distinct(batch) as year'])->orderBy(['batch' => SORT_DESC])->asArray()->all();
        $years = ArrayHelper::map($years, 'year', 'year');

        $courses = Course::find()->orderBy(['name' => SORT_ASC])->all();
        $courses = ArrayHelper::map($courses, 'id', 'name');

        $majors = [];

        return $this->render('index', [
            'model' => $model,
            'years' => $years,
            'courses' => $courses,
            'majors' => $majors,
        ]);
    }

    public function actionAlumniData($year, $course_id, $major_id)
    {
        $total = Alumnus::find();

        if(!empty($year))
        {
            $total = $total->andWhere(['batch' => $year]);
        }

        if(!empty($course_id))
        {
            $total = $total->andWhere(['course_id' => $course_id]);
        }

        if(!empty($major_id))
        {
            $total = $total->andWhere(['major_id' => $major_id]);   
        }

        $total = $total->count();

        return $this->renderAjax('/site/dashboard/alumni_data', [
            'total' => $total
        ]);
    }

    public function actionRespondentRate($year, $course_id, $major_id)
    {   
        $firstName = Answer::find()->select(['user_id', 'answer'])->where(['question_id' => 1])->createCommand()->getRawSql();

        $middleName = Answer::find()->select(['user_id', 'answer'])->where(['question_id' => 2])->createCommand()->getRawSql();

        $lastName = Answer::find()->select(['user_id', 'answer'])->where(['question_id' => 3])->createCommand()->getRawSql();

        $respondentsTotal = UserInfo::find()->count();

        $respondents = UserInfo::find()
                    ->select(['
                        concat(course_id,"",IF(major_id IS NOT NULL, major_id, ""),"",IF(firstName.answer IS NOT NULL, UPPER(firstName.answer), ""),"",IF(middleName.answer IS NOT NULL, UPPER(middleName.answer), ""),"",IF(lastName.answer IS NOT NULL, UPPER(lastName.answer), ""),"",user_info.year_graduated) as referenceString
                    '])
                    ->leftJoin(['firstName' => '('.$firstName.')'], 'firstName.user_id = user_info.user_id')
                    ->leftJoin(['middleName' => '('.$middleName.')'], 'middleName.user_id = user_info.user_id')
                    ->leftJoin(['lastName' => '('.$lastName.')'], 'lastName.user_id = user_info.user_id')
                    ->createCommand()
                    ->getRawSql();
        
        $alumni = Alumnus::find()
                    ->select(['
                        concat(course_id,"",IF(major_id IS NOT NULL, major_id, ""),"",UPPER(firstname),"",UPPER(middlename),"",UPPER(lastname),"",batch) as referenceString
                    ']);

        $match = Alumnus::find()
                    ->select(['
                        concat(course_id,"",IF(major_id IS NOT NULL, major_id, ""),"",UPPER(firstname),"",UPPER(middlename),"",UPPER(lastname),"",batch) as referenceString
                    '])
                    ->innerJoin(['respondents' => '('.$respondents.')'], 'respondents.referenceString = concat(course_id,"",IF(major_id IS NOT NULL, major_id, ""),"",UPPER(firstname),"",UPPER(middlename),"",UPPER(lastname),"",batch)');

        if(!empty($year))
        {
            $alumni = $alumni->andWhere(['batch' => $year]);
            $match = $match->andWhere(['batch' => $year]);
        }

        if(!empty($course_id))
        {
            $alumni = $alumni->andWhere(['course_id' => $course_id]);
            $match = $match->andWhere(['course_id' => $course_id]);
        }

        if(!empty($major_id))
        {
            $alumni = $alumni->andWhere(['major_id' => $major_id]);   
            $match = $match->andWhere(['major_id' => $major_id]);   
        }

        $alumni = $alumni
                ->count();

        $match = $match
                ->count();

        return $this->renderAjax('/site/dashboard/respondent_rate', [
            'alumni' => $alumni,
            'match' => $match,
            'respondentsTotal' => $respondentsTotal
        ]);
    }

    public function actionMultiDegreeHolder($year, $course_id, $major_id)
    {   
        $multiDegree = Answer::find()->select(['user_id', 'answer'])
                        ->where(['question_id' => 15, 'answer' => 'Yes'])
                        ->createCommand()
                        ->getRawSql();

        $respondents = UserInfo::find()
                    ->select(['
                        user_id
                    '])
                    ->innerJoin(['multiDegree' => '('.$multiDegree.')'], 'multiDegree.user_id = user_info.user_id');

        if(!empty($year))
        {
            $respondents = $respondents->andWhere(['year_graduated' => $year]);
        }

        if(!empty($course_id))
        {
            $respondents = $respondents->andWhere(['course_id' => $course_id]);
        }

        if(!empty($major_id))
        {
            $respondents = $respondents->andWhere(['major_id' => $major_id]);   
        }

        $respondents = $respondents
                ->count();

        return $this->renderAjax('/site/dashboard/multi_degree_holder', [
            'respondents' => $respondents,
        ]);
    }

    public function actionEmployment($year, $course_id, $major_id)
    {   
        $employed = Answer::find()->select(['user_id', 'answer'])
                        ->where(['question_id' => 38, 'answer' => 'Yes'])
                        ->createCommand()
                        ->getRawSql();

        $unemployed = Answer::find()->select(['user_id', 'answer'])
                        ->where(['question_id' => 38, 'answer' => 'No'])
                        ->createCommand()
                        ->getRawSql();

        $employedRespondents = UserInfo::find()
                    ->select(['
                        user_id
                    '])
                    ->innerJoin(['employed' => '('.$employed.')'], 'employed.user_id = user_info.user_id');

        $unemployedRespondents = UserInfo::find()
                    ->select(['
                        user_id
                    '])
                    ->innerJoin(['unemployed' => '('.$unemployed.')'], 'unemployed.user_id = user_info.user_id');
            
        $respondents = UserInfo::find()->count();

        if(!empty($year))
        {
            $employedRespondents = $employedRespondents->andWhere(['year_graduated' => $year]);
            $unemployedRespondents = $unemployedRespondents->andWhere(['year_graduated' => $year]);
        }

        if(!empty($course_id))
        {
            $employedRespondents = $employedRespondents->andWhere(['course_id' => $course_id]);
            $unemployedRespondents = $unemployedRespondents->andWhere(['course_id' => $course_id]);
        }

        if(!empty($major_id))
        {
            $employedRespondents = $employedRespondents->andWhere(['major_id' => $major_id]);   
            $unemployedRespondents = $unemployedRespondents->andWhere(['major_id' => $major_id]);   
        }

        $employedRespondents = $employedRespondents->count();
        $unemployedRespondents = $unemployedRespondents->count();

        return $this->renderAjax('/site/dashboard/employment', [
            'respondents' => $respondents,
            'employedRespondents' => $employedRespondents,
            'unemployedRespondents' => $unemployedRespondents,
        ]);
    }

    public function actionJobClassification($year, $course_id, $major_id)
    {   
        $options = Option::find()->where(['question_id' => 41])->asArray()->all();
        $classification = Answer::find()->select(['user_id', 'answer'])
                        ->where(['question_id' => 41])
                        ->createCommand()
                        ->getRawSql();
        $data = [];

        $respondents = UserInfo::find()
                    ->select([
                        'classification.answer as answer',
                        'count(classification.user_id) as total'
                    ])
                    ->innerJoin(['classification' => '('.$classification.')'], 'classification.user_id = user_info.user_id');

        if(!empty($year))
        {
            $respondents = $respondents->andWhere(['year_graduated' => $year]);
        }

        if(!empty($course_id))
        {
            $respondents = $respondents->andWhere(['course_id' => $course_id]);
        }

        if(!empty($major_id))
        {
            $respondents = $respondents->andWhere(['major_id' => $major_id]);   
        }

        $respondents = $respondents
                ->groupBy(['classification.answer'])
                ->asArray()
                ->all();

        if(!empty($options))
        {
            foreach($options as $i => $option)
            {
                $data[$option['option']]['option'] = $option['option'];
                $data[$option['option']]['value'] = intval(0);
            }
        }

        if(!empty($respondents))
        {
            foreach($respondents as $respondent)
            {
                $data[$respondent['answer']]['value'] = intval($respondent['total']);
            }
        }

        $graphData = [];
        if(!empty($data))
        {
            foreach($data as $datum)
            {
                $graphData[] = $datum;
            }
        }
        
        return $this->renderAjax('/site/dashboard/job-classification', [
            'graphData' => $graphData,
            
        ]);
    }

    public function actionJobLocation($year, $course_id, $major_id)
    {   
        $local = Answer::find()->select(['user_id', 'answer'])
                        ->where(['question_id' => 45, 'answer' => 'Local'])
                        ->createCommand()
                        ->getRawSql();

        $abroad = Answer::find()->select(['user_id', 'answer'])
                        ->where(['question_id' => 45, 'answer' => 'Abroad'])
                        ->createCommand()
                        ->getRawSql();

        $localRespondents = UserInfo::find()
                    ->select(['
                        user_id
                    '])
                    ->innerJoin(['local' => '('.$local.')'], 'local.user_id = user_info.user_id');

        $abroadRespondents = UserInfo::find()
                    ->select(['
                        user_id
                    '])
                    ->innerJoin(['abroad' => '('.$abroad.')'], 'abroad.user_id = user_info.user_id');
            
        $respondents = UserInfo::find()->count();

        if(!empty($year))
        {
            $localRespondents = $localRespondents->andWhere(['year_graduated' => $year]);
            $abroadRespondents = $abroadRespondents->andWhere(['year_graduated' => $year]);
        }

        if(!empty($course_id))
        {
            $localRespondents = $localRespondents->andWhere(['course_id' => $course_id]);
            $abroadRespondents = $abroadRespondents->andWhere(['course_id' => $course_id]);
        }

        if(!empty($major_id))
        {
            $localRespondents = $localRespondents->andWhere(['major_id' => $major_id]);   
            $abroadRespondents = $abroadRespondents->andWhere(['major_id' => $major_id]);   
        }

        $localRespondents = $localRespondents->count();
        $abroadRespondents = $abroadRespondents->count();

        return $this->renderAjax('/site/dashboard/job-location', [
            'respondents' => $respondents,
            'localRespondents' => $localRespondents,
            'abroadRespondents' => $abroadRespondents,
        ]);
    }

    public function actionJobGross($year, $course_id, $major_id)
    {   
        $options = Option::find()->where(['question_id' => 65])->asArray()->all();
        $classification = Answer::find()->select(['user_id', 'answer'])
                        ->where(['question_id' => 65])
                        ->createCommand()
                        ->getRawSql();
        $data = [];

        $respondents = UserInfo::find()
                    ->select([
                        'classification.answer as answer',
                        'count(classification.user_id) as total'
                    ])
                    ->innerJoin(['classification' => '('.$classification.')'], 'classification.user_id = user_info.user_id');

        if(!empty($year))
        {
            $respondents = $respondents->andWhere(['year_graduated' => $year]);
        }

        if(!empty($course_id))
        {
            $respondents = $respondents->andWhere(['course_id' => $course_id]);
        }

        if(!empty($major_id))
        {
            $respondents = $respondents->andWhere(['major_id' => $major_id]);   
        }

        $respondents = $respondents
                ->groupBy(['classification.answer'])
                ->asArray()
                ->all();

        if(!empty($options))
        {
            foreach($options as $i => $option)
            {
                $data[$option['option']]['option'] = $option['option'];
                $data[$option['option']]['value'] = intval(0);
            }
        }

        if(!empty($respondents))
        {
            foreach($respondents as $respondent)
            {
                $data[$respondent['answer']]['value'] = intval($respondent['total']);
            }
        }
        
        return $this->renderAjax('/site/dashboard/job-gross', [
            'data' => $data,
            
        ]);
    }
}
