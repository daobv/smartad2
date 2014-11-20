<?php
/* @var $this UserIpController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'User Ips',
);

$this->menu=array(
	array('label'=>'Create UserIp', 'url'=>array('create')),
	array('label'=>'Manage UserIp', 'url'=>array('admin')),
);
?>

<h1>User Ips</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
