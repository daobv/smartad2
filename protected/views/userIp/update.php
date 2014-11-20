<?php
/* @var $this UserIpController */
/* @var $model UserIp */

$this->breadcrumbs=array(
	'User Ips'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List UserIp', 'url'=>array('index')),
	array('label'=>'Create UserIp', 'url'=>array('create')),
	array('label'=>'View UserIp', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage UserIp', 'url'=>array('admin')),
);
?>

<h1>Update UserIp <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>