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

    <h4>Professional or work-related training programs including advance studies you have attended after college</h4>
    <table class="table table-responsive table-bordered">
        <thead>
            <tr>
                <th>Title of Training or Advance Study</th>
                <th>Duration</th>
                <th>Credits Earned</th>
                <th>Name of Training Institution/College/University</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><?= $form->field($titleModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'title', 'id' => 'title'])->label(false) ?></td>
                <td><?= $form->field($durationModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'duration', 'id' => 'duration'])->label(false) ?></td>
                <td><?= $form->field($creditModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'credit', 'id' => 'credit'])->label(false) ?></td>
                <td><?= $form->field($institutionModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'institution', 'id' => 'institution'])->label(false) ?></td>
            </tr>
            <tr>
                <td><?= $form->field($title2Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'title2', 'id' => 'title2'])->label(false) ?></td>
                <td><?= $form->field($duration2Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'duration2', 'id' => 'duration2'])->label(false) ?></td>
                <td><?= $form->field($credit2Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'credit2', 'id' => 'credit2'])->label(false) ?></td>
                <td><?= $form->field($institution2Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'institution2', 'id' => 'institution2'])->label(false) ?></td>
            </tr>
            <tr>
                <td><?= $form->field($title3Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'title3', 'id' => 'title3'])->label(false) ?></td>
                <td><?= $form->field($duration3Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'duration3', 'id' => 'duration3'])->label(false) ?></td>
                <td><?= $form->field($credit3Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'credit3', 'id' => 'credit3'])->label(false) ?></td>
                <td><?= $form->field($institution3Model, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'institution3', 'id' => 'institution3'])->label(false) ?></td>
            </tr>
        </tbody>
    </table>
    <br>
    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($promotionModel, 'answer')->widget(Select2::classname(), [
                    'data' => $pursueOptions,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'gender-select', 'name' => 'promotion', 'id' => 'promotion'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('What made you pursue advance studies?');
            ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <br>
            <?= $form->field($otherPursueModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'otherPursue', 'id' => 'otherPursue', 'placeholder' => 'Please specify', 'style' => 'margin-top: 5px;'])->label(false) ?>
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