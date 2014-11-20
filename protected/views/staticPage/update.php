<?php
/* @var $this StaticPageController */
/* @var $model StaticPage */

$this->breadcrumbs=array(
	'Static Pages'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List StaticPage', 'url'=>array('index')),
	array('label'=>'Create StaticPage', 'url'=>array('create')),
	array('label'=>'View StaticPage', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage StaticPage', 'url'=>array('admin')),
);
?>

<h1>Update StaticPage <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>