<?php
/* @var $this PaymentInfoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Payment Infos',
);

$this->menu=array(
	array('label'=>'Create PaymentInfo', 'url'=>array('create')),
	array('label'=>'Manage PaymentInfo', 'url'=>array('admin')),
);
?>

<h1>Payment Infos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
