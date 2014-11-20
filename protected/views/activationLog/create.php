<?php
/* @var $this ActivationLogController */
/* @var $model ActivationLog */

$this->breadcrumbs=array(
	'Activation Logs'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ActivationLog', 'url'=>array('index')),
	array('label'=>'Manage ActivationLog', 'url'=>array('admin')),
);
?>

<h1>Create ActivationLog</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>