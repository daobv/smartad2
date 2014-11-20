<?php
/* @var $this MerchantStatisticController */
/* @var $data MerchantStatistic */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('merchant_id')); ?>:</b>
	<?php echo CHtml::encode($data->merchant_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('keys')); ?>:</b>
	<?php echo CHtml::encode($data->keys); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('imei')); ?>:</b>
	<?php echo CHtml::encode($data->imei); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('phone')); ?>:</b>
	<?php echo CHtml::encode($data->phone); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('time')); ?>:</b>
	<?php echo CHtml::encode($data->time); ?>
	<br />


</div>