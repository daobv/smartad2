<?php
/* @var $this AclController */
/* @var $model Acl */

$this->breadcrumbs=array(
	'Acls'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Acl', 'url'=>array('index')),
	array('label'=>'Manage Acl', 'url'=>array('admin')),
);
?>

<h1>Create Acl</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>