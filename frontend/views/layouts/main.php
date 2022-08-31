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

<?php if (Yii::$app->controller->action->id === 'login' || Yii::$app->controller->action->id === 'register' || Yii::$app->controller->action->id === 'request') { 

    echo $this->render(
        'main-sign',
        ['content' => $content]
    );
} else if (Yii::$app->controller->action->id === 'index' && Yii::$app->controller->id === 'site' && (Yii::$app->user->isGuest)) { 
    echo $this->render(
        'main-login',
        ['content' => $content]
    );
}else{
    
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
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    $menuItems = [
    ];
    if (Yii::$app->user->isGuest) {

    } else {
        $menuItems[] = ['label' => 'Main Menu', 'url' => ['/site/']];

        if(Yii::$app->user->can('Administrator')){
            $menuItems[] = ['label' => 'User Management', 'url' => ['/user/admin']];
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
    <div class="container animated bounceInDown">
        <?= $content ?>
    </div>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
<?php } ?>
