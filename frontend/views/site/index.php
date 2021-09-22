<?php

/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\helpers\Url;
use frontend\assets\AppAsset;
use yii\web\View;
use kartik\rating\StarRating;
use kartik\typeahead\Typeahead;
use yii\web\JsExpression;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\bootstrap\Modal;

$asset = AppAsset::register($this);

$this->title = Yii::$app->user->identity->fullName;
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="site-index container">
    <br>
    <div class="row">
        <div class="col-md-8 col-xs-12">
            <img src="https://semantic-ui.com/images/avatar2/large/matthew.png" class="ui middle aligned tiny circular image">
            <span style="font-size: 35px; padding-left: 3%; font-weight: bolder;"><?= Yii::$app->user->identity->fullName ?>
                <br>
                <span style="font-size: 14px; padding-left: 14%;">
                    <table style="width: 100%; font-size: 16px;" class="table table-responsive">
                        <tr>
                            <th>Alumni ID:</th>
                            <td><?= str_pad(Yii::$app->user->identity->userinfo->user_id, 8, '0', STR_PAD_LEFT); ?></td>
                            <th>Course:</th>
                            <td><?= Yii::$app->user->identity->userinfo->course->name ?></td>
                        </tr>
                        <tr>
                            <th>Batch:</th>
                            <td><?= Yii::$app->user->identity->userinfo->year_graduated ?></td>
                            <th>Major:</th>
                            <td><?= Yii::$app->user->identity->userinfo->major->name ?></td>
                        </tr>
                    </table>
                </span>
            </span>
            <br>
            <br>
            <div id="main-menu">
                <h2>Welcome to the NLPSC Graduate Tracer!</h2>
                <p>Good day!  Please complete the gamified survey as accurately & frankly as possible by checking (/) the box corresponding to your response.  Your answer will be used for research purposes in order to assess graduate employability and eventually, improve course offerings to your alma mater & other universities/colleges in the Philippines.  Your answers to this survey will be treated with strictest confidentiality.</p>
                <button class="ui huge teal button btn-block" id="playButton">Start Now!</button>
            </div>
        </div>
        <div class="col-md-4 col-xs-12">
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Progress</h3>
            </div>
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Leaderboards</h3>
                <p class="text-center"><img src="<?= $asset->baseUrl ?>/images/leaderboard.svg" style="height: 80%; width: 80%;"/></p>
                <h3 class="text-center" style="font-weight: bolder;">Unlock leaderboards!</h3>
                <p class="text-center">Achieve Level 5 to unlock leaderboards.</p>
            </div>        
        </div>
    </div>
</div>

<?php
$script = '
    function playGame()
    {
        $.ajax({
            url: "'.Url::to(['/site/play']).'",
            beforeSend: function(){
                $("#main-menu").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#main-menu").empty();
                $("#main-menu").hide();
                $("#main-menu").fadeIn("slow");
                $("#main-menu").html(data);
            }
        });
    }

    $(document).ready(function() {
        $("#playButton").click(function(e) {
          playGame();
        });
    });
';
$this->registerJs($script);
   
?>
<style>
    button, input[type=text]{
        border-radius: 15px !important;
    }
    .stage{
        height: 100px;
        border-radius:60px/60px;
        background: #8176DE;
        width: 90%;
    }

    .circle{
        height: 80px;
        width: 80px;
        background-color: #4BA4F6;
        border-radius: 50%;
        display: inline-block;
        margin-left: 10px;
        margin-top: 10px;
        text-align: center;
        color: #FFFFFF;
        font-size: 45px;
        line-height: 1.6em;
        display: inline-block;
        font-weight: bolder;
        border: 5px white solid;
        float: left;
    }

    .red{
        background: #FF816B;
        color: #FFD66A;
    }

    .blue{
        background: #21A9FF;
        color: #49E7FF;
    }

    .pink{
        background: #FF79DA;
        color: #FFC9F2;
    }

    .green{
        background: #A2EC0F;
        color: #0C8F03;
    }

    .content{
        width: 70%;
        float: left;
    }

    .content .title{
        color: #FFFFFF;
        font-size: 22px;
        font-weight: bolder;
        padding-top: 30px;
        padding-left: 5%;
    }

    .title{
        margin-bottom: 2%;
    }


    .play{
        color: #FFFFFF;
        font-size: 40px;
        font-weight: bolder;
        float: right;
        padding-right: 5%;
        padding-top: 5.5%;
    }

     #burst {
      background: #7AC70C;
      width: 50px;
      height: 50px;
      position: relative;
      text-align: center;
      margin-left: 10px;
      color: #FFFFFF;
    }
    #burst:before,
    #burst:after {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      height: 50px;
      width: 50px;
      background: #7AC70C;
    }
    #burst:before {
      transform: rotate(30deg);
    }
    #burst:after {
      transform: rotate(60deg);
    }

    .achievement{
        padding: 20px;
        text-align: center;
    }
    .badge-container {
        display: inline-block;
        position: relative;
        text-align: center;
    }

    .positioning{
        z-index: 999;
        position: absolute;
        right: 8px;
        bottom: 7px;
        background-color: none;
        color: white;
        padding: 4px;
        font-size: 17px;
        line-height: 18px;
    }

    .frozen{
        opacity: 0.5;
    }

</style>

