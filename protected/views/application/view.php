<?php
/* @var $this ApplicationController */
/* @var $model Application */

$this->breadcrumbs=array(
	'Applications'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Application', 'url'=>array('index')),
	array('label'=>'Create Application', 'url'=>array('create')),
	array('label'=>'Update Application', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Application', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Application', 'url'=>array('admin')),
);
?>

<h1>View Application #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'image',
		'short_description',
		'adv_type',
		'platform_id',
		'appearance_id',
		'area',
		'from',
		'to',
		'status_id',
		'content',
		'link',
		'price',
		'size',
		'registered_date',
	),
)); ?>
