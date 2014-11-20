<?php
/* @var $this ActivationLogController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Activation Logs',
);

$this->menu=array(
	array('label'=>'Create ActivationLog', 'url'=>array('create')),
	array('label'=>'Manage ActivationLog', 'url'=>array('admin')),
);
?>

<h1>Activation Logs</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
