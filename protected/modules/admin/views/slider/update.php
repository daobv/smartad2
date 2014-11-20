<?php
/* @var $this SliderController */
/* @var $model Slider */

$this->breadcrumbs=array(
	'Sliders'=>array('index'),
	$model->name=>array('view','id'=>$model->slider_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Slider', 'url'=>array('index')),
	array('label'=>'Create Slider', 'url'=>array('create')),
	array('label'=>'View Slider', 'url'=>array('view', 'id'=>$model->slider_id)),
	array('label'=>'Manage Slider', 'url'=>array('admin')),
);
?>
<div class="content">
    <div class="title"><h5>Cập nhật slider <?php echo $model->slider_id; ?></h5></div>

    <?php $this->renderPartial('_form', array('model'=>$model)); ?>
</div>
