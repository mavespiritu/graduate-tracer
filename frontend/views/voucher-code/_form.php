<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\ckeditor\CKEditor;

/* @var $this yii\web\View */
/* @var $model common\models\VoucherCode */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="voucher-code-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'merchant')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'voucher_code')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'instruction')->widget(CKEditor::className(), [
        'options' => ['rows' => 6],
        'preset' => 'basic'
    ]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
