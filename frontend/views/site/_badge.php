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
<?php if(!empty($badges)){ ?>
    <?php foreach($badges as $badge){ ?>
        <img src="<?= $asset->baseUrl ?>/images/badges/<?= $badge->badge->title ?>.png" style="height: 12%; width: 12%; margin-right: 10px;" class="badges-earned" onclick="viewBadge(<?= $badge->badge->id ?>)"/>
    <?php } ?>
<?php } ?>
<br>
<div id="badge-information"></div>
<style>
    .badges-earned:hover{
        background: #DEDEDF;
        border-radius: 10px;
    }
</style>

<?php
$script = '
    function viewBadge(id)
    {
        $.ajax({
            url: "'.Url::to(['/site/view-badge']).'?id=" + id,
            beforeSend: function(){
                $("#badge-information").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#badge-information").empty();
                $("#badge-information").hide();
                $("#badge-information").fadeIn("slow");
                $("#badge-information").html(data);
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