<?php
/* @var $this AdvStatusController */
/* @var $model AdvStatus */

$this->breadcrumbs=array(
	'Adv Statuses'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AdvStatus', 'url'=>array('index')),
	array('label'=>'Create AdvStatus', 'url'=>array('create')),
	array('label'=>'View AdvStatus', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage AdvStatus', 'url'=>array('admin')),
);
?>

<h1>Update AdvStatus <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>