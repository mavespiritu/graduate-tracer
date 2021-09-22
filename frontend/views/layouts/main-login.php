<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

$asset = AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap bg">
    <?php
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-fixed-top',
        ],
    ]);
    $menuItems = [];

    if (Yii::$app->user->isGuest) {
        
    } else {
        $menuItems[] = ['label' => 'My Profile', 'url' => ['/site/my-profile']];
        $menuItems[] = '<li>'
            . Html::beginForm(['/user/logout'], 'post')
            . Html::submitButton(
                '<img src="https://semantic-ui.com/images/avatar2/large/matthew.png" class="ui avatar image">'.Yii::$app->user->identity->fullName.' (Sign Out)',
                ['class' => 'btn btn-link logout']
            )
            . Html::endForm()
            . '</li>';
    }
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
    ]);
    NavBar::end();
    ?>

    <div class=" animated bounceInDown">
        <div class="container">
            <?= $content ?>
        </div>
    </div>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
<style>
    body, html {
      height: 100%;
    }

    .bg {
      /* The image used */
      background-image: url("<?= $asset->baseUrl ?>/images/bg.jpg");

      /* Full height */
      height: 100vh;

      /* Center and scale the image nicely */
      background-repeat: repeat;
    }

    .wrap > .navbar {
        background-color: #235390;
        color: #FFFFFF;
        border: 0;
        height: 70px;
        padding-bottom: 20px;
    }

    .navbar-brand{
        color: #FFFFFF;
        font-weight: bolder;
        font-size: 24px;
    }

    .navbar-brand:hover{
        color: #FFFFFF;
        font-weight: bolder;
        font-size: 24px;
    }

    .navbar-nav li a{
        color: #FFFFFF;
    }

    .navbar-nav li a:hover{
        color: #FFFFFF;
        background: none;
    }
</style>