<?php
/* @var $this AdvStatusController */
/* @var $model AdvStatus */

$this->breadcrumbs=array(
	'Adv Statuses'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AdvStatus', 'url'=>array('index')),
	array('label'=>'Manage AdvStatus', 'url'=>array('admin')),
);
?>

<h1>Create AdvStatus</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>