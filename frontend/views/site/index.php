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
            <div class="ui segment" style="border-radius: 15px;">
                <img src="https://semantic-ui.com/images/avatar2/large/matthew.png" class="ui middle aligned tiny circular image">
                <span style="font-size: 35px; padding-left: 3%; font-weight: bolder;"><?= Yii::$app->user->identity->fullName ?>
                    <br>
                    <span style="font-size: 14px; padding-left: 14%;">
                        <table style="width: 100%; font-size: 16px;" class="table table-responsive">
                            <tr>
                                <th>Alumni ID:</th>
                                <td>NLP-<?= str_pad(Yii::$app->user->identity->userinfo->user_id, 8, '0', STR_PAD_LEFT); ?></td>
                                <th>Course:</th>
                                <td><?= Yii::$app->user->identity->userinfo->course->name ?></td>
                            </tr>
                            <tr>
                                <th>Batch:</th>
                                <td><?= Yii::$app->user->identity->userinfo->year_graduated ?></td>
                                <th>Major:</th>
                                <td><?= !is_null(Yii::$app->user->identity->userinfo->major_id) ? Yii::$app->user->identity->userinfo->major->name : '' ?></td>
                            </tr>
                        </table>
                    </span>
                </span>
            </div>
            <div id="main-menu"></div>
            <div id="gameplay"></div>
        </div>
        <div class="col-md-4 col-xs-12">
            <div id="prize">
                <?php if($voucherCodeUser){ ?>
                <div class="ui segment" style="border-radius: 15px;">
                    <h3>Your Prize</h3>
                    <p>Here is our simple gratitude for participating in our survey. Please follow instructions on how to claim the prize. Thank you. <br><br>
                    Merchant: <b><?= $voucherCodeUser->voucherCode->merchant ?></b> <br>
                    Voucher Code: <b><?= $voucherCodeUser->voucherCode->voucher_code ?></b> <br>
                    How to claim: <?= $voucherCodeUser->voucherCode->instruction ?>
                    </p>
                </div>  
                <?php } ?>
            </div>
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Leaderboards</h3>
                <div id="leaderboard"></div>
            </div>  
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Badges Earned</h3>
                <div id="badge" class="text-center"></div>
            </div>      
        </div>
    </div>
</div>

<?php
$script = '
    function home()
    {
        $.ajax({
            url: "'.Url::to(['/site/home']).'",
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

    function leaderBoard()
    {
        $.ajax({
            url: "'.Url::to(['/site/leaderboard']).'",
            beforeSend: function(){
                $("#leaderboard").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#leaderboard").empty();
                $("#leaderboard").hide();
                $("#leaderboard").fadeIn("slow");
                $("#leaderboard").html(data);
            }
        });
    }

    function badge()
    {
        $.ajax({
            url: "'.Url::to(['/site/badge']).'",
            beforeSend: function(){
                $("#badge").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#badge").empty();
                $("#badge").hide();
                $("#badge").fadeIn("slow");
                $("#badge").html(data);
            }
        });
    }

    function exitGame()
    {
        $.ajax({
            url: "'.Url::to(['/site/home']).'",
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
        home();
        badge();
        leaderBoard();

        $("#exitButton").click(function(e) {
            exitGame();
        });
    });
';
$this->registerJs($script);
   
?>
<style>
    input[type=text]{
        border-radius: 5px !important;
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

