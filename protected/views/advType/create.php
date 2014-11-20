<?php
/* @var $this AdvTypeController */
/* @var $model AdvType */

$this->breadcrumbs=array(
	'Adv Types'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AdvType', 'url'=>array('index')),
	array('label'=>'Manage AdvType', 'url'=>array('admin')),
);
?>

<h1>Create AdvType</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>