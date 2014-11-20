<?php
/* @var $this AclController */
/* @var $data Acl */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('user_role_id')); ?>:</b>
	<?php echo CHtml::encode($data->user_role_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('control')); ?>:</b>
	<?php echo CHtml::encode($data->control); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('label')); ?>:</b>
	<?php echo CHtml::encode($data->label); ?>
	<br />


</div>