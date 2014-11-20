<?php
/* @var $this AdvApperanceController */
/* @var $model AdvApperance */

$this->breadcrumbs=array(
	'Adv Apperances'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AdvApperance', 'url'=>array('index')),
	array('label'=>'Create AdvApperance', 'url'=>array('create')),
	array('label'=>'View AdvApperance', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage AdvApperance', 'url'=>array('admin')),
);
?>

<h1>Update AdvApperance <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>