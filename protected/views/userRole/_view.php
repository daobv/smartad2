<?php
/* @var $this UserRoleController */
/* @var $data UserRole */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('role_name')); ?>:</b>
	<?php echo CHtml::encode($data->role_name); ?>
	<br />


</div>