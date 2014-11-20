<?php
/* @var $this InteractionController */
/* @var $model Interaction */

$this->breadcrumbs=array(
	'Interactions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Interaction', 'url'=>array('index')),
	array('label'=>'Manage Interaction', 'url'=>array('admin')),
);
?>

<h1>Create Interaction</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>