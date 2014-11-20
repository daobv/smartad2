<?php
/* @var $this CategoryController */
/* @var $model Category */
?>

<h1>View Category #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'parent_id',
		'name',
		'slug',
		'order',
		'active',
	),
)); ?>
