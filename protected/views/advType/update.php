<?php
/* @var $this AdvTypeController */
/* @var $model AdvType */

$this->breadcrumbs=array(
	'Adv Types'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AdvType', 'url'=>array('index')),
	array('label'=>'Create AdvType', 'url'=>array('create')),
	array('label'=>'View AdvType', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage AdvType', 'url'=>array('admin')),
);
?>

<h1>Update AdvType <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>