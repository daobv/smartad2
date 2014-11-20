<?php
/* @var $this WarningController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Warnings',
);

$this->menu=array(
	array('label'=>'Create Warning', 'url'=>array('create')),
	array('label'=>'Manage Warning', 'url'=>array('admin')),
);
?>

<h1>Warnings</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
