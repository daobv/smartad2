<?php
/* @var $this MerchantController */
/* @var $model Merchant */

$this->breadcrumbs=array(
	'Merchants'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Merchant', 'url'=>array('index')),
	array('label'=>'Manage Merchant', 'url'=>array('admin')),
);
?>

<h1>Create Merchant</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>