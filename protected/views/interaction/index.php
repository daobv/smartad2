<?php
/* @var $this InteractionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Interactions',
);

$this->menu=array(
	array('label'=>'Create Interaction', 'url'=>array('create')),
	array('label'=>'Manage Interaction', 'url'=>array('admin')),
);
?>

<h1>Interactions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
