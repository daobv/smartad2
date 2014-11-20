<?php
/* @var $this UserIpController */
/* @var $model UserIp */

$this->breadcrumbs=array(
	'User Ips'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List UserIp', 'url'=>array('index')),
	array('label'=>'Manage UserIp', 'url'=>array('admin')),
);
?>

<h1>Create UserIp</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>