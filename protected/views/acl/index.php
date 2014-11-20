<?php
/* @var $this AclController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Acls',
);

$this->menu=array(
	array('label'=>'Create Acl', 'url'=>array('create')),
	array('label'=>'Manage Acl', 'url'=>array('admin')),
);
?>

<h1>Acls</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
