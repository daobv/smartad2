<?php
/* @var $this AdvApperanceController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Adv Apperances',
);

$this->menu=array(
	array('label'=>'Create AdvApperance', 'url'=>array('create')),
	array('label'=>'Manage AdvApperance', 'url'=>array('admin')),
);
?>

<h1>Adv Apperances</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
