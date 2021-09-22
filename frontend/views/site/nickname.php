<?php

/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\helpers\Url;
use frontend\assets\AppAsset;
use yii\web\View;
use yii\widgets\ActiveForm;

$asset = AppAsset::register($this);

$this->title = Yii::$app->user->identity->fullName;
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-index">
    <?php $form = ActiveForm::begin(['class' => 'ui form', 'id' => 'general-information-form']); ?>
    <div class="row">
        <div class="col-md-12 col-xs-12">
            <div class="ui segment">
                <h4>WELCOME TO THE NLPSC GRADUATE TRACER<span class="pull-right"><i class="power off icon"></i> Exit The Game</span></h4><hr>
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <img src="<?= $asset->baseUrl ?>/images/hero.png" alt="Hero" title="Hero" />
                    </div>
                    <div class="col-md-8 col-xs-12">
                        <br>
                        <h1>Enter your nickname:</h1>
                        <div class="row">
                            <div class="col-md-8 col-xs-12"><?= $form->field($nicknameModel, 'nickname')->textInput(['maxlength' => true, 'style' => 'border: 2px solid #FBDC67; height: 50px; font-size: 25px; color: #55B8E2;'])->label(false); ?></div>
                            <div class="col-md-4 col-xs-12">
                                <?= Html::submitButton('Submit', ['class' => 'ui teal big button', 'style' => 'height: 50px;']) ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php $form = ActiveForm::end(); ?>
</div>

<style type="text/css">
    h1{
        color: #FBDC67;
        text-shadow:
           3px 3px 0 #55B8E2,
         -1px -1px 0 #55B8E2,  
          1px -1px 0 #55B8E2,
          -1px 1px 0 #55B8E2,
           1px 1px 0 #55B8E2;
    },
</style>
