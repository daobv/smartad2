<?php
/* @var $this AdvStatusController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Adv Statuses',
);

$this->menu=array(
	array('label'=>'Create AdvStatus', 'url'=>array('create')),
	array('label'=>'Manage AdvStatus', 'url'=>array('admin')),
);
?>

<h1>Adv Statuses</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
