<?php
/* @var $this MerchantController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Merchants',
);

$this->menu=array(
	array('label'=>'Create Merchant', 'url'=>array('create')),
	array('label'=>'Manage Merchant', 'url'=>array('admin')),
);
?>

<h1>Merchants</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
