<?php
/* @var $this InteractionInfoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Interaction Infos',
);

$this->menu=array(
	array('label'=>'Create InteractionInfo', 'url'=>array('create')),
	array('label'=>'Manage InteractionInfo', 'url'=>array('admin')),
);
?>

<h1>Interaction Infos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
