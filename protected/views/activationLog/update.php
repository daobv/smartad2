<?php
/* @var $this ActivationLogController */
/* @var $model ActivationLog */

$this->breadcrumbs=array(
	'Activation Logs'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ActivationLog', 'url'=>array('index')),
	array('label'=>'Create ActivationLog', 'url'=>array('create')),
	array('label'=>'View ActivationLog', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage ActivationLog', 'url'=>array('admin')),
);
?>

<h1>Update ActivationLog <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>