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

?>
<div class="ui segment" style="border-radius: 15px;">
    <h2>Welcome to the NLPSC Graduate Tracer!</h2>
    <p>Please complete the gamified survey as accurately & frankly as possible.  Your answer will be used for research purposes in order to assess graduate employability and eventually, improve course offerings to your alma mater & other universities/colleges in the Philippines.  Your answers to this survey will be treated with strictest confidentiality.</p>
    <br>
    <div id="buttons"></div>
</div>
<?php
$script = '
    function buttons()
    {
        $.ajax({
            url: "'.Url::to(['/site/buttons']).'",
            beforeSend: function(){
                $("#buttons").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#buttons").empty();
                $("#buttons").hide();
                $("#buttons").fadeIn("slow");
                $("#buttons").html(data);
            }
        });
    }

    function playGame(stage_id)
    {
        $.ajax({
            url: "'.Url::to(['/site/play']).'?stage_id=" + stage_id,
            beforeSend: function(){
                $("#gameplay").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#gameplay").empty();
                $("#gameplay").hide();
                $("#gameplay").fadeIn("slow");
                $("#gameplay").html(data);
            }
        });
    }

    function playForm(stage_id)
    {
        if(stage_id == 1)
        {
            $.ajax({
                url: "'.Url::to(['/site/first-part']).'?stage_id=" + stage_id,
                beforeSend: function(){
                    $("#gameplay").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#gameplay").empty();
                    $("#gameplay").hide();
                    $("#gameplay").fadeIn("slow");
                    $("#gameplay").html(data);
                }
            });
        }else if(stage_id == 2)
        {
            $.ajax({
                url: "'.Url::to(['/site/second-part']).'?stage_id=" + stage_id,
                beforeSend: function(){
                    $("#gameplay").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#gameplay").empty();
                    $("#gameplay").hide();
                    $("#gameplay").fadeIn("slow");
                    $("#gameplay").html(data);
                }
            });
        }else if(stage_id == 3)
        {
            $.ajax({
                url: "'.Url::to(['/site/third-part']).'?stage_id=" + stage_id,
                beforeSend: function(){
                    $("#gameplay").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#gameplay").empty();
                    $("#gameplay").hide();
                    $("#gameplay").fadeIn("slow");
                    $("#gameplay").html(data);
                }
            });
        }else if(stage_id == 4)
        {
            $.ajax({
                url: "'.Url::to(['/site/fourth-part']).'?stage_id=" + stage_id,
                beforeSend: function(){
                    $("#gameplay").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#gameplay").empty();
                    $("#gameplay").hide();
                    $("#gameplay").fadeIn("slow");
                    $("#gameplay").html(data);
                }
            });
        }
    }


    $(document).ready(function() {
        buttons();
        $("#exitButton").click(function(e) {
            exitGame();
          });
    });
';
$this->registerJs($script);
   
?>