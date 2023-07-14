<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\AlumnusSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Alumni';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="alumnus-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Add New', ['create'], ['class' => 'btn btn-success']) ?>
        <?= Html::a('Batch Upload', ['upload'], ['class' => 'btn btn-primary']) ?>
    </p>

    <div style="max-width: 100%; overflow: auto;">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'courseName',
            'majorName',
            'lastname',
            'firstname',
            'middlename',
            'sex',
            'batch',
            'date_of_graduation',

            [
                'format' => 'raw', 
                'value' => function($model){
                    $buttons = '';
                    $buttons.= Html::a('Edit', ['/alumnus/update', 'id' => $model->id]);
                    $buttons.='&nbsp;&nbsp;';
                    $buttons.= Html::a('Delete', ['delete', 'id' => $model->id], [
                        'data' => [
                            'confirm' => 'Are you sure you want to delete this alumnus?',
                            'method' => 'post',
                        ],
                    ]);

                    return $buttons;
            }],
        ],
    ]); ?>
    </div>
</div>
