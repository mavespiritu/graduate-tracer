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

<div class="badge-information">
    <div style="text-align: left;">
        <img src="<?= $asset->baseUrl ?>/images/badges/<?= $badge->title ?>.png" style="height: 30%; width: 30%; float: left;" />
        <br>
        <h1>Certified <?= $badge->title ?></h1>
        <p><?= $badge->description ?></p>
</div>
</div>