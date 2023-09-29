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
        <div class="col-md-4 col-xs-12">
            <?= $form->field($firstNameModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'firstname', 'id' => 'firstname'])->label('First Name[space]Extension Name') ?>
        </div>
        <div class="col-md-4 col-xs-12">
            <?= $form->field($middleNameModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'middlename', 'id' => 'middlename'])->label('Middle Name') ?>
        </div>
        <div class="col-md-4 col-xs-12">
            <?= $form->field($lastNameModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'lastname', 'id' => 'lastname'])->label('Last Name') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 col-xs-12">
            <?= $form->field($addressModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'permanent_address', 'id' => 'permanent_address'])->label('Permanent Address') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <?= $form->field($telephoneModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'telephone_no', 'id' => 'telephone_no'])->label('Telephone No.') ?>
        </div>
        <div class="col-md-6 col-xs-12">
            <?= $form->field($mobileNoModel, 'answer')->textInput(['autocomplete' => 'off', 'name' => 'mobile_no', 'id' => 'mobile_no'])->label('Mobile No.') ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 col-xs-12">
            <?= $form->field($civilStatusModel, 'answer')->widget(Select2::classname(), [
                    'data' => $civilStatuses,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'civil-status-select', 'name' => 'civil_status', 'id' => 'civil_status'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Civil Status');
            ?>
        </div>
        <div class="col-md-4 col-xs-12">
            <?= $form->field($genderModel, 'answer')->widget(Select2::classname(), [
                    'data' => $genders,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'gender-select', 'name' => 'gender', 'id' => 'gender'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Sex');
            ?>
        </div>
        <div class="col-md-4 col-xs-12">
            <?= $form->field($birthdateModel, 'answer')->widget(DatePicker::className(), [
                    'model' => $birthdateModel, 
                    'attribute' => 'answer',
                    'type' => DatePicker::TYPE_INPUT,
                    'options' => ['placeholder' => 'Enter date', 'autocomplete' => 'off', 'name' => 'birthdate', 'id' => 'birthdate'],
                    'pluginOptions' => [
                        'autoclose'=>true,
                        'format' => 'yyyy-mm-dd'
                ]
            ])->label('Birthdate'); ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 col-xs-12">
            <?= $form->field($regionModel, 'answer')->widget(Select2::classname(), [
                    'data' => $regions,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'region-select', 'name' => 'region', 'id' => 'region'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                    'pluginEvents'=>[
                        'select2:select'=>'
                            function(){
                                $.ajax({
                                    url: "'.Url::to(['/site/province-list']).'",
                                    data: {
                                        region: this.value,
                                        }
                                }).done(function(result) {
                                    $(".province-select").html("").select2({ data:result, multiple: false, theme:"'.Select2::THEME_KRAJEE.'", width:"100%",placeholder:"Select One", allowClear: true});
                                    $(".province-select").select2("val","");
                                });
                            }'
        
                    ]
                ])->label('Region');
            ?>
        </div>
        <div class="col-md-4 col-xs-12">
            <?= $form->field($provinceModel, 'answer')->widget(Select2::classname(), [
                    'data' => $provinces,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'province-select', 'name' => 'province', 'id' => 'province'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Province');
            ?>
        </div>
        <div class="col-md-4 col-xs-12">
            <?= $form->field($locationModel, 'answer')->widget(Select2::classname(), [
                    'data' => $locations,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=> 'location-select', 'name' => 'location', 'id' => 'location'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                ])->label('Location of Residence');
            ?>
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