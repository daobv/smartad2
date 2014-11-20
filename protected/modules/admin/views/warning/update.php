<?php
/* @var $this WarningController */
/* @var $model Warning */

$this->breadcrumbs=array(
	'Warnings'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Warning', 'url'=>array('index')),
	array('label'=>'Create Warning', 'url'=>array('create')),
	array('label'=>'View Warning', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Warning', 'url'=>array('admin')),
);
?>

<h1>Update Warning <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>