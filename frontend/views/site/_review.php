<?php 
use yii\helpers\Html;
use yii\web\View;
use yii\helpers\Url;
?>

<p>Below are your answers on the questions provided by the graduate tracer.</p>
<?php if($user->getAnswers($stage->id)){ ?>
    <?php foreach($user->getAnswers($stage->id) as $answer){ ?>
        <div class="ui segment" style="border-radius: 15px;">
            <h3>
                <span style="font-size: 14px;">Question:</span>
                <br>  
                <?= $answer->question->question ?></h3>
            <hr>
            <p><b>Your Answer:</b><br>
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