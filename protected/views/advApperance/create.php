<?php
/* @var $this AdvApperanceController */
/* @var $model AdvApperance */

$this->breadcrumbs=array(
	'Adv Apperances'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AdvApperance', 'url'=>array('index')),
	array('label'=>'Manage AdvApperance', 'url'=>array('admin')),
);
?>

<h1>Create AdvApperance</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>