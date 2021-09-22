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
/**
 * @var yii\web\View $this
 * @var dektrium\user\models\User $model
 * @var dektrium\user\Module $module
 */

$this->title = Yii::t('user', 'Sign up');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><?= Html::encode($this->title) ?></h3>
            </div>
            <div class="panel-body">
                <?php $form = ActiveForm::begin([
                    'id' => 'registration-form',
                    'enableAjaxValidation' => true,
                    'enableClientValidation' => false,
                ]); ?>

                <h4>User Details</h4>
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <?= $form->field($model, 'course_id')->widget(Select2::classname(), [
                            'data' => $courses,
                            'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=>'course-select'],
                            'pluginOptions' => [
                                'allowClear' => true
                            ],
                        ]); ?>

                        <?= $form->field($model, 'major_id')->widget(Select2::classname(), [
                            'data' => $majors,
                            'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=>'major-select'],
                            'pluginOptions' => [
                                'allowClear' => true
                            ],
                        ]); ?>

                        <?= $form->field($model, 'year_graduated')->textInput(['maxlength'=> true, 'type' => 'number', 'min' => 1975, 'max' => date('Y')]); ?>

                        <?= $form->field($model, 'firstname')->textInput(['maxlength'=> true]); ?>

                        <?= $form->field($model, 'middlename')->textInput(['maxlength'=> true]); ?>
   
                        <?= $form->field($model, 'lastname')->textInput(['maxlength'=> true]); ?>

                    </div>
                </div>
                <hr>
                <h4>Account Details</h4>

                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <?= $form->field($model, 'email')->textInput(['maxlength' => 255]) ?>

                        <?= $form->field($model, 'username')->textInput(['maxlength' => 255]) ?>

                        <?= $form->field($model, 'password')->passwordInput() ?>
                    </div>
                </div>

                <?= Html::submitButton(Yii::t('user', 'Sign up'), ['class' => 'ui teal button btn-block']) ?>

                <?php ActiveForm::end(); ?>
            </div>
        </div>
        <p class="text-center">
            <?= Html::a(Yii::t('user', 'Already registered? Sign in!'), ['/user/security/login'],['style' => 'color: #FFFFFF']) ?>
        </p>
    </div>
</div>
