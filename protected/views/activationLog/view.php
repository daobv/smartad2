<?php
/* @var $this ActivationLogController */
/* @var $model ActivationLog */

$this->breadcrumbs=array(
	'Activation Logs'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List ActivationLog', 'url'=>array('index')),
	array('label'=>'Create ActivationLog', 'url'=>array('create')),
	array('label'=>'Update ActivationLog', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete ActivationLog', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ActivationLog', 'url'=>array('admin')),
);
?>

<h1>View ActivationLog #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'ip',
		'hash_code',
		'date',
	),
)); ?>
