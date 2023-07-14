<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Alumnus */

$this->title = 'Update Alumnus';
$this->params['breadcrumbs'][] = ['label' => 'Alumni', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="alumnus-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'courses' => $courses,
        'majors' => $majors,
    ]) ?>

</div>
