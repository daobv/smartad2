<?php
/* @var $this InteractionInfoController */
/* @var $model InteractionInfo */

$this->breadcrumbs=array(
	'Interaction Infos'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List InteractionInfo', 'url'=>array('index')),
	array('label'=>'Create InteractionInfo', 'url'=>array('create')),
	array('label'=>'View InteractionInfo', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage InteractionInfo', 'url'=>array('admin')),
);
?>

<h1>Update InteractionInfo <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>