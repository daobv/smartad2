<?php
/* @var $this InteractionInfoController */
/* @var $model InteractionInfo */

$this->breadcrumbs=array(
	'Interaction Infos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List InteractionInfo', 'url'=>array('index')),
	array('label'=>'Manage InteractionInfo', 'url'=>array('admin')),
);
?>

<h1>Create InteractionInfo</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>