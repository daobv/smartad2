<?php
/* @var $this InteractionController */
/* @var $data Interaction */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('interaction_info')); ?>:</b>
	<?php echo CHtml::encode($data->interaction_info); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('app_id')); ?>:</b>
	<?php echo CHtml::encode($data->app_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('user_id')); ?>:</b>
	<?php echo CHtml::encode($data->user_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('day_click')); ?>:</b>
	<?php echo CHtml::encode($data->day_click); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('success')); ?>:</b>
	<?php echo CHtml::encode($data->success); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('revenue')); ?>:</b>
	<?php echo CHtml::encode($data->revenue); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('date')); ?>:</b>
	<?php echo CHtml::encode($data->date); ?>
	<br />

	*/ ?>

</div>