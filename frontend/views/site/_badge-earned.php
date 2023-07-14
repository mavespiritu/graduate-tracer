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

?>
<div class="ui segment" style="border-radius: 15px;">
    <div id="confetti"></div>
    <h2 class="text-center">Congratulations!</h2>
    <h3 class="text-center">You have earned a badge!</h3>
    <div class="text-center">
        <img src="<?= $asset->baseUrl ?>/images/badges/<?= $badge->title ?>.png" style="height: 30%; width: 30%;" alt="<?= $badge->title ?>" /><br>
        <h3 class="text-center"><?= $badge->description ?></h3>
    </div>
    <br>
    <div class="row">
        <div class="col-md-4 col-xs-12"></div>
        <div class="col-md-4 col-xs-12"><button class="ui teal button btn-block" onclick="playGame(<?= $stage->id ?>)">Proceed to next question</button></div>
        <div class="col-md-4 col-xs-12"></div>
    </div>
</div>
<style>
    #confetti {
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden;
        width: 100%;
        height: 150px;
        background: url(<?= $asset->baseUrl.'/images/confetti.png' ?>) repeat-x;
        background-size: contain;
    }
</style>
<?php
  $script = '
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

    function playGame(stage_id)
    {
        $.ajax({
            url: "'.Url::to(['/site/play']).'?stage_id=" + stage_id,
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

    function badgeEarned()
    {
        $.ajax({
            url: "'.Url::to(['/site/badge-earned']).'",
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

    $(document).ready(function() {
        $("#exitButton").click(function(e) {
            exitGame();
          });
    });
  ';
  $this->registerJs($script, View::POS_END);
?>
