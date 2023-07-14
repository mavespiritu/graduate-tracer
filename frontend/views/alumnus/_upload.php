<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use frontend\assets\AppAsset;
use yii\widgets\MaskedInput;

$asset = AppAsset::register($this);

/* @var $this yii\web\View */
/* @var $model common\models\Beneficiary */
/* @var $form yii\widgets\ActiveForm */

?>

<div class="row">
    <?php $form = ActiveForm::begin([
        'options' => ['enctype' => 'multipart/form-data'], 
        'method' => 'POST', 
        'enableAjaxValidation' => true,
        'action' => '',
        'id' => 'up-csv',
    ]);
    ?>

    <p><b>Get the excel file template here:</b></p>
    <a href="<?= $asset->baseUrl ?>/templates/alumni.xlsx">Alumni.xlsx</a>
    <br>
    <br>

    <div class="up-input">
        <?= $form->field($model, 'excelFile')
                ->fileInput()
                ->label('Upload the accomplished excel file here:')
        ?>

        <div class="form-group">
            <?= Html::submitButton('Upload', ['class' => 'btn btn-primary']) ?>
            <?= Html::a('Reset',['/alumnus/upload'],['class' => 'btn btn-default']) ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>
</div>

<table class="table table-responsive table-striped table-condensed errorsTable" style="display: none;">
    <thead>
        <tr>
            <th>Row</th>
            <th>Column</th>
            <th>Error Message</th>
        </tr>
    </thead>
    <tbody>
        
    </tbody>
</table>