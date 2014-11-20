<?php
/* @var $this WarningController */
/* @var $model Warning */

$this->breadcrumbs=array(
	'Warnings'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Warning', 'url'=>array('index')),
	array('label'=>'Create Warning', 'url'=>array('create')),
	array('label'=>'Update Warning', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Warning', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Warning', 'url'=>array('admin')),
);
?>

<h1>View Warning #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'message',
		'create_at',
		'expire_at',
		'author',
		'note',
		'status',
	),
)); ?>
