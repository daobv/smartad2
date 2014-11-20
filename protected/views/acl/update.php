<?php
/* @var $this AclController */
/* @var $model Acl */

$this->breadcrumbs=array(
	'Acls'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Acl', 'url'=>array('index')),
	array('label'=>'Create Acl', 'url'=>array('create')),
	array('label'=>'View Acl', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Acl', 'url'=>array('admin')),
);
?>

<h1>Update Acl <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>