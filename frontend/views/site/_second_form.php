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
        'id' => 'game-form'
    ]); ?>

    <div class="row">
        <div class="col-md-12 col-xs-12">
            <h4>Educational Attainment (Baccalaureate Degree Only)</h4>
            <table class="table table-responsive table-bordered">
                <thead>
                    <tr>
                        <th>Degree(s) & Specialization</th>
                        <th>College or University</th>
                        <th>Year Graduated</th>
                        <th>Honor(s) or Award(s) Received</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><?= $form->field($degreeModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'degree', 'id' => 'degree'])->label(false) ?></td>
                        <td><?= $form->field($schoolModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'school', 'id' => 'school'])->label(false) ?></td>
                        <td><?= $form->field($yearModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'year', 'id' => 'year'])->label(false) ?></td>
                        <td><?= $form->field($honorModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'honor', 'id' => 'honor'])->label(false) ?></td>
                    </tr>
                    <tr>
                        <td><?= $form->field($degreeModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'degree2', 'id' => 'degree2'])->label(false) ?></td>
                        <td><?= $form->field($schoolModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'school2', 'id' => 'school2'])->label(false) ?></td>
                        <td><?= $form->field($yearModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'year2', 'id' => 'year2'])->label(false) ?></td>
                        <td><?= $form->field($honorModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'honor2', 'id' => 'honor2'])->label(false) ?></td>
                    </tr>
                    <tr>
                        <td><?= $form->field($degreeModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'degree3', 'id' => 'degree3'])->label(false) ?></td>
                        <td><?= $form->field($schoolModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'school3', 'id' => 'school3'])->label(false) ?></td>
                        <td><?= $form->field($yearModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'year3', 'id' => 'year3'])->label(false) ?></td>
                        <td><?= $form->field($honorModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'honor3', 'id' => 'honor3'])->label(false) ?></td>
                    </tr>
                </tbody>
            </table>
            <ul>
                <li>Degree means Program of Study or Program of Discipline, example BS in Teacher Education.</li>
                <li>Specialization means major field of study, example Mathematics.</li>
                <li>Honors or Awards means academic awards received in college or while earning the degree.</li>
            </ul>
            <h4>Professional Examination(s) Passed</h4>
            <table class="table table-responsive table-bordered">
                <thead>
                    <tr>
                        <th>Name of Examination</th>
                        <th>Date Taken</th>
                        <th>Rating</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><?= $form->field($examModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'exam', 'id' => 'exam'])->label(false) ?></td>
                        <td><?= $form->field($dateTakenModel, 'answer')->widget(DatePicker::className(), [
                                'model' => $dateTakenModel, 
                                'attribute' => 'answer',
                                'type' => DatePicker::TYPE_INPUT,
                                'options' => ['placeholder' => 'Enter date', 'autocomplete' => 'off', 'name' => 'dateTaken', 'id' => 'dateTaken'],
                                'pluginOptions' => [
                                    'autoclose'=>true,
                                    'format' => 'yyyy-mm-dd'
                            ]
                        ])->label(false); ?></td>
                        <td><?= $form->field($ratingModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'rating', 'id' => 'rating'])->label(false) ?></td>
                    </tr>
                    <tr>
                        <td><?= $form->field($exam2Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'exam2', 'id' => 'exam2'])->label(false) ?></td>
                        <td><?= $form->field($dateTaken2Model, 'answer')->widget(DatePicker::className(), [
                                'model' => $dateTaken2Model, 
                                'attribute' => 'answer',
                                'type' => DatePicker::TYPE_INPUT,
                                'options' => ['placeholder' => 'Enter date', 'autocomplete' => 'off', 'name' => 'dateTaken2', 'id' => 'dateTaken2'],
                                'pluginOptions' => [
                                    'autoclose'=>true,
                                    'format' => 'yyyy-mm-dd'
                            ]
                        ])->label(false); ?></td>
                        <td><?= $form->field($rating2Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'rating2', 'id' => 'rating2'])->label(false) ?></td>
                    </tr>
                    <tr>
                        <td><?= $form->field($exam3Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'exam3', 'id' => 'exam3'])->label(false) ?></td>
                        <td><?= $form->field($dateTaken3Model, 'answer')->widget(DatePicker::className(), [
                                'model' => $dateTaken3Model, 
                                'attribute' => 'answer',
                                'type' => DatePicker::TYPE_INPUT,
                                'options' => ['placeholder' => 'Enter date', 'autocomplete' => 'off', 'name' => 'dateTaken3', 'id' => 'dateTaken3'],
                                'pluginOptions' => [
                                    'autoclose'=>true,
                                    'format' => 'yyyy-mm-dd'
                            ]
                        ])->label(false); ?></td>
                        <td><?= $form->field($rating3Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'rating3', 'id' => 'rating3'])->label(false) ?></td>
                    </tr>
                </tbody>
            </table>
            <h4>Reason (s) for taking the course (s) or pursuing degree (s)</h4>
            <table class="table table-responsive table-bordered">
                <thead>
                    <tr>
                        <th>Undergraduate/AB/BS</th>
                        <th>Graduate/MS/MA/Ph.D.</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="width: 50%;"><?= $form->field($undergradModel, 'answer')->widget(Select2::classname(), [
                                'data' => $undergradReasons,
                                'options' => ['placeholder' => 'Select one or more','multiple' => true, 'class'=> 'undergrad-reason-select', 'name' => 'undergrad-reason', 'id' => 'undergrad-reason'],
                                'pluginOptions' => [
                                    'allowClear' =>  true,
                                ],
                            ])->label(false);
                        ?></td>
                        <td style="width: 50%;"><?= $form->field($postgradModel, 'answer')->widget(Select2::classname(), [
                                'data' => $postgradReasons,
                                'options' => ['placeholder' => 'Select one or more','multiple' => true, 'class'=> 'postgrad-reason-select', 'name' => 'postgrad-reason', 'id' => 'postgrad-reason'],
                                'pluginOptions' => [
                                    'allowClear' =>  true,
                                ],
                            ])->label(false);
                        ?></td>
                    </tr>
                </tbody>
            </table>
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
    }';

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
            },
            error: function (err) {
                console.log(err);
            }
        });

        return false;
    });';

    $this->registerJs($script, View::POS_END);
?>