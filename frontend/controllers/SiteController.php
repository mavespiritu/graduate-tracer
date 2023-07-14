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
                'only' => ['index', 'home', 'my-profile', 'profile'],
                'rules' => [
                    [
                        'actions' => ['index', 'home', 'my-profile', 'profile'],
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
        $model = new UserInfo();
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);

        $users = UserInfo::find()->all();

        $leaderboards = [];

        $voucherCodeUser = VoucherCodeUser::findOne(['user_id' => Yii::$app->user->id]);
    
        return $this->render('index',[
            'model' => $model,
            'user' => $user,
            'leaderboards' => $leaderboards,
            'voucherCodeUser' => $voucherCodeUser,
        ]);
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

    public function actionHome()
    {
        $stages = Stage::find()->all();
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);

        return $this->renderAjax('_home', [
            'stages' => $stages,
            'user' => $user
        ]);
    }

    public function actionFirstPart()
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);

        $firstNameQuestion = Question::findOne(['id' => 1]);

        $firstNameModel = Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 1, 
                'next_question_id' => 2
                ]) ? 
                Answer::findOne([
                    'user_id' => Yii::$app->user->id, 
                    'question_id' => 1, 
                    'next_question_id' => 2
                ]) : new Answer();

        $firstNameModel->user_id = Yii::$app->user->id;
        $firstNameModel->question_id = 1;
        $firstNameModel->next_question_id = 2;

        $middleNameQuestion = Question::findOne(['id' => 2]);

        $middleNameModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 2, 
            'next_question_id' => 3
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 2, 
                'next_question_id' => 3
            ]) : new Answer();

        $middleNameModel->user_id = Yii::$app->user->id;
        $middleNameModel->question_id = 2;
        $middleNameModel->next_question_id = 3;

        $lastNameQuestion = Question::findOne(['id' => 3]);

        $lastNameModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 3, 
            'next_question_id' => 4
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 3, 
                'next_question_id' => 4
            ]) : new Answer();
            
        $lastNameModel->user_id = Yii::$app->user->id;
        $lastNameModel->question_id = 3;
        $lastNameModel->next_question_id = 4;

        $addressQuestion = Question::findOne(['id' => 4]);

        $addressModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 4, 
            'next_question_id' => 5
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 4, 
                'next_question_id' => 5
            ]) : new Answer();
            
        $addressModel->user_id = Yii::$app->user->id;
        $addressModel->question_id = 4;
        $addressModel->next_question_id = 5;
    }

    public function actionPlay($stage_id)
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);
        $stage = Stage::findOne($stage_id);
        $lastAnswer = Answer::find()->where(['user_id' => Yii::$app->user->id, 'stage_id' => $stage_id])->leftJoin('question', 'question.id = answer.question_id')->orderBy(['id' => SORT_DESC])->one();
        $model = new Answer();

        $model->user_id = Yii::$app->user->id;

        $selectedRegion = Answer::find()->where(['question_id' => 12])->one();
        $selectedRegion = !is_null($selectedRegion) ? Region::find()->where(['abbreviation' => $selectedRegion->answer])->one() : null;
        $data = [];

        $completion = Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) ? Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) : new Completion();
        $completion->user_id = Yii::$app->user->id;
        $completion->stage_id = $stage->id;

        $nextStage = Stage::findOne($stage->id + 1) ? Stage::findOne($stage->id + 1) : null;

        $badge = !is_null($user->getCurrentQuestion($stage->id)) ? Badge::find()->where(['question_id' => $user->getCurrentQuestion($stage->id)->id])->one() : null;

        // If there is an existing answer
        if($lastAnswer)
        {
            // If not the end of questions
            if(!is_null($lastAnswer->next_question_id))
            {
                /* echo "<pre>";
                print_r('Current Stage: '.$user->currentStage.'\n');
                print_r('Next Question Stage: '.$lastAnswer->nextQuestion->stage_id.'\n');
                print_r('Selected Stage: '.$stage->id.'\n');
                exit; */
                // If still on same stage
                if($lastAnswer->nextQuestion->stage_id == $stage->id)
                {
                    if($user->getCurrentQuestion($stage->id)->id == 12)
                    {
                        $data = Region::find()->orderBy(['region_sort' => SORT_ASC])->all();
                        $data = ArrayHelper::map($data, 'abbreviation', 'abbreviation');
                    }else if($user->getCurrentQuestion($stage->id)->id == 13)
                    {
                        $data = !is_null($selectedRegion) ? Province::find()->where(['region_c' => $selectedRegion->region_c])->orderBy(['province_m' => SORT_DESC])->asArray()->all() : [];
                        $data = !is_null($selectedRegion) ? ArrayHelper::map($data, 'province_m', 'province_m') : [];
                    }

                    if($model->load(Yii::$app->request->post()))
                    {
                        if($user->getCurrentQuestion($stage->id)->input_type == 'option' && $user->getCurrentQuestion($stage->id)->data_type == 'multiple-select')
                        {
                            $model->answer = json_encode($model->answer);
                        }

                        if(!is_null($badge))
                        {
                            if($badge->id == 1)
                            {
                                $matchAlumni = Alumnus::find()
                                    ->where([
                                        'CONCAT(REPLACE(firstname,".",""))' => str_replace('.', '',Yii::$app->user->identity->userinfo->firstname.''.Yii::$app->user->identity->userinfo->extname),
                                        'middlename' => Yii::$app->user->identity->userinfo->middlename,
                                        'lastname' => Yii::$app->user->identity->userinfo->lastname,
                                        'course_id' => Yii::$app->user->identity->userinfo->course_id,
                                        'major_id' => Yii::$app->user->identity->userinfo->major_id,
                                        'batch' => Yii::$app->user->identity->userinfo->year_graduated,
                                    ])
                                    ->one();

                                if($matchAlumni)
                                {
                                    $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                                    $badgeUser->user_id = Yii::$app->user->id;
                                    $badgeUser->badge_id = $badge->id;
                                    $badgeUser->save();
                                }
                            }else if($badge->id == 8){
                                $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                                    $badgeUser->user_id = Yii::$app->user->id;
                                    $badgeUser->badge_id = $badge->id;
                                    $badgeUser->save();
                            }else{
                                if($model->answer == $badge->answer)
                                {
                                    $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                                    $badgeUser->user_id = Yii::$app->user->id;
                                    $badgeUser->badge_id = $badge->id;
                                    $badgeUser->save();
                                }
                            }
                        }

                        $model->save();
                    
                    }

                    $lastAnswer = Answer::find()->where(['user_id' => Yii::$app->user->id, 'stage_id' => $stage_id])->leftJoin('question', 'question.id = answer.question_id')->orderBy(['id' => SORT_DESC])->one();

                    return !is_null($lastAnswer->next_question_id) ? $this->renderAjax('_game', [
                        'model' => $model,
                        'user' => $user,
                        'data' => $data,
                        'stage' => $stage,
                        'badge' => $badge
                    ]) : $this->renderAjax('_congratulatory',[
                        'model' => $model,
                        'user' => $user,
                        'stage' => $stage,
                        'nextStage' => $nextStage,
                    ]);

                }else{

                    $completion->status = 'Completed';
                    $completion->save();

                    return $this->renderAjax('_congratulatory',[
                        'model' => $model,
                        'user' => $user,
                        'stage' => $stage,
                        'nextStage' => $nextStage,
                    ]);
                }
            }else{
                $completion->status = 'Completed';
                $completion->save();

                return $this->renderAjax('_congratulatory',[
                    'model' => $model,
                    'user' => $user,
                    'stage' => $stage,
                    'nextStage' => $nextStage,
                ]);
            }
        }else{
            if($user->getCurrentQuestion($stage->id)->id == 12)
            {
                $data = Region::find()->orderBy(['region_sort' => SORT_ASC])->all();
                $data = ArrayHelper::map($data, 'abbreviation', 'abbreviation');
            }else if($user->getCurrentQuestion($stage->id)->id == 13)
            {
                $data = !is_null($selectedRegion) ? Province::find()->where(['region_c' => $selectedRegion->answer])->orderBy(['province_m' => SORT_DESC])->asArray()->all() : [];
                $data = !is_null($selectedRegion) ? ArrayHelper::map($data, 'province_m', 'province_m') : [];
            }

            if($model->load(Yii::$app->request->post()))
            {
                if($user->getCurrentQuestion($stage->id)->input_type == 'option' && $user->getCurrentQuestion($stage->id)->data_type == 'multiple-select')
                {
                    $model->answer = json_encode($model->answer);
                }

                if(!is_null($badge))
                {
                    if($badge->id == 1)
                    {
                        $matchAlumni = Alumnus::find()
                                    ->where([
                                        'CONCAT(REPLACE(firstname,".",""))' => str_replace('.', '',Yii::$app->user->identity->userinfo->firstname.''.Yii::$app->user->identity->userinfo->extname),
                                        'middlename' => Yii::$app->user->identity->userinfo->middlename,
                                        'lastname' => Yii::$app->user->identity->userinfo->lastname,
                                        'course_id' => Yii::$app->user->identity->userinfo->course_id,
                                        'major_id' => Yii::$app->user->identity->userinfo->major_id,
                                        'batch' => Yii::$app->user->identity->userinfo->year_graduated,
                                    ])
                                    ->one();

                        if($matchAlumni)
                        {
                            $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                            $badgeUser->user_id = Yii::$app->user->id;
                            $badgeUser->badge_id = $badge->id;
                            $badgeUser->save();
                        }
                    }else if($badge->id == 8){
                        $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                            $badgeUser->user_id = Yii::$app->user->id;
                            $badgeUser->badge_id = $badge->id;
                            $badgeUser->save();
                    }else{
                        if($model->answer == $badge->answer)
                        {
                            $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                            $badgeUser->user_id = Yii::$app->user->id;
                            $badgeUser->badge_id = $badge->id;
                            $badgeUser->save();
                        }
                    }
                }
                
                $model->save();
            }

            $lastAnswer = Answer::find()->where(['user_id' => Yii::$app->user->id, 'stage_id' => $stage_id])->leftJoin('question', 'question.id = answer.question_id')->orderBy(['id' => SORT_DESC])->one();

            return $this->renderAjax('_game', [
                'model' => $model,
                'user' => $user,
                'data' => $data,
                'stage' => $stage,
                'badge' => $badge
            ]);
        }
    }

    public function actionLeaderboard()
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);

        $points = Answer::find()
                ->select('user_id, count(id) as total')
                ->groupBy(['user_id'])
                ->createCommand()
                ->getRawSql();

        $users = UserInfo::find()
                ->select([
                    'concat(firstname," ",lastname," ",extname) as name',
                    'points.total as total'
                ])
                ->leftJoin(['points' => '('.$points.')'], 'points.user_id = user_info.user_id')
                ->where(['>', 'points.total', 0])
                ->orderBy(['points.total' => SORT_DESC])
                ->limit(20)
                ->asArray()
                ->all();
        
        return $this->renderAjax('_leaderboard',[
            'user' => $user,
            'users' => $users,
        ]);
    }

    public function actionBadge()
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);

        $badges = BadgeUser::find()->where(['user_id' => Yii::$app->user->id])->all();

        return $this->renderAjax('_badge',[
            'user' => $user,
            'badges' => $badges,
        ]);
    }

    public function actionBadgeEarned($id, $stage_id)
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);

        $stage = Stage::findOne($stage_id);

        $badge = Badge::findOne($id);   

        $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $id]);

        if($badgeUser)
        {
            return $this->renderAjax('_badge-earned', [
                'badge' => $badge,
                'stage' => $stage,
            ]);
        }else{
            $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);
            $stage = Stage::findOne($stage_id);
            $lastAnswer = Answer::find()->where(['user_id' => Yii::$app->user->id, 'stage_id' => $stage_id])->leftJoin('question', 'question.id = answer.question_id')->orderBy(['id' => SORT_DESC])->one();
            $model = new Answer();

            $model->user_id = Yii::$app->user->id;

            $selectedRegion = Answer::find()->where(['question_id' => 12])->one();
            $selectedRegion = !is_null($selectedRegion) ? Region::find()->where(['abbreviation' => $selectedRegion->answer])->one() : null;
            $data = [];

            $completion = Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) ? Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) : new Completion();
            $completion->user_id = Yii::$app->user->id;
            $completion->stage_id = $stage->id;

            $nextStage = Stage::findOne($stage->id + 1) ? Stage::findOne($stage->id + 1) : null;

            $badge = $lastAnswer ? !is_null($lastAnswer->next_question_id) ? Badge::find()->where(['question_id' => $user->getCurrentQuestion($stage->id)->id])->one() : null : null;
            $badgeEarned = null;
            // If there is an existing answer
            if($lastAnswer)
            {
                // If not the end of questions
                if(!is_null($lastAnswer->next_question_id))
                {
                    /* echo "<pre>";
                    print_r('Current Stage: '.$user->currentStage.'\n');
                    print_r('Next Question Stage: '.$lastAnswer->nextQuestion->stage_id.'\n');
                    print_r('Selected Stage: '.$stage->id.'\n');
                    exit; */
                    // If still on same stage
                    if($lastAnswer->nextQuestion->stage_id == $stage->id)
                    {
                        if($user->getCurrentQuestion($stage->id)->id == 12)
                        {
                            $data = Region::find()->orderBy(['region_sort' => SORT_ASC])->all();
                            $data = ArrayHelper::map($data, 'abbreviation', 'abbreviation');
                        }else if($user->getCurrentQuestion($stage->id)->id == 13)
                        {
                            $data = !is_null($selectedRegion) ? Province::find()->where(['region_c' => $selectedRegion->region_c])->orderBy(['province_m' => SORT_DESC])->asArray()->all() : [];
                            $data = !is_null($selectedRegion) ? ArrayHelper::map($data, 'province_m', 'province_m') : [];
                        }

                        if($model->load(Yii::$app->request->post()))
                        {
                            if($user->getCurrentQuestion($stage->id)->input_type == 'option' && $user->getCurrentQuestion($stage->id)->data_type == 'multiple-select')
                            {
                                $model->answer = json_encode($model->answer);
                            }

                            if(!is_null($badge))
                            {
                                if($badge->id == 1)
                                {
                                    $matchAlumni = Alumnus::find()
                                        ->where([
                                            'CONCAT(REPLACE(firstname,".",""))' => str_replace('.', '',Yii::$app->user->identity->userinfo->firstname.''.Yii::$app->user->identity->userinfo->extname),
                                            'middlename' => Yii::$app->user->identity->userinfo->middlename,
                                            'lastname' => Yii::$app->user->identity->userinfo->lastname,
                                            'course_id' => Yii::$app->user->identity->userinfo->course_id,
                                            'major_id' => Yii::$app->user->identity->userinfo->major_id,
                                            'batch' => Yii::$app->user->identity->userinfo->year_graduated,
                                        ])
                                        ->one();

                                    if($matchAlumni)
                                    {
                                        $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                                        $badgeUser->user_id = Yii::$app->user->id;
                                        $badgeUser->badge_id = $badge->id;
                                        $badgeUser->save();
                                    }
                                }else if($badge->id == 8){
                                    $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                                        $badgeUser->user_id = Yii::$app->user->id;
                                        $badgeUser->badge_id = $badge->id;
                                        $badgeUser->save();
                                }else{
                                    if($model->answer == $badge->answer)
                                    {
                                        $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                                        $badgeUser->user_id = Yii::$app->user->id;
                                        $badgeUser->badge_id = $badge->id;
                                        $badgeUser->save();
                                    }
                                }
                            }

                            $model->save();
                        
                        }

                        $lastAnswer = Answer::find()->where(['user_id' => Yii::$app->user->id, 'stage_id' => $stage_id])->leftJoin('question', 'question.id = answer.question_id')->orderBy(['id' => SORT_DESC])->one();

                        return !is_null($lastAnswer->next_question_id) ? $this->renderAjax('_game', [
                            'model' => $model,
                            'user' => $user,
                            'data' => $data,
                            'stage' => $stage,
                            'badge' => $badgeEarned
                        ]) : $this->renderAjax('_congratulatory',[
                            'model' => $model,
                            'user' => $user,
                            'stage' => $stage,
                            'nextStage' => $nextStage,
                        ]);

                    }else{

                        $completion->status = 'Completed';
                        $completion->save();

                        return $this->renderAjax('_congratulatory',[
                            'model' => $model,
                            'user' => $user,
                            'stage' => $stage,
                            'nextStage' => $nextStage,
                        ]);
                    }
                }else{
                    $completion->status = 'Completed';
                    $completion->save();

                    return $this->renderAjax('_congratulatory',[
                        'model' => $model,
                        'user' => $user,
                        'stage' => $stage,
                        'nextStage' => $nextStage,
                    ]);
                }
            }else{
                if($user->getCurrentQuestion($stage->id)->id == 12)
                {
                    $data = Region::find()->orderBy(['region_sort' => SORT_ASC])->all();
                    $data = ArrayHelper::map($data, 'abbreviation', 'abbreviation');
                }else if($user->getCurrentQuestion($stage->id)->id == 13)
                {
                    $data = !is_null($selectedRegion) ? Province::find()->where(['region_c' => $selectedRegion->answer])->orderBy(['province_m' => SORT_DESC])->asArray()->all() : [];
                    $data = !is_null($selectedRegion) ? ArrayHelper::map($data, 'province_m', 'province_m') : [];
                }

                if($model->load(Yii::$app->request->post()))
                {
                    if($user->getCurrentQuestion($stage->id)->input_type == 'option' && $user->getCurrentQuestion($stage->id)->data_type == 'multiple-select')
                    {
                        $model->answer = json_encode($model->answer);
                    }

                    if(!is_null($badge))
                    {
                        if($badge->id == 1)
                        {
                            $matchAlumni = Alumnus::find()
                                        ->where([
                                            'CONCAT(REPLACE(firstname,".",""))' => str_replace('.', '',Yii::$app->user->identity->userinfo->firstname.''.Yii::$app->user->identity->userinfo->extname),
                                            'middlename' => Yii::$app->user->identity->userinfo->middlename,
                                            'lastname' => Yii::$app->user->identity->userinfo->lastname,
                                            'course_id' => Yii::$app->user->identity->userinfo->course_id,
                                            'major_id' => Yii::$app->user->identity->userinfo->major_id,
                                            'batch' => Yii::$app->user->identity->userinfo->year_graduated,
                                        ])
                                        ->one();

                            if($matchAlumni)
                            {
                                $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                                $badgeUser->user_id = Yii::$app->user->id;
                                $badgeUser->badge_id = $badge->id;
                                $badgeUser->save();
                            }
                        }else if($badge->id == 8){
                            $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                                $badgeUser->user_id = Yii::$app->user->id;
                                $badgeUser->badge_id = $badge->id;
                                $badgeUser->save();
                        }else{
                            if($model->answer == $badge->answer)
                            {
                                $badgeUser = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $badge->id]) : new BadgeUser();
                                $badgeUser->user_id = Yii::$app->user->id;
                                $badgeUser->badge_id = $badge->id;
                                $badgeUser->save();
                            }
                        }
                    }
                    
                    $model->save();
                }

                $lastAnswer = Answer::find()->where(['user_id' => Yii::$app->user->id, 'stage_id' => $stage_id])->leftJoin('question', 'question.id = answer.question_id')->orderBy(['id' => SORT_DESC])->one();

                return $this->renderAjax('_game', [
                    'model' => $model,
                    'user' => $user,
                    'data' => $data,
                    'stage' => $stage,
                    'badge' => $badge
                ]);
            }
        }
    }

    public function actionClaim()
    {
        if(Yii::$app->request->isAjax)
        {
            $voucherCodeUser = VoucherCodeUser::findOne(['user_id' => Yii::$app->user->id]) ? VoucherCodeUser::findOne(['user_id' => Yii::$app->user->id]) : new VoucherCodeUser();

            if($voucherCodeUser->isNewRecord)
            {
                
                $voucherCode = VoucherCode::find()
                    ->where(['<>', 'available', 'No'])
                    ->orderBy(['id' => 'RAND()'])
                    ->limit(1)
                    ->one();

                $voucherCode->available = 'No';
                $voucherCode->save(false);

                $voucherCodeUser->voucher_code_id = $voucherCode->id;
                $voucherCodeUser->user_id = Yii::$app->user->id;
                $voucherCodeUser->date_claimed = date("Y-m-d");
                $voucherCodeUser->save();
            }

            return $this->renderAjax('_prize', [
                'voucherCodeUser' => $voucherCodeUser
            ]);
        }
    }

    public function actionViewBadge($id)
    {
        $badge = Badge::findOne($id);

        return $this->renderAjax('_badge-information', [
            'badge' => $badge
        ]);
    }
}
