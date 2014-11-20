<?php
/* @var $this PaymentInfoController */
/* @var $model PaymentInfo */

$this->breadcrumbs=array(
	'Payment Infos'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List PaymentInfo', 'url'=>array('index')),
	array('label'=>'Create PaymentInfo', 'url'=>array('create')),
	array('label'=>'View PaymentInfo', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage PaymentInfo', 'url'=>array('admin')),
);
?>

<h1>Update PaymentInfo <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>