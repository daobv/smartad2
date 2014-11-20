<?php
/* @var $this AdvApperanceController */
/* @var $model AdvApperance */

$this->breadcrumbs=array(
	'Adv Apperances'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List AdvApperance', 'url'=>array('index')),
	array('label'=>'Create AdvApperance', 'url'=>array('create')),
	array('label'=>'Update AdvApperance', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete AdvApperance', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AdvApperance', 'url'=>array('admin')),
);
?>

<h1>View AdvApperance #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'image',
	),
)); ?>
