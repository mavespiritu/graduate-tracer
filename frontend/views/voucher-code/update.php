<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\VoucherCode */

$this->title = 'Update Prize';
$this->params['breadcrumbs'][] = ['label' => 'Prizes', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="voucher-code-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
