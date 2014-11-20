<?php
/* @var $this InteractionController */
/* @var $model Interaction */

$this->breadcrumbs=array(
	'Interactions'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Interaction', 'url'=>array('index')),
	array('label'=>'Create Interaction', 'url'=>array('create')),
	array('label'=>'View Interaction', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Interaction', 'url'=>array('admin')),
);
?>

<h1>Update Interaction <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>