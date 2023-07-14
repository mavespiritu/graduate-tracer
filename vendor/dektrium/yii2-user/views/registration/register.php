<?php

/*
 * This file is part of the Dektrium project.
 *
 * (c) Dektrium project <http://github.com/dektrium>
 *
 * For the full copyright and license information, please view the LICENSE.md
 * file that was distributed with this source code.
 */

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use frontend\assets\AppAsset;
use yii\helpers\Url;
/**
 * @var yii\web\View $this
 * @var dektrium\user\models\User $model
 * @var dektrium\user\Module $module
 */

$this->title = Yii::t('user', 'Sign up');
$this->params['breadcrumbs'][] = $this->title;

$asset = AppAsset::register($this);
?>
<div class="row">
    <div class="col-md-9 col-xs-12">
        <div class="fill"></div>
    </div>
    <div class="col-md-3 col-xs-12">
        <div class="row">
            <div class="col-md-1 col-xs-12"></div>
            <div class="col-md-10 col-xs-12">
                <br>
                <h3>Register your NLPSC Alumni account</h3>
                <?php $form = ActiveForm::begin([
                    'id' => 'registration-form',
                    'enableAjaxValidation' => true,
                    'enableClientValidation' => false,
                ]); ?>
                <h4>Basic Information</h4>

                <?= $form->field($model, 'firstname')->textInput(['maxlength'=> true]); ?>

                <?= $form->field($model, 'middlename')->textInput(['maxlength'=> true]); ?>

                <div class="row">
                    <div class="col-md-8 col-xs-12">
                        <?= $form->field($model, 'lastname')->textInput(['maxlength'=> true]); ?>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <?= $form->field($model, 'extname')->textInput(['maxlength'=> true])->label('Suffix'); ?>
                    </div>
                </div>

                <?= $form->field($model, 'course_id')->widget(Select2::classname(), [
                    'data' => $courses,
                    'options' => ['multiple' => false, 'placeholder' => 'Select one', 'class'=>'course-select', 'theme' => 'classic'],
                    'pluginOptions' => [
                        'allowClear' =>  false,
                    ],
                    'pluginEvents'=>[
                        'select2:select'=>'
                            function(){
                                $.ajax({
                                    url: "'.Url::to(['/site/majors-list']).'",
                                    data: {
                                        id: this.value,
                                        }
                                }).done(function(result) {
                                    $(".major-select").html("").select2({ data:result, multiple: false, theme:"'.Select2::THEME_KRAJEE.'", width:"100%",placeholder:"Select one", allowClear: true});
                                    $(".major-select").select2("val","");
                                });
                            }'
        
                    ]
                    ])->label('Course');
                ?>

                <?= $form->field($model, 'major_id')->widget(Select2::classname(), [
                    'data' => $majors,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=>'major-select'],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ]); ?>

                <?= $form->field($model, 'year_graduated')->textInput(['maxlength'=> true, 'type' => 'number', 'min' => 1975, 'max' => date('Y')]); ?>
                <h4>User Account Information</h4>

                <?= $form->field($model, 'email')->textInput(['maxlength' => 255]) ?>

                <?= $form->field($model, 'username')->textInput(['maxlength' => 255]) ?>

                <?= $form->field($model, 'password')->passwordInput() ?>

                <?= Html::submitButton(Yii::t('user', 'Sign up'), ['class' => 'btn btn-success btn-block']) ?>

                <?php ActiveForm::end(); ?>
                <br>
                <p class="text-center">
                    <?= Html::a('Already registered? Sign in!', ['/user/login']) ?>
                </p>
            </div>
            <div class="col-md-1 col-xs-12"></div>
        </div>
    </div>
</div>
<style>
.centered {
    text-align: center;
    font-size: 0;
}
.centered > div {
   float: none;
   display: inline-block;
   text-align: left;
   font-size: 14px;
}

.fill {
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100vh;
    background: url(<?= $asset->baseUrl.'/images/banner.png' ?>) no-repeat;
    background-size: cover;
}

.content{
    margin: 0 !important;
    padding: 0 !important;
}
</style>