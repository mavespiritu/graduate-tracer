<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use kartik\date\DatePicker;
/* @var $this yii\web\View */
/* @var $model common\models\Alumnus */
/* @var $form yii\widgets\ActiveForm */

$majorsUrl = \yii\helpers\Url::to(['/alumnus/major-list']);
?>

<div class="alumnus-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'course_id')->widget(Select2::classname(), [
        'data' => $courses,
        'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=>'course-select'],
        'pluginOptions' => [
            'allowClear' =>  true,
        ],
        'pluginEvents'=>[
            'select2:select' => '
                function(){
                    $.ajax({
                        url: "'.$majorsUrl.'",
                        data: {
                                id: this.value,
                            }
                    }).done(function(result) {
                        $(".major-select").html("").select2({ data:result, theme:"krajee", width:"100%",placeholder:"Select One", allowClear: true});
                        $(".major-select").select2("val","");
                    });
                }'
        ]
        ]);
    ?>

    <?= $form->field($model, 'major_id')->widget(Select2::classname(), [
        'data' => $majors,
        'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=>'major-select'],
        'pluginOptions' => [
            'allowClear' =>  true,
        ],
        ]);
    ?>

    <?= $form->field($model, 'lastname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'firstname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'middlename')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sex')->dropDownList([ 'F' => 'F', 'M' => 'M', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'batch')->textInput() ?>

    <?= $form->field($model, 'date_of_graduation')->widget(DatePicker::className(), [
                    'model' => $model, 
                    'attribute' => 'answer',
                    'type' => DatePicker::TYPE_INPUT,
                    'options' => ['placeholder' => 'Enter date', 'autocomplete' => 'off'],
                    'pluginOptions' => [
                        'autoclose'=>true,
                        'format' => 'yyyy-mm-dd'
                    ]
                ]); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
        <?= Html::a('Close', ['/alumnus'], ['class' => 'btn btn-default'])?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
