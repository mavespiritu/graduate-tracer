<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Alumnus */

$this->title = 'Batch Upload Alumni';
$this->params['breadcrumbs'][] = ['label' => 'Alumni', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="alumnus-upload">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_upload', [
        'model' => $model,
    ]) ?>

</div>
