<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Alumnus */

$this->title = 'Add New Alumnus';
$this->params['breadcrumbs'][] = ['label' => 'Alumni', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="alumnus-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'courses' => $courses,
        'majors' => $majors,
    ]) ?>

</div>
