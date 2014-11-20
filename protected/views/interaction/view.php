<?php
/* @var $this InteractionController */
/* @var $model Interaction */

$this->breadcrumbs=array(
	'Interactions'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Interaction', 'url'=>array('index')),
	array('label'=>'Create Interaction', 'url'=>array('create')),
	array('label'=>'Update Interaction', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Interaction', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Interaction', 'url'=>array('admin')),
);
?>

<h1>View Interaction #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'interaction_info',
		'app_id',
		'user_id',
		'day_click',
		'success',
		'revenue',
		'date',
	),
)); ?>
