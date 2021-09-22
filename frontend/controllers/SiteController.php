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
use common\models\Region;
use common\models\Province;
use common\models\VoucherCode;
use common\models\VoucherCodeUser;
use common\models\Answer;
use common\models\Question;
use common\models\Option;
use yii\helpers\ArrayHelper;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['home', 'my-profile', 'profile'],
                'rules' => [
                    [
                        'actions' => ['home', 'my-profile', 'profile'],
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
        if(!Yii::$app->user->isGuest)
        {
            $model = new UserInfo();
            $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);

            $users = UserInfo::find()->all();

            $leaderboards = [];
        
            return $this->render('index',[
                'model' => $model,
                'user' => $user,
                'leaderboards' => $leaderboards,
            ]);
        }else{
            return $this->render('home');
        }
    }

    public function actionMyProfile()
    {
        $generalInformation = GeneralInformation::findOne(['user_id' => Yii::$app->user->id]);
        $educationalAttainment = EducationalAttainment::findAll(['user_id' => Yii::$app->user->id]);
        $regions = Region::find()->all();

        return $this->render('_profile',[
            'generalInformation' => $generalInformation,
            'educationalAttainment' => $educationalAttainment,
            'regions' => $regions,
        ]);
    }

    public function actionPlay()
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);
        $lastAnswer = Answer::find()->where(['user_id' => Yii::$app->user->id])->orderBy(['id' => SORT_DESC])->one();
        $model = new Answer();

        $model->user_id = Yii::$app->user->id;

        $selectedRegion = Answer::find()->where(['question_id' => 12])->one();
        $selectedRegion = Region::find()->where(['abbreviation' => $selectedRegion->answer])->one();
        $data = [];
        
        if($lastAnswer)
        {
            if(!is_null($lastAnswer->next_question_id))
            {
                if($user->currentQuestion->id == 12)
                {
                    $data = Region::find()->orderBy(['region_sort' => SORT_ASC])->all();
                    $data = ArrayHelper::map($data, 'abbreviation', 'abbreviation');
                }else if($user->currentQuestion->id == 13)
                {
                    $data = $selectedRegion ? Province::find()->where(['region_c' => $selectedRegion->region_c])->orderBy(['province_m' => SORT_DESC])->asArray()->all() : [];
                    $data = $selectedRegion ? ArrayHelper::map($data, 'province_m', 'province_m') : [];
                }

                if($model->load(Yii::$app->request->post()))
                {
                    if($user->currentQuestion->input_type == 'option' && $user->currentQuestion->data_type == 'multiple-select')
                    {
                        $model->answer = json_encode($model->answer);
                    }

                    $model->save();
                }
            }
        }else{
            if($user->currentQuestion->id == 12)
            {
                $data = Region::find()->orderBy(['region_sort' => SORT_ASC])->all();
                $data = ArrayHelper::map($data, 'abbreviation', 'abbreviation');
            }else if($user->currentQuestion->id == 13)
            {
                $data = $selectedRegion ? Province::find()->where(['region_c' => $selectedRegion->answer])->orderBy(['province_m' => SORT_DESC])->asArray()->all() : [];
                $data = $selectedRegion ? ArrayHelper::map($data, 'province_m', 'province_m') : [];
            }

            if($model->load(Yii::$app->request->post()))
            {
                if($user->currentQuestion->input_type == 'option' && $user->currentQuestion->data_type == 'multiple-select')
                {
                    $model->answer = json_encode($model->answer);
                }

                $model->save();
            }
        }
        
        return $lastAnswer ? !is_null($lastAnswer->next_question_id) ? $this->renderAjax('_game',[
            'model' => $model,
            'user' => $user,
            'data' => $data,
        ]) : 
        $this->renderAjax('_review',[
            'model' => $model,
            'user' => $user,
        ]) :
        $this->renderAjax('_game',[
            'model' => $model,
            'user' => $user,
            'data' => $data,
        ]);
    }
}
