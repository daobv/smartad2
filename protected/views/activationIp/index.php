<?php
/* @var $this ActivationIpController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Activation Ips',
);

$this->menu=array(
	array('label'=>'Create ActivationIp', 'url'=>array('create')),
	array('label'=>'Manage ActivationIp', 'url'=>array('admin')),
);
?>

<h1>Activation Ips</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
