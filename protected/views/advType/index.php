<?php
/* @var $this AdvTypeController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Adv Types',
);

$this->menu=array(
	array('label'=>'Create AdvType', 'url'=>array('create')),
	array('label'=>'Manage AdvType', 'url'=>array('admin')),
);
?>

<h1>Adv Types</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
