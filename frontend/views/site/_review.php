<?php 
use yii\helpers\Html;
use yii\web\View;
use yii\helpers\Url;
?>

<h2>Congratulations! You have accomplished the NLPSC Graduate Tracer!</h2>
<p>Below are your answers on the questions provided by the graduate tracer.</p>
<div class="ui segment" style="border-radius: 15px; height: 600px; overflow-y: scroll; padding: 10px auto;">
    <?php if($user->answers){ ?>
        <?php foreach($user->answers as $answer){ ?>
            <div class="ui segment" style="border-radius: 15px; width: 95%;">
                <p class="pull-right">Edit</p>
                <h3><span style="font-size: 14px;">Question</span><br>    
                    <?= $answer->question->question ?></h3>
                <p><b>Answer</b><br>
                <?php if($answer->question->input_type == "option" && $answer->question->data_type == "multiple-select"){ ?>
                    <span style="font-size: 18px;">
                        <?php $answers = json_decode($answer->answer) ?>
                        <?php if(!empty($answers)){ ?>
                            <ul style="font-size: 18px;">
                                <?php foreach($answers as $answer){ ?>
                                    <li><?= $answer ?></li>
                                <?php } ?>
                            </ul>
                        <?php } ?>
                    </span>
                <?php }else{ ?>
                    <span style="font-size: 18px;"><?= $answer->answer ?></span>
                <?php } ?>
                </p>
            </div>
        <?php } ?>
    <?php } ?>
</div>