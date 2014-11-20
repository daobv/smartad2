<?php
/* @var $this MerchantStatisticController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Merchant Statistics',
);

$this->menu=array(
	array('label'=>'Create MerchantStatistic', 'url'=>array('create')),
	array('label'=>'Manage MerchantStatistic', 'url'=>array('admin')),
);
?>

<h1>Merchant Statistics</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
