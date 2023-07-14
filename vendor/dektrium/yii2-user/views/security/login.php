<?php

/*
 * This file is part of the Dektrium project.
 *
 * (c) Dektrium project <http://github.com/dektrium>
 *
 * For the full copyright and license information, please view the LICENSE.md
 * file that was distributed with this source code.
 */

use dektrium\user\widgets\Connect;
use dektrium\user\models\LoginForm;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use frontend\assets\AppAsset;
/**
 * @var yii\web\View $this
 * @var dektrium\user\models\LoginForm $model
 * @var dektrium\user\Module $module
 */

$this->title = Yii::t('user', 'Sign in');
$this->params['breadcrumbs'][] = $this->title;

$asset = AppAsset::register($this);
?>

<?= $this->render('/_alert', ['module' => Yii::$app->getModule('user')]) ?>

<div class="row">
    <div class="col-md-9 col-xs-12">
        <div class="fill"></div>
    </div>
    <div class="col-md-3 col-xs-12">
        <div class="row">
            <div class="col-md-2 col-xs-12"></div>
            <div class="col-md-8 col-xs-12" style="padding: 10px auto;">
                <br>
                <br>
                <br>
                <br>
                <h3>Sign in your NLPSC Alumni account</h3>
                <?php $form = ActiveForm::begin([
                    'id'                     => 'login-form',
                    'enableAjaxValidation'   => true,
                    'enableClientValidation' => false,
                    'validateOnBlur'         => false,
                    'validateOnType'         => false,
                    'validateOnChange'       => false,
                ]) ?>

                <?= $form->field($model, 'login', ['inputOptions' => ['autofocus' => 'autofocus', 'class' => 'form-control', 'tabindex' => '1', 'autocomplete'=>'off']])->label('Username') ?>

                <?= $form->field($model, 'password', ['inputOptions' => ['class' => 'form-control', 'tabindex' => '2']])->passwordInput()->label(Yii::t('user', 'Password')) ?>
                <br>

                <?= Html::submitButton(Yii::t('user', 'Sign in'), ['class' => 'btn btn-primary btn-block', 'tabindex' => '3']) ?>

                <?php ActiveForm::end(); ?>
                <br>
                <?php if ($module->enableRegistration): ?>
                    <p class="text-center">
                        <?= Html::a(Yii::t('user', 'Don\'t have an account? Sign up!'), ['/user/registration/register']) ?>
                    </p>
                <?php endif ?>
                <?= Connect::widget([
                    'baseAuthUrl' => ['/user/security/auth'],
                ]) ?>
                </p>
            </div>
            <div class="col-md-2 col-xs-12"></div>
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