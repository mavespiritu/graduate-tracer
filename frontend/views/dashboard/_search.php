<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\web\View;

/* @var $this yii\web\View */
/* @var $model common\models\VoucherCodeSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="voucher-code-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'id' => 'dashboard'
    ]); ?>

    <div class="row">
        <div class="col-md-4 col-xs-12">
            <?= $form->field($model, 'batch')->widget(Select2::classname(), [
                'data' => $years,
                'options' => ['placeholder' => 'All Years','multiple' => false, 'class'=>'year-select'],
                'pluginOptions' => [
                    'allowClear' =>  true,
                ],
                ])->label('Year');
            ?>
        </div>
        <div class="col-md-4 col-xs-12">
            <?= $form->field($model, 'course_id')->widget(Select2::classname(), [
                'data' => $courses,
                'options' => ['multiple' => false, 'placeholder' => 'Select one', 'class'=>'course-select', 'theme' => 'classic'],
                'pluginOptions' => [
                    'allowClear' =>  true,
                ],
                'pluginEvents'=>[
                    'select2:select'=>'
                        function(){
                            $.ajax({
                                url: "'.Url::to(['/majors-list']).'",
                                data: {
                                    id: this.value,
                                    }
                            }).done(function(result) {
                                $(".major-select").html("").select2({ data:result, multiple: false, theme:"'.Select2::THEME_KRAJEE.'", width:"100%",placeholder:"Select one", allowClear: true});
                                $(".major-select").select2("val","");
                            });
                        }'
    
                ]
                ])->label('Course');
            ?>
        </div>
        <div class="col-md-4 col-xs-12">
            <?= $form->field($model, 'major_id')->widget(Select2::classname(), [
                'data' => $majors,
                'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=>'major-select'],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ]); ?>
        </div>
    </div>

    <div class="form-group pull-right">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
    </div>
    <div class="clearfix"></div>

    <?php ActiveForm::end(); ?>

</div>
<?php
    $script = 
    '
        function alumniData(year, course_id, major_id)
        {
            $.ajax({
                url: "'.Url::to(['/dashboard/alumni-data']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
                beforeSend: function(){
                    $("#alumni_data").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#alumni_data").empty();
                    $("#alumni_data").hide();
                    $("#alumni_data").fadeIn("slow");
                    $("#alumni_data").html(data);
                }
            });
        }

        function respondentRate(year, course_id, major_id)
        {
            $.ajax({
                url: "'.Url::to(['/dashboard/respondent-rate']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
                beforeSend: function(){
                    $("#respondent_rate").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#respondent_rate").empty();
                    $("#respondent_rate").hide();
                    $("#respondent_rate").fadeIn("slow");
                    $("#respondent_rate").html(data);
                }
            });
        }

        function multiDegreeHolder(year, course_id, major_id)
        {
            $.ajax({
                url: "'.Url::to(['/dashboard/multi-degree-holder']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
                beforeSend: function(){
                    $("#multi_degree_holder").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#multi_degree_holder").empty();
                    $("#multi_degree_holder").hide();
                    $("#multi_degree_holder").fadeIn("slow");
                    $("#multi_degree_holder").html(data);
                }
            });
        }

        function employment(year, course_id, major_id)
        {
            $.ajax({
                url: "'.Url::to(['/dashboard/employment']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
                beforeSend: function(){
                    $("#employment").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#employment").empty();
                    $("#employment").hide();
                    $("#employment").fadeIn("slow");
                    $("#employment").html(data);
                }
            });
        }

        function jobClassification(year, course_id, major_id)
        {
            $.ajax({
                url: "'.Url::to(['/dashboard/job-classification']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
                beforeSend: function(){
                    $("#job_classification").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#job_classification").empty();
                    $("#job_classification").hide();
                    $("#job_classification").fadeIn("slow");
                    $("#job_classification").html(data);
                }
            });
        }

        function jobLocation(year, course_id, major_id)
        {
            $.ajax({
                url: "'.Url::to(['/dashboard/job-location']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
                beforeSend: function(){
                    $("#job_location").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#job_location").empty();
                    $("#job_location").hide();
                    $("#job_location").fadeIn("slow");
                    $("#job_location").html(data);
                }
            });
        }

        function jobGross(year, course_id, major_id)
        {
            $.ajax({
                url: "'.Url::to(['/dashboard/job-gross']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
                beforeSend: function(){
                    $("#job_gross").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
                },
                success: function (data) { 
                    $("#job_gross").empty();
                    $("#job_gross").hide();
                    $("#job_gross").fadeIn("slow");
                    $("#job_gross").html(data);
                }
            });
        }

        $("#dashboard").on("beforeSubmit", function(e) {
            e.preventDefault();
            var form = $(this);
            var formData = form.serialize();

            var year = $("#alumnus-batch").val();
            var course_id = $("#alumnus-course_id").val();
            var major_id = $("#alumnus-major_id").val();

            $.ajax({
                url: form.attr("action"),
                type: form.attr("method"),
                data: formData,
                success: function (data) {
                    alumniData(year, course_id, major_id);
                    respondentRate(year, course_id, major_id);
                    multiDegreeHolder(year, course_id, major_id);
                    employment(year, course_id, major_id);
                    jobClassification(year, course_id, major_id);
                    jobLocation(year, course_id, major_id);
                    jobGross(year, course_id, major_id);
                },
                error: function (err) {
                    console.log(err);
                }
            });

            return false;
        });
    ';
    $this->registerJs($script, View::POS_END);
?>