<?php
/* @var $this AdvTypeController */
/* @var $model AdvType */

$this->breadcrumbs=array(
	'Adv Types'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List AdvType', 'url'=>array('index')),
	array('label'=>'Create AdvType', 'url'=>array('create')),
	array('label'=>'Update AdvType', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete AdvType', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AdvType', 'url'=>array('admin')),
);
?>

<h1>View AdvType #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
	),
)); ?>
