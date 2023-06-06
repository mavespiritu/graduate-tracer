<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\VoucherCode */

$this->title = 'Create Prize';
$this->params['breadcrumbs'][] = ['label' => 'Prizes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="voucher-code-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
