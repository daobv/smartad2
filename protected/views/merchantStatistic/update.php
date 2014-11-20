<?php
/* @var $this MerchantStatisticController */
/* @var $model MerchantStatistic */

$this->breadcrumbs=array(
	'Merchant Statistics'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List MerchantStatistic', 'url'=>array('index')),
	array('label'=>'Create MerchantStatistic', 'url'=>array('create')),
	array('label'=>'View MerchantStatistic', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage MerchantStatistic', 'url'=>array('admin')),
);
?>

<h1>Update MerchantStatistic <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>