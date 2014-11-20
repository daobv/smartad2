<?php
/* @var $this SliderController */
/* @var $model Slider */

$this->breadcrumbs=array(
	'Sliders'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Slider', 'url'=>array('index')),
	array('label'=>'Create Slider', 'url'=>array('create')),
	array('label'=>'Update Slider', 'url'=>array('update', 'id'=>$model->slider_id)),
	array('label'=>'Delete Slider', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->slider_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Slider', 'url'=>array('admin')),
);
?>

<h1>View Slider #<?php echo $model->slider_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'slider_id',
		'name',
		'image_url',
		'redirect_url',
		'is_show',
		'created_date',
	),
)); ?>
