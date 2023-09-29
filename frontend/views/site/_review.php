<?php 
use yii\helpers\Html;
use yii\web\View;
use yii\helpers\Url;
use common\models\Region;
use common\models\Province;
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
                <?php if($answer->question_id == 12){ ?>
                    <?php $region = Region::findOne($answer->answer); ?>
                    <span style="font-size: 18px;"><?= $region->abbreviation ?></span>
                <?php }else if($answer->question_id == 13){ ?>
                    <?php $province = Province::findOne($answer->answer); ?>
                    <span style="font-size: 18px;"><?= $province->province_m ?></span>
                <?php }else{ ?>
                    <span style="font-size: 18px;"><?= $answer->answer ?></span>
                <?php } ?>
            <?php } ?>
            </p>
        </div>
    <?php } ?>
<?php } ?>