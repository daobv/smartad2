<?php
/* @var $this ActivationIpController */
/* @var $model ActivationIp */

$this->breadcrumbs=array(
	'Activation Ips'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ActivationIp', 'url'=>array('index')),
	array('label'=>'Create ActivationIp', 'url'=>array('create')),
	array('label'=>'View ActivationIp', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage ActivationIp', 'url'=>array('admin')),
);
?>

<h1>Update ActivationIp <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>