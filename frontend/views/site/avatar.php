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
    <div class="row">
        <div class="col-md-12 col-xs-12">
            <div class="ui segment">
                <h4>WELCOME TO THE NLPSC GRADUATE TRACER<span class="pull-right"><i class="power off icon"></i> Exit The Game</span></h4><hr>
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <br>
                        <h1>Select your avatar:</h1>
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div class="ui two column stackable center aligned grid">
                                <div class="ui vertical divider">Or</div>
                                <div class="middle aligned row">
                                  <div class="column">
                                    <?php $form = ActiveForm::begin(['class' => 'ui form', 'id' => 'avatar-form']); ?>
                                    <?= $form->field($avatarModel, 'avatar')->hiddenInput(['value' => 'boy'])->label(false); ?>
                                    <?= Html::submitButton('<img src="'.$asset->baseUrl.'/images/boy.png" alt="Boy" title="Boy" style="height: 70%; width: 70%;" />',['style' => 'border: none; background: none;', 'class' => 'boy-button']) ?>
                                    
                                    <?php $form = ActiveForm::end(); ?>
                                  </div>
                                  <div class="column">
                                    <br>
                                    <?php $form = ActiveForm::begin(['class' => 'ui form', 'id' => 'avatar-form']); ?>
                                    <?= $form->field($avatarModel, 'avatar')->hiddenInput(['value' => 'girl'])->label(false); ?>
                                    <?= Html::submitButton('<img src="'.$asset->baseUrl.'/images/girl.png" alt="Girl" title="Girl" style="height: 70%; width: 70%;" />',['style' => 'border: none; background: none;', 'class' => 'girl-button']) ?>
                                    
                                    <?php $form = ActiveForm::end(); ?>
                                  </div>
                                </div>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
<?php
$script = '
$(".girl-button").on("mouseover", function(e){
   $(".girl-button").addClass("animated heartBeat");
});

$(".boy-button").on("mouseover", function(e){
   $(".boy-button").addClass("animated heartBeat");
});

$(".girl-button").on("mouseout", function(e){
   $(".girl-button").removeClass("animated heartBeat");
});

$(".boy-button").on("mouseout", function(e){
   $(".boy-button").removeClass("animated heartBeat");
});
';
$this->registerJs($script, View::POS_END);
?>