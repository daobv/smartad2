<?php
/* @var $this InteractionController */
/* @var $model Interaction */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'interaction-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'interaction_info'); ?>
		<?php echo $form->textField($model,'interaction_info'); ?>
		<?php echo $form->error($model,'interaction_info'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'app_id'); ?>
		<?php echo $form->textField($model,'app_id'); ?>
		<?php echo $form->error($model,'app_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'user_id'); ?>
		<?php echo $form->textField($model,'user_id'); ?>
		<?php echo $form->error($model,'user_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'day_click'); ?>
		<?php echo $form->textField($model,'day_click'); ?>
		<?php echo $form->error($model,'day_click'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'success'); ?>
		<?php echo $form->textField($model,'success'); ?>
		<?php echo $form->error($model,'success'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'revenue'); ?>
		<?php echo $form->textField($model,'revenue'); ?>
		<?php echo $form->error($model,'revenue'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'date'); ?>
		<?php echo $form->textField($model,'date'); ?>
		<?php echo $form->error($model,'date'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->