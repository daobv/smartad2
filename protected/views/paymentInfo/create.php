<?php
/* @var $this PaymentInfoController */
/* @var $model PaymentInfo */

$this->breadcrumbs=array(
	'Payment Infos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List PaymentInfo', 'url'=>array('index')),
	array('label'=>'Manage PaymentInfo', 'url'=>array('admin')),
);
?>

<h1>Create PaymentInfo</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>