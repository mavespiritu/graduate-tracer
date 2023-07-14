<?php

/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\helpers\Url;
use frontend\assets\AppAsset;
use yii\web\View;
use kartik\rating\StarRating;
use kartik\typeahead\Typeahead;
use yii\web\JsExpression;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\bootstrap\Modal;

$asset = AppAsset::register($this);

$this->title = Yii::$app->user->identity->fullName;
$this->params['breadcrumbs'][] = $this->title;

?>

<?php if($user->currentStage >= 4){ ?>
    <table class="table table-condensed responsive">
        <thead>
            <tr>
                <th>Rank</th>
                <th>Alumnus</th>
                <th style="text-align: right;"><b>Pts Earned</b></th>
            </tr>
        </thead>
        <tbody>
        <?php if(!empty($users)){ ?>
            <?php $i = 1; ?>
            <?php foreach($users as $user){ ?>
                <tr>
                    <td><?= $i ?></td>
                    <td><?= $user['name'] ?></td>
                    <td align=right><?= number_format($user['total'], 0) ?> pts.</td>
                </tr> 
                <?php $i++ ?>
            <?php } ?>
        <?php } ?>
        </tbody>
    </table>
<?php }else{ ?>
    <p class="text-center"><img src="<?= $asset->baseUrl ?>/images/leaderboard.svg" style="height: 60%; width: 60%;"/></p>
    <h3 class="text-center" style="font-weight: bolder;">Unlock leaderboards!</h3>
    <p class="text-center">Achieve Part 4 questionnaire to unlock leaderboards.</p>
<?php } ?>