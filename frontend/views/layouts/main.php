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
frontend\assets\AppAsset::register($this);
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
    <!-- Resources -->
    <script src="https://cdn.amcharts.com/lib/5/index.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/percent.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap" style="height: 100vh;">
    <?php if ((Yii::$app->controller->action->id != 'login') && (Yii::$app->controller->action->id != 'register')) { ?>
    <?php
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);

    $menuItems = [
    ];
    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => 'Login', 'url' => ['/user/login']];
        $menuItems[] = ['label' => 'Sign Up', 'url' => ['/user/register']];
    } else {
        $menuItems[] = ['label' => 'Game', 'url' => ['/site/']];

        if(Yii::$app->user->can('Administrator')){
            $menuItems[] = ['label' => 'Dashboard', 'url' => ['/dashboard/']];
            $menuItems[] = ['label' => 'Alumni List', 'url' => ['/alumnus']];
            $menuItems[] = ['label' => 'Prizes', 'url' => ['/voucher-code']];
            $menuItems[] = ['label' => 'User Management', 'url' => ['/user/admin']];
        }else if(Yii::$app->user->can('Faculty')){
            $menuItems[] = ['label' => 'Dashboard', 'url' => ['/dashboard/']];
        }

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
    <?php } ?>
    <div class="<?= Yii::$app->user->isGuest ? '' : 'container animated bounceInDown' ?>">
        <?= $content ?>
    </div>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
