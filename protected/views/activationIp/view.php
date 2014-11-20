<?php
/* @var $this ActivationIpController */
/* @var $model ActivationIp */

$this->breadcrumbs=array(
	'Activation Ips'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List ActivationIp', 'url'=>array('index')),
	array('label'=>'Create ActivationIp', 'url'=>array('create')),
	array('label'=>'Update ActivationIp', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete ActivationIp', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ActivationIp', 'url'=>array('admin')),
);
?>

<h1>View ActivationIp #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'ip',
		'server_name',
		'status',
	),
)); ?>
