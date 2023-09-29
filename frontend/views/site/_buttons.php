<?php 
    use yii\bootstrap\Progress;
?>
<?= Progress::widget([
    'percent' => $user->currentStage > count($stages) ? 100 : ($user->currentStage/count($stages))*100,
    'barOptions' => ['class' => 'progress-bar-success'],
    'options' => ['class' => 'active progress-striped'],
    'label' => $user->currentStage > count($stages) ? '100% completed' : (($user->currentStage/count($stages))*100).'% completed'
]); ?>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
<?php if($stages){ ?>
    <?php foreach($stages as $stage){ ?>
        <?php if($stage->id == 1){ ?>
            <div class="btn-group" role="group">
                <button type="button" class="ui huge teal button" onclick="<?= 'playForm('.$stage->id.')' ?>" >Part <?= $stage->id ?>: <?= $stage->title ?></button>
            </div>
        <?php }else{ ?>
            <div class="btn-group" role="group">
                <button type="button" class="ui huge button <?= $user->currentStage >= $stage->id ? 'teal none' : 'disabled' ?>"  onclick="<?= $user->currentStage >= $stage->id ? 'playForm('.$stage->id.')' : 'javascript:void(0)' ?>" >Part <?= $stage->id ?>: <?= $stage->title ?></button>
            </div>
        <?php } ?>
    <?php } ?>
<?php } ?>
</div>