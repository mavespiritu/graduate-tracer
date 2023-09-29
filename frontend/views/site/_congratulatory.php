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
    <h2>Congratulations! 
        <span class="pull-right">
            <?= !is_null($nextStage) ? '<button class="ui teal button" onclick="playForm('.$nextStage->id.')" >Proceed to Next Part</button>' : '<button class="ui teal button" onclick="claim()" >Claim your prize</button>' ?>
            <button class="ui red button" onclick="exitGame()">Exit Game</button>
        </span>
    </h2>

    <p>You have completed questions on <b>Part <?= $stage->id ?>: <?= $stage->title ?></b></p> 

    <?= $this->renderAjax('_review',[
            'model' => $model,
            'user' => $user,
            'stage' => $stage,
        ]);
    ?>
    <?= !is_null($nextStage) ? '<button class="ui teal button" onclick="playForm('.$nextStage->id.')" >Proceed to Next Part</button>' : '<button class="ui teal button" onclick="claim()" >Claim your prize</button>' ?>
    <button class="ui red button" onclick="exitGame()">Exit Game</button>
</div>
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

    function claim()
    {
        $.ajax({
            url: "'.Url::to(['/site/claim']).'",
            method: "POST",
            beforeSend: function(){
                $("#prize").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#prize").empty();
                $("#prize").hide();
                $("#prize").fadeIn("slow");
                $("#prize").html(data);
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