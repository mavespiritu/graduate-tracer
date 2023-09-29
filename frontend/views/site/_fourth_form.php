<?php 
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use kartik\date\DatePicker;
use yii\web\View;
use yii\helpers\Url;

?>

<div class="ui segment" style="border-radius: 15px;">
    <h3>
        <span style="font-size: 14px;">Part <?= $stage->id ?>: <?= $stage->title ?>
        <div class="pull-right"><button class="ui mini red button" id="exitButton">Exit Game</button></div>
        </span> 
    </h3>

    <?php $form = ActiveForm::begin([
        'id' => 'game-form',
    ]); ?>

    <div class="row">
        <div class="col-md-12 col-xs-12">
            <?= $form->field($employmentModel, 'answer')->widget(Select2::classname(), [
                    'data' => $employmentOptions,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'employment-select', 'name' => 'employment', 'id' => 'employment'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Are you presently employed?');
            ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($unemploymentModel, 'answer')->widget(Select2::classname(), [
                    'data' => $unemploymentOptions,
                    'options' => ['placeholder' => 'Select one or more','multiple' => true, 'class'=> 'unemployment-select', 'name' => 'unemployment', 'id' => 'unemployment'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Please state reason (s) why you are not yet employed');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($otherUnemploymentModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'otherUnemployment', 'id' => 'otherUnemployment'])->label('Other reason, please specify') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($employmentStatusModel, 'answer')->widget(Select2::classname(), [
                    'data' => $employmentStatusOptions,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'employment-status-select', 'name' => 'employmentStatus', 'id' => 'employmentStatus'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Present Employment Status');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($categoryModel, 'answer')->widget(Select2::classname(), [
                    'data' => $categoryOptions,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'category-select', 'name' => 'category', 'id' => 'category'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Present Occupation');
            ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($organizationModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'organization', 'id' => 'organization'])->label('Name of Company or Organization') ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($organizationAddressModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'organizationAddress', 'id' => 'organizationAddress'])->label('Company or Organization Address') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($businessModel, 'answer')->widget(Select2::classname(), [
                    'data' => $businessOptions,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'business-select', 'name' => 'business', 'id' => 'business'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Major line of business of the company you are presently employed in');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($workplaceModel, 'answer')->widget(Select2::classname(), [
                    'data' => $workplaceOptions,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'workplace-select', 'name' => 'workplace', 'id' => 'workplace'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Place of Work');
            ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 col-xs-12">
            <?= $form->field($firstJobModel, 'answer')->widget(Select2::classname(), [
                    'data' => $firstJobOptions,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'first-job-select', 'name' => 'firstJob', 'id' => 'firstJob'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Is this your first job after college?');
            ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($stayReasonModel, 'answer')->widget(Select2::classname(), [
                    'data' => $stayReasonOptions,
                    'options' => ['placeholder' => 'Select one or more','multiple' => true, 'class'=> 'stay-reason-select', 'name' => 'stayReason', 'id' => 'stayReason'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('What are the reason (s) for staying on the job?');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($otherStayReasonModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'otherStayReason', 'id' => 'otherStayReason'])->label('Other reason, please specify') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 col-xs-12">
            <?= $form->field($firstJobRelatedModel, 'answer')->widget(Select2::classname(), [
                    'data' => $firstJobRelatedOptions,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'first-job-related-select', 'name' => 'firstJobRelated', 'id' => 'firstJobRelated'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Is your first job related to the course you took up in college?');
            ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($acceptReasonModel, 'answer')->widget(Select2::classname(), [
                    'data' => $acceptReasonOptions,
                    'options' => ['placeholder' => 'Select one or more','multiple' => true, 'class'=> 'accept-reason-select', 'name' => 'acceptReason', 'id' => 'acceptReason'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('What were your reasons for accepting the job?');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($otherAcceptReasonModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'otherAcceptReason', 'id' => 'otherAcceptReason'])->label('Other reason, please specify') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($changeJobReasonModel, 'answer')->widget(Select2::classname(), [
                    'data' => $changeJobReasonOptions,
                    'options' => ['placeholder' => 'Select one or more','multiple' => true, 'class'=> 'change-reason-select', 'name' => 'changeReason', 'id' => 'changeReason'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('What were your reasons for changing job?');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($otherChangeJobReasonModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'otherChangeReason', 'id' => 'otherChangeReason'])->label('Other reason, please specify') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($firstJobStayModel, 'answer')->widget(Select2::classname(), [
                    'data' => $firstJobStayOptions,
                    'options' => ['placeholder' => 'Select one','multiple' => false, 'class'=> 'first-job-stay-select', 'name' => 'firstJobStay', 'id' => 'firstJobStay'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('How long did you stay in your first job?');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($otherFirstJobStayModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'otherFirstJobStay', 'id' => 'otherFirstJobStay'])->label('Others, please specify') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($firstJobFindModel, 'answer')->widget(Select2::classname(), [
                    'data' => $firstJobFindOptions,
                    'options' => ['placeholder' => 'Select one','multiple' => false, 'class'=> 'first-job-find-select', 'name' => 'firstJobFind', 'id' => 'firstJobFind'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('How did you find your first job?');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($otherFirstJobFindModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'otherFirstJobFind', 'id' => 'otherFirstJobFind'])->label('Others, please specify') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($firstJobLandModel, 'answer')->widget(Select2::classname(), [
                    'data' => $firstJobLandOptions,
                    'options' => ['placeholder' => 'Select one','multiple' => false, 'class'=> 'first-job-land-select', 'name' => 'firstJobLand', 'id' => 'firstJobLand'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('How long did it take you to land your first job?');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($otherFirstJobLandModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'otherFirstJobLand', 'id' => 'otherFirstJobLand'])->label('Others, please specify') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($firstJobPositionModel, 'answer')->widget(Select2::classname(), [
                    'data' => $firstJobPositionOptions,
                    'options' => ['placeholder' => 'Select one','multiple' => false, 'class'=> 'first-job-position-select', 'name' => 'firstJobPosition', 'id' => 'firstJobPosition'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Job Level Position (First Job)');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($presentJobPositionModel, 'answer')->widget(Select2::classname(), [
                    'data' => $presentJobPositionOptions,
                    'options' => ['placeholder' => 'Select one','multiple' => false, 'class'=> 'present-job-position-select', 'name' => 'presentJobPosition', 'id' => 'presentJobPosition'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Job Level Position (Present Job)');
            ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($grossModel, 'answer')->widget(Select2::classname(), [
                    'data' => $grossOptions,
                    'options' => ['placeholder' => 'Select one','multiple' => false, 'class'=> 'gross-select', 'name' => 'gross', 'id' => 'gross'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('What is your initial gross monthly earning in your first job after college?');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($curriculumModel, 'answer')->widget(Select2::classname(), [
                    'data' => $curriculumOptions,
                    'options' => ['placeholder' => 'Select one','multiple' => false, 'class'=> 'curriculum-select', 'name' => 'curriculum', 'id' => 'curriculum'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Was the curriculum you had in college relevant to your first job?');
            ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($competencyModel, 'answer')->widget(Select2::classname(), [
                    'data' => $competencyOptions,
                    'options' => ['placeholder' => 'Select one','multiple' => false, 'class'=> 'competency-select', 'name' => 'competency', 'id' => 'competency'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('If YES, what competencies learned in college did you find very useful in your first job?  ');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($otherCompetencyModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'otherCompetency', 'id' => 'otherCompetency'])->label('Others, please specify') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 col-xs-12">
            <?= $form->field($suggestionModel, 'answer')->textArea(['rows' => 3, 'autocomplete' => 'off', 'name' => 'suggestion', 'id' => 'suggestion'])->label('List down suggestions to further improve your course curriculum') ?>
        </div>
    </div>

    <div class="form-group pull-right">
        <?= Html::submitButton('Save', ['class' => 'ui teal button']) ?>
    </div>
    <div class="clearfix"></div>

    <?php ActiveForm::end(); ?>
</div>
<?php
    $script = '
    $("#exitButton").click(function(e) {
        exitGame();
    });

    function exitGame()
    {
        $.ajax({
            url: "'.Url::to(['/site/home']).'",
            beforeSend: function(){
                $("#main-menu").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#gameplay").empty();
                $("#gameplay").hide();
                $("#main-menu").empty();
                $("#main-menu").hide();
                $("#main-menu").fadeIn("slow");
                $("#main-menu").html(data);
            }
        });
    }

    function buttons()
    {
        $.ajax({
            url: "'.Url::to(['/site/buttons']).'",
            beforeSend: function(){
                $("#buttons").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#buttons").empty();
                $("#buttons").hide();
                $("#buttons").fadeIn("slow");
                $("#buttons").html(data);
            }
        });
    }

    function leaderBoard()
    {
        $.ajax({
            url: "'.Url::to(['/site/leaderboard']).'",
            beforeSend: function(){
                $("#leaderboard").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#leaderboard").empty();
                $("#leaderboard").hide();
                $("#leaderboard").fadeIn("slow");
                $("#leaderboard").html(data);
            }
        });
    }

    function badge()
    {
        $.ajax({
            url: "'.Url::to(['/site/badge']).'",
            beforeSend: function(){
                $("#badge").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#badge").empty();
                $("#badge").hide();
                $("#badge").fadeIn("slow");
                $("#badge").html(data);
            }
        });
    }

    function claim()
    {
        $.ajax({
            url: "'.Url::to(['/site/claim']).'",
            method: "POST",
            beforeSend: function(){
                $("#prize").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#prize").empty();
                $("#prize").hide();
                $("#prize").fadeIn("slow");
                $("#prize").html(data);
            }
        });
    }

    $(document).ready(function() {
        validate();
    });
    
    $("#employment").on("change", function(){
        validate();
    });

    $("#firstJob").on("change", function(){
        validate();
    });

    $("#firstJobRelated").on("change", function(){
        validate();
    });

    $("#curriculum").on("change", function(){
        validate();
    });

    function validate()
    {
        if($("#employment").val() == "Yes")
        {
            $("#unemployment").attr("disabled", true);
            $("#otherUnemployment").attr("disabled", true);
            $("#employmentStatus").removeAttr("disabled");
            $("#category").removeAttr("disabled");
            $("#organization").removeAttr("disabled");
            $("#organizationAddress").removeAttr("disabled");
            $("#business").removeAttr("disabled");
            $("#workplace").removeAttr("disabled");
            $("#firstJob").removeAttr("disabled");
            $("#stayReason").removeAttr("disabled");
            $("#otherStayReason").removeAttr("disabled");
            $("#firstJobRelated").removeAttr("disabled");
            $("#acceptReason").removeAttr("disabled");
            $("#otherAcceptReason").removeAttr("disabled");
            $("#changeReason").removeAttr("disabled");
            $("#otherChangeReason").removeAttr("disabled");
            $("#firstJobStay").removeAttr("disabled");
            $("#otherFirstJobStay").removeAttr("disabled");
            $("#firstJobFind").removeAttr("disabled");
            $("#otherFirstJobFind").removeAttr("disabled");
            $("#firstJobLand").removeAttr("disabled");
            $("#otherFirstJobLand").removeAttr("disabled");
            $("#firstJobPosition").removeAttr("disabled");
            $("#presentJobPosition").removeAttr("disabled");
            $("#gross").removeAttr("disabled");
            $("#curriculum").removeAttr("disabled");
            $("#competency").removeAttr("disabled");
            $("#otherCompetency").removeAttr("disabled");
            $("#suggestion").removeAttr("disabled");
        }else{
            $("#unemployment").removeAttr("disabled");
            $("#otherUnemployment").removeAttr("disabled");
            $("#employmentStatus").attr("disabled", true);
            $("#category").attr("disabled", true);
            $("#organization").attr("disabled", true);
            $("#organizationAddress").attr("disabled", true);
            $("#business").attr("disabled", true);
            $("#workplace").attr("disabled", true);
            $("#firstJob").attr("disabled", true);
            $("#stayReason").attr("disabled", true);
            $("#otherStayReason").attr("disabled", true);
            $("#firstJobRelated").attr("disabled", true);
            $("#acceptReason").attr("disabled", true);
            $("#otherAcceptReason").attr("disabled", true);
            $("#changeReason").attr("disabled", true);
            $("#otherChangeReason").attr("disabled", true);
            $("#firstJobStay").attr("disabled", true);
            $("#otherFirstJobStay").attr("disabled", true);
            $("#firstJobFind").attr("disabled", true);
            $("#otherFirstJobFind").attr("disabled", true);
            $("#firstJobLand").attr("disabled", true);
            $("#otherFirstJobLand").attr("disabled", true);
            $("#firstJobPosition").attr("disabled", true);
            $("#presentJobPosition").attr("disabled", true);
            $("#gross").attr("disabled", true);
            $("#curriculum").attr("disabled", true);
            $("#competency").attr("disabled", true);
            $("#otherCompetency").attr("disabled", true);
            $("#suggestion").attr("disabled", true);
        }

        if($("#firstJob").val() == "Yes")
        {
            $("#stayReason").removeAttr("disabled");
            $("#otherStayReason").removeAttr("disabled");
        }else{
            $("#stayReason").attr("disabled", true);
            $("#otherStayReason").attr("disabled", true);
            $("#firstJobRelated").attr("disabled", true);
            $("#acceptReason").attr("disabled", true);
            $("#otherAcceptReason").attr("disabled", true);
        }

        if($("#firstJobRelated").val() == "Yes")
        {
            $("#acceptReason").removeAttr("disabled");
            $("#otherAcceptReason").removeAttr("disabled");
        }else{
            $("#acceptReason").attr("disabled", true);
            $("#otherAcceptReason").attr("disabled", true);
        }

        if($("#curriculum").val() == "Yes")
        {
            $("#competency").removeAttr("disabled");
            $("#otherCompetency").removeAttr("disabled");
        }else{
            $("#competency").attr("disabled", true);
            $("#otherCompetency").attr("disabled", true);
        }
    }
    ';

    $script .= !is_null($stage->nextStage) ? '$("#game-form").on("beforeSubmit", function(e) {
        e.preventDefault();
        var form = $(this);
        var formData = form.serialize();

        $.ajax({
            url: form.attr("action"),
            type: form.attr("method"),
            data: formData,
            success: function (data) {
                playForm('.$stage->nextStage->id.');
                leaderBoard();
                badge();
                buttons();
            },
            error: function (err) {
                console.log(err);
            }
        });

        return false;
    });' : '$("#game-form").on("beforeSubmit", function(e) {
        e.preventDefault();
        var form = $(this);
        var formData = form.serialize();

        $.ajax({
            url: form.attr("action"),
            type: form.attr("method"),
            data: formData,
            success: function (data) {
                claim();
                leaderBoard();
                badge();
                buttons();
                exitGame();
            },
            error: function (err) {
                console.log(err);
            }
        });

        return false;
    });';

    $this->registerJs($script, View::POS_END);
?>