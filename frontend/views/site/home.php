<?php
    use frontend\assets\AppAsset;
    use yii\helpers\Html;

    $asset = AppAsset::register($this);
?>
<div class="row" style="margin-top: 25%;">
    <div class="col-md-5 col-xs-12">
        <div style="text-align: right; width: 100%;">
            <img src="<?= $asset->baseUrl ?>/images/nlpsc.png" style="height: 80%; width: 80%; border-radius: 300px; padding: 20px; background: #236097; border: 25px #235A94 solid;" class="ui top aligned tiny image text-center"/>
        </div>
    </div>
    <div class="col-md-5 col-xs-12">
        <h1 style="color: #FFFF; text-align: justify; font-weight: bolder;">Be part of our community. The NLPSC Alumni.</h1>
        <br>
        <br>
        <div class="text-center">
            <?= Html::a('Get Started', ['/user/register'],['class' => 'ui big green button', 'style' => 'padding-left: 100px; padding-right: 100px;']) ?>
            <br>
            <br>
            <?= Html::a('I already have an account', ['/user/login'],['class' => 'ui big inverted blue button', 'style' => 'padding-left: 45px; padding-right: 45px;']) ?>
            </div>
    </div>
</div>