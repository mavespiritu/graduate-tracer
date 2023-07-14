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
    </span><br>    
    <span style="font-size: 14px;">Question</span><br>    
    <?= $user->getCurrentQuestion($stage->id)->question ?></h3>

    <?php if($user->getCurrentQuestion($stage->id)->input_type == "input" && $user->getCurrentQuestion($stage->id)->data_type == "text"){ ?>
        <?php $form = ActiveForm::begin([
            'id' => 'game-form',
        ]); ?>
        <div class="row">
            <div class="col-md-9 col-xs-12">
                <?= $form->field($model, 'question_id')->hiddenInput(['value' => $user->getCurrentQuestion($stage->id)->id])->label(false) ?>

                <?php if($user->getCurrentQuestion($stage->id)->options){ ?>
                    <?php foreach($user->getCurrentQuestion($stage->id)->options as $option){ ?>
                        <?= $form->field($model, 'next_question_id')->hiddenInput(['value' => $option->destination_id])->label(false) ?>
                    <?php } ?>
                <?php } ?>

                <?= $form->field($model, 'answer')->textInput(['autocomplete' => 'off']) ?>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="form-group">
                    <?= Html::submitButton('Proceed', ['class' => 'ui teal button', 'style' => 'margin-top: 37px']) ?>
                </div>
            </div>
        </div>

        <?php ActiveForm::end(); ?>
        <?php
            $script = !$badge ? '
                $("#game-form").on("beforeSubmit", function(e) {
                    e.preventDefault();
                    var form = $(this);
                    var formData = form.serialize();

                    $.ajax({
                        url: form.attr("action"),
                        type: form.attr("method"),
                        data: formData,
                        success: function (data) {
                            playGame('.$stage->id.');
                            leaderBoard();
                            badge();
                        },
                        error: function (err) {
                            console.log(err);
                        }
                    });

                    return false;
                });
            ' :
            '
                $("#game-form").on("beforeSubmit", function(e) {
                    e.preventDefault();
                    var form = $(this);
                    var formData = form.serialize();

                    $.ajax({
                        url: form.attr("action"),
                        type: form.attr("method"),
                        data: formData,
                        success: function (data) {
                            badgeEarned('.$badge->id.','.$stage->id.');
                            leaderBoard();
                            badge();
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
    <?php }else if($user->getCurrentQuestion($stage->id)->input_type == "input" && $user->getCurrentQuestion($stage->id)->data_type == "number"){ ?>
        <?php $form = ActiveForm::begin([
            'id' => 'game-form',
        ]); ?>

        <div class="row">
            <div class="col-md-9 col-xs-12">
                <?= $form->field($model, 'question_id')->hiddenInput(['value' => $user->getCurrentQuestion($stage->id)->id])->label(false) ?>

                <?php if($user->getCurrentQuestion($stage->id)->options){ ?>
                    <?php foreach($user->getCurrentQuestion($stage->id)->options as $option){ ?>
                        <?= $form->field($model, 'next_question_id')->hiddenInput(['value' => $option->destination_id])->label(false) ?>
                    <?php } ?>
                <?php } ?>
                <?= $form->field($model, 'answer')->textInput(['type' => 'decimal', 'autocomplete' => 'off']) ?>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="form-group">
                    <?= Html::submitButton('Proceed', ['class' => 'ui teal button', 'style' => 'margin-top: 37px;']) ?>
                </div>
            
            </div>
        </div>
        
        <?php ActiveForm::end(); ?>
        <?php
            $script = !$badge ? '
                $("#game-form").on("beforeSubmit", function(e) {
                    e.preventDefault();
                    var form = $(this);
                    var formData = form.serialize();

                    $.ajax({
                        url: form.attr("action"),
                        type: form.attr("method"),
                        data: formData,
                        success: function (data) {
                            playGame('.$stage->id.');
                            leaderBoard();
                            badge();
                        },
                        error: function (err) {
                            console.log(err);
                        }
                    });

                    return false;
                });
            ' :
            '
                $("#game-form").on("beforeSubmit", function(e) {
                    e.preventDefault();
                    var form = $(this);
                    var formData = form.serialize();

                    $.ajax({
                        url: form.attr("action"),
                        type: form.attr("method"),
                        data: formData,
                        success: function (data) {
                            badgeEarned('.$badge->id.','.$stage->id.');
                            leaderBoard();
                            badge();
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
    <?php }else if($user->getCurrentQuestion($stage->id)->input_type == "input" && $user->getCurrentQuestion($stage->id)->data_type == "single-select"){ ?>
        <?php $form = ActiveForm::begin([
            'id' => 'game-form',
        ]); ?>

        <div class="row">
            <div class="col-md-9 col-xs-12">
                <?= $form->field($model, 'question_id')->hiddenInput(['value' => $user->getCurrentQuestion($stage->id)->id])->label(false) ?>

                <?php if($user->getCurrentQuestion($stage->id)->options){ ?>
                    <?php foreach($user->getCurrentQuestion($stage->id)->options as $option){ ?>
                        <?= $form->field($model, 'next_question_id')->hiddenInput(['value' => $option->destination_id])->label(false) ?>
                    <?php } ?>
                <?php } ?>
                <?= $form->field($model, 'answer')->widget(Select2::classname(), [
                    'data' => $data,
                    'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=>'game-select'],
                    'pluginOptions' => [
                        'allowClear' =>  true,
                    ],
                    ]);
                ?>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="form-group">
                    <?= Html::submitButton('Proceed', ['class' => 'ui teal button', 'style' => 'margin-top: 37px;']) ?>
                </div>
            
            </div>
        </div>
        
        <?php ActiveForm::end(); ?>
        <?php
            $script = !$badge ? '
                $("#game-form").on("beforeSubmit", function(e) {
                    e.preventDefault();
                    var form = $(this);
                    var formData = form.serialize();

                    $.ajax({
                        url: form.attr("action"),
                        type: form.attr("method"),
                        data: formData,
                        success: function (data) {
                            playGame('.$stage->id.');
                            leaderBoard();
                            badge();
                        },
                        error: function (err) {
                            console.log(err);
                        }
                    });

                    return false;
                });
            ' :
            '
                $("#game-form").on("beforeSubmit", function(e) {
                    e.preventDefault();
                    var form = $(this);
                    var formData = form.serialize();

                    $.ajax({
                        url: form.attr("action"),
                        type: form.attr("method"),
                        data: formData,
                        success: function (data) {
                            badgeEarned('.$badge->id.','.$stage->id.');
                            leaderBoard();
                            badge();
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
    <?php }else if($user->getCurrentQuestion($stage->id)->input_type == "input" && $user->getCurrentQuestion($stage->id)->data_type == "date"){ ?>
        <?php $form = ActiveForm::begin([
            'id' => 'game-form',
        ]); ?>

        <div class="row">
            <div class="col-md-9 col-xs-12">
                <?= $form->field($model, 'question_id')->hiddenInput(['value' => $user->getCurrentQuestion($stage->id)->id])->label(false) ?>

                <?php if($user->getCurrentQuestion($stage->id)->options){ ?>
                    <?php foreach($user->getCurrentQuestion($stage->id)->options as $option){ ?>
                        <?= $form->field($model, 'next_question_id')->hiddenInput(['value' => $option->destination_id])->label(false) ?>
                    <?php } ?>
                <?php } ?>
                <?= $form->field($model, 'answer')->widget(DatePicker::className(), [
                    'model' => $model, 
                    'attribute' => 'answer',
                    'type' => DatePicker::TYPE_INPUT,
                    'options' => ['placeholder' => 'Enter date', 'autocomplete' => 'off'],
                    'pluginOptions' => [
                        'autoclose'=>true,
                        'format' => 'yyyy-mm-dd'
                    ]
                ]); ?>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="form-group">
                    <?= Html::submitButton('Proceed', ['class' => 'ui teal button', 'style' => 'margin-top: 37px;']) ?>
                </div>
            
            </div>
        </div>
        
        <?php ActiveForm::end(); ?>
        <?php
            $script = !$badge ? '
                $("#game-form").on("beforeSubmit", function(e) {
                    e.preventDefault();
                    var form = $(this);
                    var formData = form.serialize();

                    $.ajax({
                        url: form.attr("action"),
                        type: form.attr("method"),
                        data: formData,
                        success: function (data) {
                            playGame('.$stage->id.');
                            leaderBoard();
                            badge();
                        },
                        error: function (err) {
                            console.log(err);
                        }
                    });

                    return false;
                });
            ' :
            '
                $("#game-form").on("beforeSubmit", function(e) {
                    e.preventDefault();
                    var form = $(this);
                    var formData = form.serialize();

                    $.ajax({
                        url: form.attr("action"),
                        type: form.attr("method"),
                        data: formData,
                        success: function (data) {
                            badgeEarned('.$badge->id.','.$stage->id.');
                            leaderBoard();
                            badge();
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
    <?php }else if($user->getCurrentQuestion($stage->id)->input_type == "option" && $user->getCurrentQuestion($stage->id)->data_type == "single-select"){ ?>
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div style="display: flex; flex-wrap: wrap; flex-direction: row; align-items: center; justify-content: flex-start">
                    
                    <?php if($user->getCurrentQuestion($stage->id)->options){ ?>
                        <?php foreach($user->getCurrentQuestion($stage->id)->options as $key => $option){ ?>
                            <div style="margin-right: 10px;">
                            <?php $form = ActiveForm::begin([
                                'id' => 'game-form'.$key,
                            ]); ?>
                            <?= $form->field($model, 'question_id')->hiddenInput(['value' => $user->getCurrentQuestion($stage->id)->id])->label(false) ?>
                            <?= $form->field($model, 'answer')->hiddenInput(['value' => $option->option])->label(false) ?>
                            <?= $form->field($model, 'next_question_id')->hiddenInput(['value' => $option->destination_id])->label(false) ?>
                            <?= Html::submitButton($option->option, ['class' => 'ui teal button']) ?>
                            <?php ActiveForm::end(); ?>
                            <?php
                                $script = !$badge ? '
                                    $("#game-form'.$key.'").on("beforeSubmit", function(e) {
                                        e.preventDefault();
                                        var form = $(this);
                                        var formData = form.serialize();

                                        $.ajax({
                                            url: form.attr("action"),
                                            type: form.attr("method"),
                                            data: formData,
                                            success: function (data) {
                                                playGame('.$stage->id.');
                                                leaderBoard();
                                                badge();
                                            },
                                            error: function (err) {
                                                console.log(err);
                                            }
                                        });

                                        return false;
                                    });
                                ' :
                                '
                                    $("#game-form'.$key.'").on("beforeSubmit", function(e) {
                                        e.preventDefault();
                                        var form = $(this);
                                        var formData = form.serialize();

                                        $.ajax({
                                            url: form.attr("action"),
                                            type: form.attr("method"),
                                            data: formData,
                                            success: function (data) {
                                                badgeEarned('.$badge->id.','.$stage->id.');
                                                leaderBoard();
                                                badge();
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
                            </div>
                        <?php } ?>
                    <?php } ?>
                    
                </div>
            </div>
        </div>
    <?php }else if($user->getCurrentQuestion($stage->id)->input_type == "option" && $user->getCurrentQuestion($stage->id)->data_type == "multiple-select"){ ?>
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <?php $form = ActiveForm::begin([
                    'id' => 'game-form',
                ]); ?>
                    <?= $form->field($model, 'question_id')->hiddenInput(['value' => $user->getCurrentQuestion($stage->id)->id])->label(false) ?>
                    <?php $options = []; ?>
                    <?php if($user->getCurrentQuestion($stage->id)->options){ ?>
                        <?php foreach($user->getCurrentQuestion($stage->id)->options as $key => $option){ ?>
                            <?php if($key == count($user->getCurrentQuestion($stage->id)->options) - 1){ ?>
                                <?= $form->field($model, 'next_question_id')->hiddenInput(['value' => $option->destination_id])->label(false) ?>
                            <?php } ?>
                            <?php $options[$option->option] = $option->option;  ?>
                        <?php } ?>
                    <?php } ?>
                    <?= $form->field($model, 'answer')->checkboxList($options, ['separator' => '<br>']); ?>
                    <div class="form-group">
                        <?= Html::submitButton('Proceed', ['class' => 'ui teal button']) ?>
                    </div>
                <?php ActiveForm::end(); ?>
                <?php
                    $script = !$badge ? '
                        $("#game-form").on("beforeSubmit", function(e) {
                            e.preventDefault();
                            var form = $(this);
                            var formData = form.serialize();

                            $.ajax({
                                url: form.attr("action"),
                                type: form.attr("method"),
                                data: formData,
                                success: function (data) {
                                    playGame('.$stage->id.');
                                    leaderBoard();
                                    badge();
                                },
                                error: function (err) {
                                    console.log(err);
                                }
                            });

                            return false;
                        });
                    ' :
                    '
                        $("#game-form").on("beforeSubmit", function(e) {
                            e.preventDefault();
                            var form = $(this);
                            var formData = form.serialize();

                            $.ajax({
                                url: form.attr("action"),
                                type: form.attr("method"),
                                data: formData,
                                success: function (data) {
                                    badgeEarned('.$badge->id.','.$stage->id.');
                                    leaderBoard();
                                    badge();
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
            </div>
        </div>
    <?php } ?>
</div>
<?php
  $script = '
    function exitGame()
    {
        $.ajax({
            url: "'.Url::to(['/site/home']).'",
            beforeSend: function(){
                $("#gameplay").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#gameplay").empty();
                $("#gameplay").hide();
            }
        });
    }

    function playGame(stage_id)
    {
        $.ajax({
            url: "'.Url::to(['/site/play']).'?stage_id=" + stage_id,
            beforeSend: function(){
                $("#gameplay").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#gameplay").empty();
                $("#gameplay").hide();
                $("#gameplay").fadeIn("slow");
                $("#gameplay").html(data);
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

    function badgeEarned(id, stage_id)
    {
        $.ajax({
            url: "'.Url::to(['/site/badge-earned']).'?id=" + id + "&stage_id=" + stage_id,
            beforeSend: function(){
                $("#main-menu").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#main-menu").empty();
                $("#main-menu").hide();
                $("#main-menu").fadeIn("slow");
                $("#main-menu").html(data);
            }
        });
    }

    $(document).ready(function() {
        $("#exitButton").click(function(e) {
            exitGame();
          });
    });
  ';
  $this->registerJs($script, View::POS_END);
?>