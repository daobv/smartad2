<?php
/* @var $this ActivationIpController */
/* @var $model ActivationIp */

$this->breadcrumbs=array(
	'Activation Ips'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ActivationIp', 'url'=>array('index')),
	array('label'=>'Manage ActivationIp', 'url'=>array('admin')),
);
?>

<h1>Create ActivationIp</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>