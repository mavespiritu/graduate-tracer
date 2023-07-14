<?php
use kartik\select2\Select2;
use yii\helpers\Url;
/*
 * This file is part of the Dektrium project.
 *
 * (c) Dektrium project <http://github.com/dektrium>
 *
 * For the full copyright and license information, please view the LICENSE.md
 * file that was distributed with this source code.
 */

/**
 * @var yii\widgets\ActiveForm $form
 * @var dektrium\user\models\User $user
 */
?>

	<h4>User Details</h4>
	<div class="row">
		<div class="col-md-12">
			<?= $form->field($userinfo, 'course_id')->widget(Select2::classname(), [
				'data' => $courses,
				'options' => ['multiple' => false, 'placeholder' => 'Select one', 'class'=>'course-select', 'theme' => 'classic'],
				'pluginOptions' => [
					'allowClear' =>  false,
				],
				'pluginEvents'=>[
					'select2:select'=>'
						function(){
							$.ajax({
								url: "'.Url::to(['/site/majors-list']).'",
								data: {
									id: this.value,
									}
							}).done(function(result) {
								$(".major-select").html("").select2({ data:result, multiple: false, theme:"'.Select2::THEME_KRAJEE.'", width:"100%",placeholder:"Select one", allowClear: true});
								$(".major-select").select2("val","");
							});
						}'

				]
				])->label('Course');
			?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<?= $form->field($userinfo, 'major_id')->widget(Select2::classname(), [
                'data' => $majors,
                'options' => ['placeholder' => 'Select One','multiple' => false, 'class'=>'major-select'],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ]); ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<?= $form->field($userinfo, 'firstname')->textInput(['maxlength'=> true]); ?>

			<?= $form->field($userinfo, 'middlename')->textInput(['maxlength'=> true]); ?>

			<?= $form->field($userinfo, 'lastname')->textInput(['maxlength'=> true]); ?>

			<?= $form->field($userinfo, 'extname')->textInput(['maxlength'=> true]); ?>

			<?= $form->field($userinfo, 'year_graduated')->textInput(['maxlength'=> true, 'type' => 'number', 'min' => 1975, 'max' => date('Y')]); ?>
		</div>
	</div>
<hr>
    <h4>Account Details</h4>

    <div class="row">
    	<div class="col-md-12">
			<?= $form->field($user, 'email')->textInput(['maxlength' => 255]) ?>

			<?= $form->field($user, 'username')->textInput(['maxlength' => 255]) ?>

			<?= $form->field($user, 'password')->passwordInput() ?>
		</div>
	</div>
