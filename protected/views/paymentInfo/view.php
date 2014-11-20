<?php
/* @var $this PaymentInfoController */
/* @var $model PaymentInfo */

$this->breadcrumbs=array(
	'Payment Infos'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List PaymentInfo', 'url'=>array('index')),
	array('label'=>'Create PaymentInfo', 'url'=>array('create')),
	array('label'=>'Update PaymentInfo', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete PaymentInfo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage PaymentInfo', 'url'=>array('admin')),
);
?>

<h1>View PaymentInfo #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'user_id',
		'identity_card',
		'type',
		'number',
		'owner',
		'branch',
	),
)); ?>
