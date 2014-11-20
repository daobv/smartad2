<?php
/* @var $this MerchantStatisticController */
/* @var $model MerchantStatistic */

$this->breadcrumbs=array(
	'Merchant Statistics'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List MerchantStatistic', 'url'=>array('index')),
	array('label'=>'Manage MerchantStatistic', 'url'=>array('admin')),
);
?>

<h1>Create MerchantStatistic</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>