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
    <div class="btn-group btn-group-justified" role="group" aria-label="...">
    <?php if($stages){ ?>
        <?php foreach($stages as $stage){ ?>
            <?php if($stage->id == 1){ ?>
                <div class="btn-group" role="group">
                    <button type="button" class="ui huge teal button" onclick="<?= 'playGame('.$stage->id.')' ?>" >Part <?= $stage->id ?>: <?= $stage->title ?></button>
                </div>
            <?php }else{ ?>
                <div class="btn-group" role="group">
                    <button type="button" class="ui huge button <?= $user->currentStage >= $stage->id ? 'teal none' : 'disabled' ?>"  onclick="<?= $user->currentStage >= $stage->id ? 'playGame('.$stage->id.')' : 'javascript:void(0)'?>" >Part <?= $stage->id ?>: <?= $stage->title ?></button>
                </div>
            <?php } ?>
        <?php } ?>
    <?php } ?>
    </div>
</div>
<?php
$script = '
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

    $(document).ready(function() {
        $("#exitButton").click(function(e) {
            exitGame();
          });
    });
';
$this->registerJs($script);
   
?>