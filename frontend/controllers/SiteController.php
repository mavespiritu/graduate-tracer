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

    public function actionButtons()
    {
        $stages = Stage::find()->all();
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);

        return $this->renderAjax('_buttons', [
            'stages' => $stages,
            'user' => $user
        ]);
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

    public function actionFirstPart($stage_id)
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);
        $stage = Stage::findOne($stage_id);

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

        $firstNameModel->scenario = 'requiredAnswer';
        $firstNameModel->user_id = Yii::$app->user->id;
        $firstNameModel->question_id = 1;
        $firstNameModel->next_question_id = 2;
        $firstNameModel->answer = Yii::$app->user->identity->userinfo->firstname.' '.Yii::$app->user->identity->userinfo->extname;

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

        $middleNameModel->scenario = 'requiredAnswer';
        $middleNameModel->user_id = Yii::$app->user->id;
        $middleNameModel->question_id = 2;
        $middleNameModel->next_question_id = 3;
        $middleNameModel->answer = Yii::$app->user->identity->userinfo->middlename;

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
        
        $lastNameModel->scenario = 'requiredAnswer';
        $lastNameModel->user_id = Yii::$app->user->id;
        $lastNameModel->question_id = 3;
        $lastNameModel->next_question_id = 4;
        $lastNameModel->answer = Yii::$app->user->identity->userinfo->lastname;

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
        
        $addressModel->scenario = 'requiredAnswer';
        $addressModel->user_id = Yii::$app->user->id;
        $addressModel->question_id = 4;
        $addressModel->next_question_id = 5;

        // Question 5 to be added if 6 is not empty
        $telephoneQuestion = Question::findOne(['id' => 6]);

        $telephoneModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 6, 
            'next_question_id' => 8
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 6, 
                'next_question_id' => 8
            ]) : new Answer();
            
        $telephoneModel->user_id = Yii::$app->user->id;
        $telephoneModel->question_id = 6;
        $telephoneModel->next_question_id = 8;

        // Question 7 to be added if 8 is not empty
        $mobileNoQuestion = Question::findOne(['id' => 8]);

        $mobileNoModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 8, 
            'next_question_id' => 9
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 8, 
                'next_question_id' => 9
            ]) : new Answer();
        
        $mobileNoModel->scenario = 'requiredAnswer';
        $mobileNoModel->user_id = Yii::$app->user->id;
        $mobileNoModel->question_id = 8;
        $mobileNoModel->next_question_id = 9;

        $civilStatusQuestion = Question::findOne(['id' => 9]);

        $civilStatusModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 9, 
            'next_question_id' => 10
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 9, 
                'next_question_id' => 10
            ]) : new Answer();
        
        $civilStatusModel->scenario = 'requiredAnswer';
        $civilStatusModel->user_id = Yii::$app->user->id;
        $civilStatusModel->question_id = 9;
        $civilStatusModel->next_question_id = 10;

        $civilStatuses = Option::findAll(['question_id' => 9]);
        $civilStatuses = ArrayHelper::map($civilStatuses, 'option', 'option');

        $genderQuestion = Question::findOne(['id' => 10]);

        $genderModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 10, 
            'next_question_id' => 11
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 10, 
                'next_question_id' => 11
            ]) : new Answer();
        
        $genderModel->scenario = 'requiredAnswer';
        $genderModel->user_id = Yii::$app->user->id;
        $genderModel->question_id = 10;
        $genderModel->next_question_id = 11;

        $genders = Option::findAll(['question_id' => 10]);
        $genders = ArrayHelper::map($genders, 'option', 'option');

        $birthdateQuestion = Question::findOne(['id' => 11]);

        $birthdateModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 11, 
            'next_question_id' => 12
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 11, 
                'next_question_id' => 12
            ]) : new Answer();
            
        $birthdateModel->scenario = 'requiredAnswer';
        $birthdateModel->user_id = Yii::$app->user->id;
        $birthdateModel->question_id = 11;
        $birthdateModel->next_question_id = 12;

        $regionQuestion = Question::findOne(['id' => 12]);

        $regionModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 12, 
            'next_question_id' => 13
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 12, 
                'next_question_id' => 13
            ]) : new Answer();
            
        $regionModel->scenario = 'requiredAnswer';
        $regionModel->user_id = Yii::$app->user->id;
        $regionModel->question_id = 12;
        $regionModel->next_question_id = 13;

        $regions = Region::find()->all();
        $regions = ArrayHelper::map($regions, 'region_c', 'abbreviation');

        $provinceQuestion = Question::findOne(['id' => 13]);

        $provinceModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 13, 
            'next_question_id' => 14
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 13, 
                'next_question_id' => 14
            ]) : new Answer();
            
        $provinceModel->scenario = 'requiredAnswer';
        $provinceModel->user_id = Yii::$app->user->id;
        $provinceModel->question_id = 13;
        $provinceModel->next_question_id = 14;

        $provinces = !$regionModel->isNewRecord ? Province::find()->where(['region_c' => $regionModel->answer])->all() : [];
        $provinces = !empty($provinces) ? ArrayHelper::map($provinces, 'province_c', 'province_m') : [];

        $locationQuestion = Question::findOne(['id' => 14]);

        $locationModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 14, 
            'next_question_id' => 16
            ]) ? 
            Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 14, 
                'next_question_id' => 16
            ]) : new Answer();
            
        $locationModel->scenario = 'requiredAnswer';
        $locationModel->user_id = Yii::$app->user->id;
        $locationModel->question_id = 14;
        $locationModel->next_question_id = 16;

        $locations = Option::findAll(['question_id' => 14]);
        $locations = ArrayHelper::map($locations, 'option', 'option');

        if(Yii::$app->request->post()){

            $postData = Yii::$app->request->post();

            $firstNameModel->answer = isset($postData['firstname']) ? $postData['firstname'] : '';
            $firstNameModel->save();

            $middleNameModel->answer = isset($postData['middlename']) ? $postData['middlename'] : '';
            $middleNameModel->save();

            $lastNameModel->answer = isset($postData['lastname']) ? $postData['lastname'] : '';
            $lastNameModel->save();

            $addressModel->answer = isset($postData['permanent_address']) ? $postData['permanent_address'] : '';
            $addressModel->save();

            $telephoneModel->answer = isset($postData['telephone_no']) ? $postData['telephone_no'] : '';
            $telephoneModel->save();

            $telephoneQuestionModel = Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 5, 
                'next_question_id' => 6
                ]) ? 
                Answer::findOne([
                    'user_id' => Yii::$app->user->id, 
                    'question_id' => 5, 
                    'next_question_id' => 6
                ]) : new Answer();
                
            $telephoneQuestionModel->user_id = Yii::$app->user->id;
            $telephoneQuestionModel->question_id = 5;
            $telephoneQuestionModel->next_question_id = 6;
            $telephoneQuestionModel->answer = $telephoneModel->answer != '' ? 'Yes' : 'No';
            $telephoneQuestionModel->save();

            $mobileNoModel->answer = isset($postData['mobile_no']) ? $postData['mobile_no'] : '';
            $mobileNoModel->save();

            $mobileQuestionModel = Answer::findOne([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 7, 
                'next_question_id' => 8
                ]) ? 
                Answer::findOne([
                    'user_id' => Yii::$app->user->id, 
                    'question_id' => 7, 
                    'next_question_id' => 8
                ]) : new Answer();
                
            $mobileQuestionModel->user_id = Yii::$app->user->id;
            $mobileQuestionModel->question_id = 7;
            $mobileQuestionModel->next_question_id = 8;
            $mobileQuestionModel->answer = $mobileNoModel->answer != '' ? 'Yes' : 'No';
            $mobileQuestionModel->save();

            $civilStatusModel->answer = isset($postData['civil_status']) ? $postData['civil_status'] : '';
            $civilStatusModel->save();

            $genderModel->answer = isset($postData['gender']) ? $postData['gender'] : '';
            $genderModel->save();

            $birthdateModel->answer = isset($postData['birthdate']) ? $postData['birthdate'] : '';
            $birthdateModel->save();

            $regionModel->answer = isset($postData['region']) ? $postData['region'] : '';
            $regionModel->save();

            $provinceModel->answer = isset($postData['province']) ? $postData['province'] : '';
            $provinceModel->save();

            $locationModel->answer = isset($postData['location']) ? $postData['location'] : '';
            $locationModel->save();

            $completion = Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) ? Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) : new Completion();
            $completion->user_id = Yii::$app->user->id;
            $completion->stage_id = $stage->id;
            $completion->status = 'Completed';
            $completion->save();

            $alumniBadge = Badge::findOne(['title' => 'Alumni']);
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
                $alumniBadgeEarned = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $alumniBadge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $alumniBadge->id]) : new BadgeUser();
                $alumniBadgeEarned->user_id = Yii::$app->user->id;
                $alumniBadgeEarned->badge_id = $alumniBadge->id;
                $alumniBadgeEarned->save();
            }
        }

        return $this->renderAjax('_first_form', [
            'user' => $user,
            'stage' => $stage,
            'firstNameModel' => $firstNameModel,
            'middleNameModel' => $middleNameModel,
            'lastNameModel' => $lastNameModel,
            'addressModel' => $addressModel,
            'telephoneModel' => $telephoneModel,
            'mobileNoModel' => $mobileNoModel,
            'civilStatusModel' => $civilStatusModel,
            'civilStatuses' => $civilStatuses,
            'genderModel' => $genderModel,
            'genders' => $genders,
            'birthdateModel' => $birthdateModel,
            'regionModel' => $regionModel,
            'regions' => $regions,
            'provinceModel' => $provinceModel,
            'provinces' => $provinces,
            'locationModel' => $locationModel,
            'locations' => $locations,
        ]);
    }

    public function actionSecondPart($stage_id)
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);
        $stage = Stage::findOne($stage_id);

        // Question 15 to be added if 16 is not empty
        $degreeQuestion = Question::findOne(['id' => 16]);

        $degreeModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 16, 
            'next_question_id' => 17
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 16, 
            'next_question_id' => 17
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $degreeModel->user_id = Yii::$app->user->id;
        $degreeModel->question_id = 16;
        $degreeModel->next_question_id = 17;

        $schoolQuestion = Question::findOne(['id' => 17]);

        $schoolModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 17, 
            'next_question_id' => 18
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 17, 
            'next_question_id' => 18
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $schoolModel->user_id = Yii::$app->user->id;
        $schoolModel->question_id = 17;
        $schoolModel->next_question_id = 18;

        $yearQuestion = Question::findOne(['id' => 18]);

        $yearModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 18, 
            'next_question_id' => 19
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 18, 
                'next_question_id' => 19
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $yearModel->user_id = Yii::$app->user->id;
        $yearModel->question_id = 18;
        $yearModel->next_question_id = 19;
        
        $honorQuestion = Question::findOne(['id' => 20]);

        $honorModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 20, 
            'next_question_id' => 21
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 20, 
            'next_question_id' => 21
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $honorModel->user_id = Yii::$app->user->id;
        $honorModel->question_id = 20;
        $honorModel->next_question_id = 21;
        
        // Question 21 to be added if second set is not empty
        $degree2Question = Question::findOne(['id' => 16]);

        $degree2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 16, 
            'next_question_id' => 17
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 16, 
            'next_question_id' => 17
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() : new Answer();
            
        $degree2Model->user_id = Yii::$app->user->id;
        $degree2Model->question_id = 16;
        $degree2Model->next_question_id = 17;

        $school2Question = Question::findOne(['id' => 17]);

        $school2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 17, 
            'next_question_id' => 18
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 17, 
            'next_question_id' => 18
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() : new Answer();
            
        $school2Model->user_id = Yii::$app->user->id;
        $school2Model->question_id = 17;
        $school2Model->next_question_id = 18;

        $year2Question = Question::findOne(['id' => 18]);

        $year2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 18, 
            'next_question_id' => 19
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 18, 
            'next_question_id' => 19
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() : new Answer();
            
        $year2Model->user_id = Yii::$app->user->id;
        $year2Model->question_id = 18;
        $year2Model->next_question_id = 19;
        
        // Question 19 to be added if 20 is not empty
        $honor2Question = Question::findOne(['id' => 20]);

        $honor2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 20, 
            'next_question_id' => 21
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 20, 
            'next_question_id' => 21
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() : new Answer();
            
        $honor2Model->user_id = Yii::$app->user->id;
        $honor2Model->question_id = 20;
        $honor2Model->next_question_id = 21;

        // Question 21 to be added if second set is not empty
        $degree3Question = Question::findOne(['id' => 16]);

        $degree3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 16, 
            'next_question_id' => 17
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 16, 
            'next_question_id' => 17
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $degree3Model->user_id = Yii::$app->user->id;
        $degree3Model->question_id = 16;
        $degree3Model->next_question_id = 17;

        $school3Question = Question::findOne(['id' => 17]);

        $school3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 17, 
            'next_question_id' => 18
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 17, 
            'next_question_id' => 18
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $school3Model->user_id = Yii::$app->user->id;
        $school3Model->question_id = 17;
        $school3Model->next_question_id = 18;

        $year3Question = Question::findOne(['id' => 18]);

        $year3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 18, 
            'next_question_id' => 19
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 18, 
            'next_question_id' => 19
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $year3Model->user_id = Yii::$app->user->id;
        $year3Model->question_id = 18;
        $year3Model->next_question_id = 19;
        
        // Question 19 to be added if 20 is not empty
        $honor3Question = Question::findOne(['id' => 20]);

        $honor3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 20, 
            'next_question_id' => 21
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 20, 
            'next_question_id' => 21
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $honor3Model->user_id = Yii::$app->user->id;
        $honor3Model->question_id = 20;
        $honor3Model->next_question_id = 21;

        // Question 22 to be added if 23 is not empty
        $examQuestion = Question::findOne(['id' => 23]);

        $examModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 23, 
            'next_question_id' => 24
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 23, 
            'next_question_id' => 24
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $examModel->user_id = Yii::$app->user->id;
        $examModel->question_id = 23;
        $examModel->next_question_id = 24;

        $dateTakenQuestion = Question::findOne(['id' => 24]);

        $dateTakenModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $dateTakenModel->user_id = Yii::$app->user->id;
        $dateTakenModel->question_id = 24;
        $dateTakenModel->next_question_id = 25;

        $ratingQuestion = Question::findOne(['id' => 25]);

        $ratingModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 25, 
            'next_question_id' => 26
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 25, 
            'next_question_id' => 26
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $ratingModel->user_id = Yii::$app->user->id;
        $ratingModel->question_id = 25;
        $ratingModel->next_question_id = 26;

        // Question 26 to be added if second set is not empty
        $exam2Question = Question::findOne(['id' => 23]);

        $exam2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 23, 
            'next_question_id' => 24
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 23, 
            'next_question_id' => 24
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() : new Answer();
            
        $exam2Model->user_id = Yii::$app->user->id;
        $exam2Model->question_id = 23;
        $exam2Model->next_question_id = 24;

        $dateTaken2Question = Question::findOne(['id' => 24]);

        $dateTaken2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() : new Answer();
            
        $dateTaken2Model->user_id = Yii::$app->user->id;
        $dateTaken2Model->question_id = 24;
        $dateTaken2Model->next_question_id = 25;

        $rating2Question = Question::findOne(['id' => 25]);

        $rating2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_DESC])->offset(1)->one() : new Answer();
            
        $rating2Model->user_id = Yii::$app->user->id;
        $rating2Model->question_id = 25;
        $rating2Model->next_question_id = 26;
        
        $exam3Question = Question::findOne(['id' => 23]);

        $exam3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 23, 
            'next_question_id' => 24
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 23, 
            'next_question_id' => 24
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $exam3Model->user_id = Yii::$app->user->id;
        $exam3Model->question_id = 23;
        $exam3Model->next_question_id = 24;

        $dateTaken3Question = Question::findOne(['id' => 24]);

        $dateTaken3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $dateTaken3Model->user_id = Yii::$app->user->id;
        $dateTaken3Model->question_id = 24;
        $dateTaken3Model->next_question_id = 25;

        $rating3Question = Question::findOne(['id' => 25]);

        $rating3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 24, 
            'next_question_id' => 25
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $rating3Model->user_id = Yii::$app->user->id;
        $rating3Model->question_id = 25;
        $rating3Model->next_question_id = 26;

        $undergradModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 27, 
            'next_question_id' => 28
            ]) ? 
            Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 27, 
            'next_question_id' => 28
            ]) : new Answer();
        
        $undergradModel->scenario = 'requiredAnswer';
        $undergradModel->user_id = Yii::$app->user->id;
        $undergradModel->question_id = 27;
        $undergradModel->next_question_id = 28;
        $undergradModel->answer = json_decode($undergradModel->answer);

        $undergradReasons = Option::findAll(['question_id' => 27]);
        $undergradReasons = ArrayHelper::map($undergradReasons, 'option', 'option');

        $postgradModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 28, 
            'next_question_id' => 29
            ]) ? 
            Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 28, 
            'next_question_id' => 29
            ]) : new Answer();
            
        $postgradModel->user_id = Yii::$app->user->id;
        $postgradModel->question_id = 28;
        $postgradModel->next_question_id = 29;
        $postgradModel->answer = json_decode($postgradModel->answer);

        $postgradReasons = Option::findAll(['question_id' => 28]);
        $postgradReasons = ArrayHelper::map($postgradReasons, 'option', 'option');
        if(Yii::$app->request->post()){

            $postData = Yii::$app->request->post();

            $degreeModel->answer = isset($postData['degree']) ? $postData['degree'] : '';
            $degreeModel->save();

            $schoolModel->answer = isset($postData['school']) ? $postData['school'] : '';
            $schoolModel->save();

            $yearModel->answer = isset($postData['year']) ? $postData['year'] : '';
            $yearModel->save();

            $honorModel->answer = isset($postData['honor']) ? $postData['honor'] : '';
            $honorModel->save();

            $degreeQuestionModel = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 15, 
                'next_question_id' => 16
                ])->orderBy(['id' => SORT_ASC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 15, 
                'next_question_id' => 16
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
                
            $degreeQuestionModel->user_id = Yii::$app->user->id;
            $degreeQuestionModel->question_id = 15;
            $degreeQuestionModel->next_question_id = 16;
            $degreeQuestionModel->answer = $degreeModel->answer != '' ? 'Yes' : 'No';
            $degreeQuestionModel->save();

            $honorQuestionModel = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 19, 
                'next_question_id' => 20
                ])->orderBy(['id' => SORT_ASC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 19, 
                'next_question_id' => 20
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
                
            $honorQuestionModel->user_id = Yii::$app->user->id;
            $honorQuestionModel->question_id = 19;
            $honorQuestionModel->next_question_id = 20;
            $honorQuestionModel->answer = $honorModel->answer != '' ? 'Yes' : 'No';
            $honorQuestionModel->save();

            $degree2Model->answer = isset($postData['degree2']) ? $postData['degree2'] : '';
            $degree2Model->save();

            $school2Model->answer = isset($postData['school2']) ? $postData['school2'] : '';
            $school2Model->save();

            $year2Model->answer = isset($postData['year2']) ? $postData['year2'] : '';
            $year2Model->save();

            $honor2Model->answer = isset($postData['honor2']) ? $postData['honor2'] : '';
            $honor2Model->save();

            $degreeQuestion2Model = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 21, 
                'next_question_id' => 16
                ])->orderBy(['id' => SORT_ASC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 21, 
                'next_question_id' => 16
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
                
            $degreeQuestion2Model->user_id = Yii::$app->user->id;
            $degreeQuestion2Model->question_id = 21;
            $degreeQuestion2Model->next_question_id = 16;
            $degreeQuestion2Model->answer = $degree2Model->answer != '' ? 'Yes' : 'No';
            $degreeQuestion2Model->save();

            $honorQuestion2Model = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 19, 
                'next_question_id' => 20
                ])->orderBy(['id' => SORT_ASC])->offset(1)->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 19, 
                'next_question_id' => 20
                ])->orderBy(['id' => SORT_ASC])->offset(1)->one() : new Answer();
                
            $honorQuestion2Model->user_id = Yii::$app->user->id;
            $honorQuestion2Model->question_id = 19;
            $honorQuestion2Model->next_question_id = 20;
            $honorQuestion2Model->answer = $honor2Model->answer != '' ? 'Yes' : 'No';
            $honorQuestion2Model->save();

            $degree3Model->answer = isset($postData['degree3']) ? $postData['degree3'] : '';
            $degree3Model->save();

            $school3Model->answer = isset($postData['school3']) ? $postData['school3'] : '';
            $school3Model->save();

            $year3Model->answer = isset($postData['year3']) ? $postData['year3'] : '';
            $year3Model->save();

            $honor3Model->answer = isset($postData['honor3']) ? $postData['honor3'] : '';
            $honor3Model->save();

            $degreeQuestion3Model = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 21, 
                'next_question_id' => 16
                ])->orderBy(['id' => SORT_DESC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 21, 
                'next_question_id' => 16
                ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
                
            $degreeQuestion3Model->user_id = Yii::$app->user->id;
            $degreeQuestion3Model->question_id = 21;
            $degreeQuestion3Model->next_question_id = 16;
            $degreeQuestion3Model->answer = $degree2Model->answer != '' ? 'Yes' : 'No';
            $degreeQuestion3Model->save();

            $honorQuestion3Model = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 19, 
                'next_question_id' => 20
                ])->orderBy(['id' => SORT_DESC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 19, 
                'next_question_id' => 20
                ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
                
            $honorQuestion3Model->user_id = Yii::$app->user->id;
            $honorQuestion3Model->question_id = 19;
            $honorQuestion3Model->next_question_id = 20;
            $honorQuestion3Model->answer = $honor3Model->answer != '' ? 'Yes' : 'No';
            $honorQuestion3Model->save();
            
            $undergradModel->answer = isset($postData['undergrad-reason']) ? json_encode($postData['undergrad-reason']) : '';
            $undergradModel->save();

            $postgradModel->answer = isset($postData['postgrad-reason']) ? json_encode($postData['postgrad-reason']) : '';
            $postgradModel->save();

            $completion = Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) ? Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) : new Completion();
            $completion->user_id = Yii::$app->user->id;
            $completion->stage_id = $stage->id;
            $completion->status = 'Completed';
            $completion->save();

            $learnerBadge = Badge::findOne(['title' => 'Learner']);
            if(
                $degreeModel->answer != '' ||
                $degree2Model->answer != '' ||
                $degree3Model->answer != ''
            )
            {
                $learnerBadgeEarned = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $learnerBadge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $learnerBadge->id]) : new BadgeUser();
                $learnerBadgeEarned->user_id = Yii::$app->user->id;
                $learnerBadgeEarned->badge_id = $learnerBadge->id;
                $learnerBadgeEarned->save();
            }

            $achieverBadge = Badge::findOne(['title' => 'Achiever']);
            if(
                $honorModel->answer != '' ||
                $honor2Model->answer != '' ||
                $honor3Model->answer != ''
            )
            {
                $achieverBadgeEarned = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $achieverBadge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $achieverBadge->id]) : new BadgeUser();
                $achieverBadgeEarned->user_id = Yii::$app->user->id;
                $achieverBadgeEarned->badge_id = $achieverBadge->id;
                $achieverBadgeEarned->save();
            }

            $topnotchBadge = Badge::findOne(['title' => 'Topnotch']);
            if(
                $examModel->answer != '' ||
                $exam2Model->answer != '' ||
                $exam3Model->answer != ''
            )
            {
                $topnotchBadgeEarned = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $topnotchBadge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $topnotchBadge->id]) : new BadgeUser();
                $topnotchBadgeEarned->user_id = Yii::$app->user->id;
                $topnotchBadgeEarned->badge_id = $topnotchBadge->id;
                $topnotchBadgeEarned->save();
            }
        }

        return $this->renderAjax('_second_form', [
            'user' => $user,
            'stage' => $stage,
            'degreeModel' => $degreeModel,
            'schoolModel' => $schoolModel,
            'yearModel' => $yearModel,
            'honorModel' => $honorModel,
            'degree2Model' => $degree2Model,
            'school2Model' => $school2Model,
            'year2Model' => $year2Model,
            'honor2Model' => $honor2Model,
            'degree3Model' => $degree3Model,
            'school3Model' => $school3Model,
            'year3Model' => $year3Model,
            'honor3Model' => $honor3Model,
            'examModel' => $examModel,
            'dateTakenModel' => $dateTakenModel,
            'ratingModel' => $ratingModel,
            'exam2Model' => $exam2Model,
            'dateTaken2Model' => $dateTaken2Model,
            'rating2Model' => $rating2Model,
            'exam3Model' => $exam3Model,
            'dateTaken3Model' => $dateTaken3Model,
            'rating3Model' => $rating3Model,
            'undergradModel' => $undergradModel,
            'undergradReasons' => $undergradReasons,
            'postgradModel' => $postgradModel,
            'postgradReasons' => $postgradReasons,
        ]);
    }

    public function actionThirdPart($stage_id)
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);
        $stage = Stage::findOne($stage_id);

        // Question 29 to be added if 30 is not empty
        $titleQuestion = Question::findOne(['id' => 30]);

        $titleModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 30, 
            'next_question_id' => 31
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 30, 
            'next_question_id' => 31
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $titleModel->user_id = Yii::$app->user->id;
        $titleModel->question_id = 30;
        $titleModel->next_question_id = 31;

        $durationQuestion = Question::findOne(['id' => 31]);

        $durationModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 31, 
            'next_question_id' => 32
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 31, 
            'next_question_id' => 32
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $durationModel->user_id = Yii::$app->user->id;
        $durationModel->question_id = 31;
        $durationModel->next_question_id = 32;

        $creditQuestion = Question::findOne(['id' => 32]);

        $creditModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 32, 
            'next_question_id' => 33
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 32, 
                'next_question_id' => 33
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $creditModel->user_id = Yii::$app->user->id;
        $creditModel->question_id = 32;
        $creditModel->next_question_id = 33;
        
        $institutionQuestion = Question::findOne(['id' => 33]);

        $institutionModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 33, 
            'next_question_id' => 34
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 33, 
            'next_question_id' => 34
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $institutionModel->user_id = Yii::$app->user->id;
        $institutionModel->question_id = 33;
        $institutionModel->next_question_id = 34;
        
        // Question 34 to be added if second set is not empty
        $title2Question = Question::findOne(['id' => 30]);

        $title2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 30, 
            'next_question_id' => 31
            ])->orderBy(['id' => SORT_ASC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 30, 
            'next_question_id' => 31
            ])->orderBy(['id' => SORT_ASC])->offset(1)->one() : new Answer();
            
        $title2Model->user_id = Yii::$app->user->id;
        $title2Model->question_id = 30;
        $title2Model->next_question_id = 31;

        $duration2Question = Question::findOne(['id' => 31]);

        $duration2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 31, 
            'next_question_id' => 32
            ])->orderBy(['id' => SORT_ASC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 31, 
            'next_question_id' => 32
            ])->orderBy(['id' => SORT_ASC])->offset(1)->one() : new Answer();
            
        $duration2Model->user_id = Yii::$app->user->id;
        $duration2Model->question_id = 31;
        $duration2Model->next_question_id = 32;

        $credit2Question = Question::findOne(['id' => 32]);

        $credit2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 32, 
            'next_question_id' => 33
            ])->orderBy(['id' => SORT_ASC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 32, 
            'next_question_id' => 33
            ])->orderBy(['id' => SORT_ASC])->offset(1)->one() : new Answer();
            
        $credit2Model->user_id = Yii::$app->user->id;
        $credit2Model->question_id = 32;
        $credit2Model->next_question_id = 33;
        
        $institution2Question = Question::findOne(['id' => 33]);

        $institution2Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 33, 
            'next_question_id' => 34
            ])->orderBy(['id' => SORT_ASC])->offset(1)->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 33, 
            'next_question_id' => 34
            ])->orderBy(['id' => SORT_ASC])->offset(1)->one() : new Answer();
            
        $institution2Model->user_id = Yii::$app->user->id;
        $institution2Model->question_id = 33;
        $institution2Model->next_question_id = 34;

        // Question 34 to be added if second set is not empty
        $title3Question = Question::findOne(['id' => 30]);

        $title3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 30, 
            'next_question_id' => 31
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 30, 
            'next_question_id' => 31
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $title3Model->user_id = Yii::$app->user->id;
        $title3Model->question_id = 30;
        $title3Model->next_question_id = 31;

        $duration3Question = Question::findOne(['id' => 31]);

        $duration3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 31, 
            'next_question_id' => 32
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 31, 
            'next_question_id' => 32
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $duration3Model->user_id = Yii::$app->user->id;
        $duration3Model->question_id = 31;
        $duration3Model->next_question_id = 32;

        $credit3Question = Question::findOne(['id' => 32]);

        $credit3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 32, 
            'next_question_id' => 33
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 32, 
            'next_question_id' => 33
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $credit3Model->user_id = Yii::$app->user->id;
        $credit3Model->question_id = 32;
        $credit3Model->next_question_id = 33;
        
        $institution3Question = Question::findOne(['id' => 33]);

        $institution3Model = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 33, 
            'next_question_id' => 34
            ])->orderBy(['id' => SORT_DESC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 33, 
            'next_question_id' => 34
            ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
            
        $institution3Model->user_id = Yii::$app->user->id;
        $institution3Model->question_id = 33;
        $institution3Model->next_question_id = 34;

        $pursueOptions = [
            'For promotion' => 'For promotion',
            'For professional development' => 'For professional development',
            'Others' => 'Others',
        ];

        $promotionModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 35, 
            'next_question_id' => 36
            ]) ? 
            Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 35, 
            'next_question_id' => 36
            ]) : new Answer();
            
        $promotionModel->user_id = Yii::$app->user->id;
        $promotionModel->question_id = 36;
        $promotionModel->next_question_id = 37;

        $professionalModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 36, 
            'next_question_id' => 37
            ]) ? 
            Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 36, 
            'next_question_id' => 37
            ]) : new Answer();
            
        $professionalModel->user_id = Yii::$app->user->id;
        $professionalModel->question_id = 36;
        $professionalModel->next_question_id = 37;

        $otherPursueModel = Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 37, 
            'next_question_id' => 38
            ]) ? 
            Answer::findOne([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 37, 
            'next_question_id' => 38
            ]) : new Answer();
            
        $otherPursueModel->user_id = Yii::$app->user->id;
        $otherPursueModel->question_id = 37;
        $otherPursueModel->next_question_id = 38;

        if(
            $promotionModel->answer == 'Yes' &&
            $professionalModel->answer == 'No'
        ){
            $promotionModel->answer = 'For promotion';
        }else if(
            $promotionModel->answer == 'No' &&
            $professionalModel->answer == 'Yes'
        ){
            $promotionModel->answer = 'For professional development';
        }else if(
            $promotionModel->answer == 'No' &&
            $professionalModel->answer == 'No'
        ){
            $promotionModel->answer = 'Others';
        }

        if(Yii::$app->request->post()){

            $postData = Yii::$app->request->post();

            $titleModel->answer = isset($postData['title']) ? $postData['title'] : '';
            $titleModel->save();

            $durationModel->answer = isset($postData['duration']) ? $postData['duration'] : '';
            $durationModel->save();

            $creditModel->answer = isset($postData['credit']) ? $postData['credit'] : '';
            $creditModel->save();

            $institutionModel->answer = isset($postData['institution']) ? $postData['institution'] : '';
            $institutionModel->save();

            $trainingQuestionModel = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 29, 
                'next_question_id' => 30
                ])->orderBy(['id' => SORT_ASC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 29, 
                'next_question_id' => 30
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
                
            $trainingQuestionModel->user_id = Yii::$app->user->id;
            $trainingQuestionModel->question_id = 29;
            $trainingQuestionModel->next_question_id = 30;
            $trainingQuestionModel->answer = $titleModel->answer != '' ? 'Yes' : 'No';
            $trainingQuestionModel->save();

            $title2Model->answer = isset($postData['title2']) ? $postData['title2'] : '';
            $title2Model->save();

            $duration2Model->answer = isset($postData['duration2']) ? $postData['duration2'] : '';
            $duration2Model->save();

            $credit2Model->answer = isset($postData['credit2']) ? $postData['credit2'] : '';
            $credit2Model->save();

            $institution2Model->answer = isset($postData['institution2']) ? $postData['institution2'] : '';
            $institution2Model->save();

            $trainingQuestion2Model = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 34, 
                'next_question_id' => 30
                ])->orderBy(['id' => SORT_ASC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 34, 
                'next_question_id' => 30
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
                
            $trainingQuestion2Model->user_id = Yii::$app->user->id;
            $trainingQuestion2Model->question_id = 34;
            $trainingQuestion2Model->next_question_id = 30;
            $trainingQuestion2Model->answer = $title2Model->answer != '' ? 'Yes' : 'No';
            $trainingQuestion2Model->save();

            $title3Model->answer = isset($postData['title3']) ? $postData['title3'] : '';
            $title3Model->save();

            $duration3Model->answer = isset($postData['duration3']) ? $postData['duration3'] : '';
            $duration3Model->save();

            $credit3Model->answer = isset($postData['credit3']) ? $postData['credit3'] : '';
            $credit3Model->save();

            $institution3Model->answer = isset($postData['institution3']) ? $postData['institution3'] : '';
            $institution3Model->save();

            $trainingQuestion3Model = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 34, 
                'next_question_id' => 30
                ])->orderBy(['id' => SORT_DESC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 34, 
                'next_question_id' => 30
                ])->orderBy(['id' => SORT_DESC])->one() : new Answer();
                
            $trainingQuestion3Model->user_id = Yii::$app->user->id;
            $trainingQuestion3Model->question_id = 34;
            $trainingQuestion3Model->next_question_id = 30;
            $trainingQuestion3Model->answer = $title3Model->answer != '' ? 'Yes' : 'No';
            $trainingQuestion3Model->save();
            
            $promotionModel->answer = isset($postData['promotion']) ? $postData['promotion'] == 'For promotion' ? 'Yes' : 'No' : '';
            $promotionModel->save();

            $professionalModel->answer = isset($postData['promotion']) ? $postData['promotion'] == 'For promotion' ? 'No' : 'Yes' : '';
            $professionalModel->save();

            $otherPursueModel->answer = isset($postData['otherPursue']) ? $postData['otherPursue'] : '';
            $otherPursueModel->save();

            $completion = Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) ? Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) : new Completion();
            $completion->user_id = Yii::$app->user->id;
            $completion->stage_id = $stage->id;
            $completion->status = 'Completed';
            $completion->save();

            $trainerBadge = Badge::findOne(['title' => 'Trainer']);
            if(
                $titleModel->answer != '' ||
                $title2Model->answer != '' ||
                $title3Model->answer != ''
            )
            {
                $trainerBadgeEarned = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $trainerBadge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $trainerBadge->id]) : new BadgeUser();
                $trainerBadgeEarned->user_id = Yii::$app->user->id;
                $trainerBadgeEarned->badge_id = $trainerBadge->id;
                $trainerBadgeEarned->save();
            }
        }

        return $this->renderAjax('_third_form', [
            'user' => $user,
            'stage' => $stage,
            'titleModel' => $titleModel,
            'durationModel' => $durationModel,
            'creditModel' => $creditModel,
            'institutionModel' => $institutionModel,
            'title2Model' => $title2Model,
            'duration2Model' => $duration2Model,
            'credit2Model' => $credit2Model,
            'institution2Model' => $institution2Model,
            'title3Model' => $title3Model,
            'duration3Model' => $duration3Model,
            'credit3Model' => $credit3Model,
            'institution3Model' => $institution3Model,
            'pursueOptions' => $pursueOptions,
            'promotionModel' => $promotionModel,
            'professionalModel' => $professionalModel,
            'otherPursueModel' => $otherPursueModel,
        ]);
    }

    public function actionFourthPart($stage_id)
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);
        $stage = Stage::findOne($stage_id);

        $employmentQuestion = Question::findOne(['id' => 38]);

        $employmentOptions = Option::findAll(['question_id' => 38]);
        $employmentOptions = ArrayHelper::map($employmentOptions, 'option', 'option');

        $employmentModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 38, 
            'next_question_id' => 39
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 38, 
            'next_question_id' => 39
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();

        $employmentModel->scenario = 'requiredAnswer';    
        $employmentModel->user_id = Yii::$app->user->id;
        $employmentModel->question_id = 38;
        $employmentModel->next_question_id = 39;

        $unemploymentOptions = Option::findAll(['question_id' => 39]);
        $unemploymentOptions = ArrayHelper::map($unemploymentOptions, 'option', 'option');

        $unemploymentQuestion = Question::findOne(['id' => 39]);

        $unemploymentModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 39, 
            'next_question_id' => 76
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 39, 
            'next_question_id' => 76
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $unemploymentModel->user_id = Yii::$app->user->id;
        $unemploymentModel->question_id = 39;
        $unemploymentModel->next_question_id = 76;
        $unemploymentModel->answer = json_decode($unemploymentModel->answer);

        //Add Question 75 if 76 has answer
        $otherUnemploymentModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 76, 
            'next_question_id' => 40
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 76, 
            'next_question_id' => 40
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $otherUnemploymentModel->user_id = Yii::$app->user->id;
        $otherUnemploymentModel->question_id = 76;
        $otherUnemploymentModel->next_question_id = 40;

        $employmentStatusOptions = Option::findAll(['question_id' => 40]);
        $employmentStatusOptions = ArrayHelper::map($employmentStatusOptions, 'option', 'option');

        $employmentStatusQuestion = Question::findOne(['id' => 40]);

        $employmentStatusModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 40, 
            'next_question_id' => 41
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 40, 
            'next_question_id' => 41
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $employmentStatusModel->user_id = Yii::$app->user->id;
        $employmentStatusModel->question_id = 40;
        $employmentStatusModel->next_question_id = 41;

        $categoryOptions = Option::findAll(['question_id' => 41]);
        $categoryOptions = ArrayHelper::map($categoryOptions, 'option', 'option');

        $categoryQuestion = Question::findOne(['id' => 41]);

        $categoryModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 41, 
            'next_question_id' => 42
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 41, 
            'next_question_id' => 42
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $categoryModel->user_id = Yii::$app->user->id;
        $categoryModel->question_id = 41;
        $categoryModel->next_question_id = 42;

        $organizationModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 42, 
            'next_question_id' => 43
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 42, 
            'next_question_id' => 43
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $organizationModel->user_id = Yii::$app->user->id;
        $organizationModel->question_id = 42;
        $organizationModel->next_question_id = 43;
        
        $organizationAddressModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 43, 
            'next_question_id' => 44
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 43, 
            'next_question_id' => 44
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $organizationAddressModel->user_id = Yii::$app->user->id;
        $organizationAddressModel->question_id = 43;
        $organizationAddressModel->next_question_id = 44;

        $businessOptions = Option::findAll(['question_id' => 44]);
        $businessOptions = ArrayHelper::map($businessOptions, 'option', 'option');

        $businessModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 44, 
            'next_question_id' => 45
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 44, 
            'next_question_id' => 45
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $businessModel->user_id = Yii::$app->user->id;
        $businessModel->question_id = 44;
        $businessModel->next_question_id = 45;

        $workplaceOptions = Option::findAll(['question_id' => 45]);
        $workplaceOptions = ArrayHelper::map($workplaceOptions, 'option', 'option');

        $workplaceModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 45, 
            'next_question_id' => 46
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 45, 
            'next_question_id' => 46
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $workplaceModel->user_id = Yii::$app->user->id;
        $workplaceModel->question_id = 45;
        $workplaceModel->next_question_id = 46;

        $firstJobOptions = Option::findAll(['question_id' => 46]);
        $firstJobOptions = ArrayHelper::map($firstJobOptions, 'option', 'option');

        $firstJobModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 46, 
            'next_question_id' => 47
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 46, 
            'next_question_id' => 47
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $firstJobModel->user_id = Yii::$app->user->id;
        $firstJobModel->question_id = 46;
        $firstJobModel->next_question_id = 47;

        $stayReasonOptions = Option::findAll(['question_id' => 47]);
        $stayReasonOptions = ArrayHelper::map($stayReasonOptions, 'option', 'option');

        $stayReasonModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 47, 
            'next_question_id' => 48
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 47, 
            'next_question_id' => 48
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $stayReasonModel->user_id = Yii::$app->user->id;
        $stayReasonModel->question_id = 47;
        $stayReasonModel->next_question_id = 48;
        $stayReasonModel->answer = json_decode($stayReasonModel->answer);

        //Add Question 48 if 49 has answer
        $otherStayReasonModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 49, 
            'next_question_id' => 50
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 49, 
            'next_question_id' => 50
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $otherStayReasonModel->user_id = Yii::$app->user->id;
        $otherStayReasonModel->question_id = 49;
        $otherStayReasonModel->next_question_id = 50;

        $firstJobRelatedOptions = Option::findAll(['question_id' => 50]);
        $firstJobRelatedOptions = ArrayHelper::map($firstJobRelatedOptions, 'option', 'option');

        $firstJobRelatedModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 50, 
            'next_question_id' => 51
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 50, 
            'next_question_id' => 51
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $firstJobRelatedModel->user_id = Yii::$app->user->id;
        $firstJobRelatedModel->question_id = 50;
        $firstJobRelatedModel->next_question_id = 51;

        $acceptReasonOptions = Option::findAll(['question_id' => 51]);
        $acceptReasonOptions = ArrayHelper::map($acceptReasonOptions, 'option', 'option');

        $acceptReasonModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 51, 
            'next_question_id' => 52
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 51, 
            'next_question_id' => 52
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $acceptReasonModel->user_id = Yii::$app->user->id;
        $acceptReasonModel->question_id = 51;
        $acceptReasonModel->next_question_id = 52;
        $acceptReasonModel->answer = json_decode($acceptReasonModel->answer);

        //Add Question 52 if 53 has answer
        $otherAcceptReasonModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 53, 
            'next_question_id' => 54
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 53, 
            'next_question_id' => 54
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $otherAcceptReasonModel->user_id = Yii::$app->user->id;
        $otherAcceptReasonModel->question_id = 53;
        $otherAcceptReasonModel->next_question_id = 54;

        $changeJobReasonOptions = Option::findAll(['question_id' => 54]);
        $changeJobReasonOptions = ArrayHelper::map($changeJobReasonOptions, 'option', 'option');

        $changeJobReasonModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 54, 
            'next_question_id' => 55
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 54, 
            'next_question_id' => 55
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $changeJobReasonModel->user_id = Yii::$app->user->id;
        $changeJobReasonModel->question_id = 54;
        $changeJobReasonModel->next_question_id = 55;
        $changeJobReasonModel->answer = json_decode($changeJobReasonModel->answer);

        //Add Question 55 if 56 has answer
        $otherChangeJobReasonModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 56, 
            'next_question_id' => 57
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 56, 
            'next_question_id' => 57
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $otherChangeJobReasonModel->user_id = Yii::$app->user->id;
        $otherChangeJobReasonModel->question_id = 56;
        $otherChangeJobReasonModel->next_question_id = 57;

        $firstJobStayOptions = Option::findAll(['question_id' => 57]);
        $firstJobStayOptions = ArrayHelper::map($firstJobStayOptions, 'option', 'option');

        $firstJobStayModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 57, 
            'next_question_id' => 58
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 57, 
            'next_question_id' => 58
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $firstJobStayModel->user_id = Yii::$app->user->id;
        $firstJobStayModel->question_id = 57;
        $firstJobStayModel->next_question_id = 58;

        $otherFirstJobStayModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 58, 
            'next_question_id' => 59
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 58, 
            'next_question_id' => 59
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $otherFirstJobStayModel->user_id = Yii::$app->user->id;
        $otherFirstJobStayModel->question_id = 58;
        $otherFirstJobStayModel->next_question_id = 59;

        $firstJobFindOptions = Option::findAll(['question_id' => 59]);
        $firstJobFindOptions = ArrayHelper::map($firstJobFindOptions, 'option', 'option');

        $firstJobFindModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 59, 
            'next_question_id' => 60
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 59, 
            'next_question_id' => 60
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $firstJobFindModel->user_id = Yii::$app->user->id;
        $firstJobFindModel->question_id = 59;
        $firstJobFindModel->next_question_id = 60;

        $otherFirstJobFindModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 60, 
            'next_question_id' => 61
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 60, 
            'next_question_id' => 61
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $otherFirstJobFindModel->user_id = Yii::$app->user->id;
        $otherFirstJobFindModel->question_id = 60;
        $otherFirstJobFindModel->next_question_id = 61;

        $firstJobLandOptions = Option::findAll(['question_id' => 61]);
        $firstJobLandOptions = ArrayHelper::map($firstJobLandOptions, 'option', 'option');

        $firstJobLandModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 61, 
            'next_question_id' => 62
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 61, 
            'next_question_id' => 62
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $firstJobLandModel->user_id = Yii::$app->user->id;
        $firstJobLandModel->question_id = 61;
        $firstJobLandModel->next_question_id = 62;

        $otherFirstJobLandModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 62, 
            'next_question_id' => 63
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 62, 
            'next_question_id' => 63
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $otherFirstJobLandModel->user_id = Yii::$app->user->id;
        $otherFirstJobLandModel->question_id = 62;
        $otherFirstJobLandModel->next_question_id = 63;

        $firstJobPositionOptions = Option::findAll(['question_id' => 63]);
        $firstJobPositionOptions = ArrayHelper::map($firstJobPositionOptions, 'option', 'option');

        $firstJobPositionModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 63, 
            'next_question_id' => 64
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 63, 
            'next_question_id' => 64
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $firstJobPositionModel->user_id = Yii::$app->user->id;
        $firstJobPositionModel->question_id = 63;
        $firstJobPositionModel->next_question_id = 64;

        $presentJobPositionOptions = Option::findAll(['question_id' => 64]);
        $presentJobPositionOptions = ArrayHelper::map($presentJobPositionOptions, 'option', 'option');

        $presentJobPositionModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 64, 
            'next_question_id' => 65
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 64, 
            'next_question_id' => 65
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $presentJobPositionModel->user_id = Yii::$app->user->id;
        $presentJobPositionModel->question_id = 64;
        $presentJobPositionModel->next_question_id = 65;

        $grossOptions = Option::findAll(['question_id' => 65]);
        $grossOptions = ArrayHelper::map($grossOptions, 'option', 'option');

        $grossModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 65, 
            'next_question_id' => 66
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 65, 
            'next_question_id' => 66
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $grossModel->user_id = Yii::$app->user->id;
        $grossModel->question_id = 65;
        $grossModel->next_question_id = 66;

        $curriculumOptions = Option::findAll(['question_id' => 66]);
        $curriculumOptions = ArrayHelper::map($curriculumOptions, 'option', 'option');

        $curriculumModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 66, 
            'next_question_id' => 67
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 66, 
            'next_question_id' => 67
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $curriculumModel->user_id = Yii::$app->user->id;
        $curriculumModel->question_id = 66;
        $curriculumModel->next_question_id = 67;

        $competencyOptions = Option::findAll(['question_id' => 67]);
        $competencyOptions = ArrayHelper::map($competencyOptions, 'option', 'option');

        $competencyModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 67, 
            'next_question_id' => 68
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 67, 
            'next_question_id' => 68
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $competencyModel->user_id = Yii::$app->user->id;
        $competencyModel->question_id = 67;
        $competencyModel->next_question_id = 68;

        $otherCompetencyModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 68, 
            'next_question_id' => 70
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 68, 
            'next_question_id' => 70
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $otherCompetencyModel->user_id = Yii::$app->user->id;
        $otherCompetencyModel->question_id = 68;
        $otherCompetencyModel->next_question_id = 70;

        $suggestionModel = Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 70
            ])->orderBy(['id' => SORT_ASC])->one() ? 
            Answer::find()->where([
            'user_id' => Yii::$app->user->id, 
            'question_id' => 70
            ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
            
        $suggestionModel->user_id = Yii::$app->user->id;
        $suggestionModel->question_id = 70;

        if(Yii::$app->request->post()){
            $postData = Yii::$app->request->post();

            $employmentModel->answer = isset($postData['employment']) ? $postData['employment'] : '';
            $employmentModel->save();

            $unemploymentModel->answer = isset($postData['unemployment']) ? json_encode($postData['unemployment']) : '';
            $unemploymentModel->save();
            
            $otherUnemploymentModel->answer = isset($postData['otherUnemployment']) ? $postData['otherUnemployment'] : '';
            $otherUnemploymentModel->save();

            $otherUnemploymentQuestionModel = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 75, 
                'next_question_id' => 76
                ])->orderBy(['id' => SORT_ASC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 75, 
                'next_question_id' => 76
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
                
            $otherUnemploymentQuestionModel->user_id = Yii::$app->user->id;
            $otherUnemploymentQuestionModel->question_id = 75;
            $otherUnemploymentQuestionModel->next_question_id = 76;
            $otherUnemploymentQuestionModel->answer = $otherUnemploymentModel->answer != '' ? 'Yes' : 'No';
            $otherUnemploymentQuestionModel->save();

            $employmentStatusModel->answer = isset($postData['employmentStatus']) ? $postData['employmentStatus'] : '';
            $employmentStatusModel->save();

            $categoryModel->answer = isset($postData['category']) ? $postData['category'] : '';
            $categoryModel->save();

            $organizationModel->answer = isset($postData['organization']) ? $postData['organization'] : '';
            $organizationModel->save();

            $organizationAddressModel->answer = isset($postData['organizationAddress']) ? $postData['organizationAddress'] : '';
            $organizationAddressModel->save();

            $businessModel->answer = isset($postData['business']) ? $postData['business'] : '';
            $businessModel->save();

            $workplaceModel->answer = isset($postData['workplace']) ? $postData['workplace'] : '';
            $workplaceModel->save();

            $firstJobModel->answer = isset($postData['firstJob']) ? $postData['firstJob'] : '';
            $firstJobModel->save();

            $stayReasonModel->answer = isset($postData['stayReason']) ? json_encode($postData['stayReason']) : '';
            $stayReasonModel->save();

            $otherStayReasonModel->answer = isset($postData['otherStayReason']) ? $postData['otherStayReason'] : '';
            $otherStayReasonModel->save();

            $otherStayReasonQuestionModel = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 48, 
                'next_question_id' => 49
                ])->orderBy(['id' => SORT_ASC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 48, 
                'next_question_id' => 49
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
                
            $otherStayReasonQuestionModel->user_id = Yii::$app->user->id;
            $otherStayReasonQuestionModel->question_id = 48;
            $otherStayReasonQuestionModel->next_question_id = 49;
            $otherStayReasonQuestionModel->answer = $otherStayReasonModel->answer != '' ? 'Yes' : 'No';
            $otherStayReasonQuestionModel->save();

            $firstJobRelatedModel->answer = isset($postData['firstJobRelated']) ? $postData['firstJobRelated'] : '';
            $firstJobRelatedModel->save();

            $acceptReasonModel->answer = isset($postData['acceptReason']) ? json_encode($postData['acceptReason']) : '';
            $acceptReasonModel->save();

            $otherAcceptReasonModel->answer = isset($postData['otherAcceptReason']) ? $postData['otherAcceptReason'] : '';
            $otherAcceptReasonModel->save();

            $otherAcceptReasonQuestionModel = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 52, 
                'next_question_id' => 53
                ])->orderBy(['id' => SORT_ASC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 52, 
                'next_question_id' => 53
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
                
            $otherAcceptReasonQuestionModel->user_id = Yii::$app->user->id;
            $otherAcceptReasonQuestionModel->question_id = 52;
            $otherAcceptReasonQuestionModel->next_question_id = 53;
            $otherAcceptReasonQuestionModel->answer = $otherAcceptReasonModel->answer != '' ? 'Yes' : 'No';
            $otherAcceptReasonQuestionModel->save();
            
            $changeJobReasonModel->answer = isset($postData['changeJobReason']) ? json_encode($postData['changeJobReason']) : '';
            $changeJobReasonModel->save();

            $otherChangeJobReasonModel->answer = isset($postData['otherChangeJobReason']) ? $postData['otherChangeJobReason'] : '';
            $otherChangeJobReasonModel->save();

            $otherChangeJobReasonQuestionModel = Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 55, 
                'next_question_id' => 56
                ])->orderBy(['id' => SORT_ASC])->one() ? 
                Answer::find()->where([
                'user_id' => Yii::$app->user->id, 
                'question_id' => 55, 
                'next_question_id' => 56
                ])->orderBy(['id' => SORT_ASC])->one() : new Answer();
                
            $otherChangeJobReasonQuestionModel->user_id = Yii::$app->user->id;
            $otherChangeJobReasonQuestionModel->question_id = 55;
            $otherChangeJobReasonQuestionModel->next_question_id = 56;
            $otherChangeJobReasonQuestionModel->answer = $otherChangeJobReasonModel->answer != '' ? 'Yes' : 'No';
            $otherChangeJobReasonQuestionModel->save();

            $firstJobStayModel->answer = isset($postData['firstJobStay']) ? $postData['firstJobStay'] : '';
            $firstJobStayModel->save();

            $otherFirstJobStayModel->answer = isset($postData['otherFirstJobStay']) ? $postData['otherFirstJobStay'] : '';
            $otherFirstJobStayModel->save();

            $firstJobFindModel->answer = isset($postData['firstJobFind']) ? $postData['firstJobFind'] : '';
            $firstJobFindModel->save();
            
            $otherFirstJobFindModel->answer = isset($postData['otherFirstJobFind']) ? $postData['otherFirstJobFind'] : '';
            $otherFirstJobFindModel->save();

            $firstJobLandModel->answer = isset($postData['firstJobLand']) ? $postData['firstJobLand'] : '';
            $firstJobLandModel->save();

            $otherFirstJobLandModel->answer = isset($postData['otherFirstJobLand']) ? $postData['otherFirstJobLand'] : '';
            $otherFirstJobLandModel->save();

            $firstJobPositionModel->answer = isset($postData['firstJobPosition']) ? $postData['firstJobPosition'] : '';
            $firstJobPositionModel->save();

            $presentJobPositionModel->answer = isset($postData['presentJobPosition']) ? $postData['presentJobPosition'] : '';
            $presentJobPositionModel->save();

            $grossModel->answer = isset($postData['gross']) ? $postData['gross'] : '';
            $grossModel->save();

            $curriculumModel->answer = isset($postData['curriculum']) ? $postData['curriculum'] : '';
            $curriculumModel->save();

            $competencyModel->answer = isset($postData['competency']) ? $postData['competency'] : '';
            $competencyModel->save();

            $otherCompetencyModel->answer = isset($postData['otherCompetency']) ? $postData['otherCompetency'] : '';
            $otherCompetencyModel->save();

            $suggestionModel->answer = isset($postData['suggestion']) ? $postData['suggestion'] : '';
            $suggestionModel->save();

            $completion = Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) ? Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $stage->id]) : new Completion();
            $completion->user_id = Yii::$app->user->id;
            $completion->stage_id = $stage->id;
            $completion->status = 'Completed';

            $professionalBadge = Badge::findOne(['title' => 'Professional']);
            if($employmentModel->answer == 'Yes')
            {
                $professionalBadgeEarned = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $professionalBadge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $professionalBadge->id]) : new BadgeUser();
                $professionalBadgeEarned->user_id = Yii::$app->user->id;
                $professionalBadgeEarned->badge_id = $professionalBadge->id;
                $professionalBadgeEarned->save();
            }

            $prospectBadge = Badge::findOne(['title' => 'Prospect']);
            if($employmentModel->answer == 'No')
            {
                $prospectBadgeEarned = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $prospectBadge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $prospectBadge->id]) : new BadgeUser();
                $prospectBadgeEarned->user_id = Yii::$app->user->id;
                $prospectBadgeEarned->badge_id = $prospectBadge->id;
                $prospectBadgeEarned->save();
            }

            $contributorBadge = Badge::findOne(['title' => 'Contributor']);
            if($completion->save())
            {
                $contributorBadgeEarned = BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $contributorBadge->id]) ? BadgeUser::findOne(['user_id' => Yii::$app->user->id, 'badge_id' => $contributorBadge->id]) : new BadgeUser();
                $contributorBadgeEarned->user_id = Yii::$app->user->id;
                $contributorBadgeEarned->badge_id = $contributorBadge->id;
                $contributorBadgeEarned->save();
            }
        }

        return $this->renderAjax('_fourth_form', [
            'user' => $user,
            'stage' => $stage,
            'employmentOptions' => $employmentOptions,
            'employmentModel' => $employmentModel,
            'unemploymentOptions' => $unemploymentOptions,
            'unemploymentModel' => $unemploymentModel,
            'otherUnemploymentModel' => $otherUnemploymentModel,
            'employmentStatusOptions' => $employmentStatusOptions,
            'employmentStatusModel' => $employmentStatusModel,
            'categoryOptions' => $categoryOptions,
            'categoryModel' => $categoryModel,
            'organizationModel' => $organizationModel,
            'organizationAddressModel' => $organizationAddressModel,
            'businessOptions' => $businessOptions,
            'businessModel' => $businessModel,
            'workplaceOptions' => $workplaceOptions,
            'workplaceModel' => $workplaceModel,
            'firstJobOptions' => $firstJobOptions,
            'firstJobModel' => $firstJobModel,
            'stayReasonOptions' => $stayReasonOptions,
            'stayReasonModel' => $stayReasonModel,
            'otherStayReasonModel' => $otherStayReasonModel,
            'firstJobRelatedOptions' => $firstJobRelatedOptions,
            'firstJobRelatedModel' => $firstJobRelatedModel,
            'acceptReasonOptions' => $acceptReasonOptions,
            'acceptReasonModel' => $acceptReasonModel,
            'otherAcceptReasonModel' => $otherAcceptReasonModel,
            'changeJobReasonOptions' => $changeJobReasonOptions,
            'changeJobReasonModel' => $changeJobReasonModel,
            'otherChangeJobReasonModel' => $otherChangeJobReasonModel,
            'firstJobStayOptions' => $firstJobStayOptions,
            'firstJobStayModel' => $firstJobStayModel,
            'otherFirstJobStayModel' => $otherFirstJobStayModel,
            'firstJobFindOptions' => $firstJobFindOptions,
            'firstJobFindModel' => $firstJobFindModel,
            'otherFirstJobFindModel' => $otherFirstJobFindModel,
            'firstJobLandOptions' => $firstJobLandOptions,
            'firstJobLandModel' => $firstJobLandModel,
            'otherFirstJobLandModel' => $otherFirstJobLandModel,
            'firstJobPositionOptions' => $firstJobPositionOptions,
            'firstJobPositionModel' => $firstJobPositionModel,
            'presentJobPositionOptions' => $presentJobPositionOptions,
            'presentJobPositionModel' => $presentJobPositionModel,
            'grossOptions' => $grossOptions,
            'grossModel' => $grossModel,
            'curriculumOptions' => $curriculumOptions,
            'curriculumModel' => $curriculumModel,
            'competencyOptions' => $competencyOptions,
            'competencyModel' => $competencyModel,
            'otherCompetencyModel' => $otherCompetencyModel,
            'suggestionModel' => $suggestionModel,
        ]);
    }

    public function actionLeaderboard()
    {
        $user = UserInfo::findOne(['user_id' => Yii::$app->user->id]);

        $points = Answer::find()
                ->select('user_id, sum(question.stage_id) as total')
                ->leftJoin('question', 'question.id = answer.question_id')
                ->where(['<>','answer', ''])
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
