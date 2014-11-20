<?php
/* @var $this InteractionInfoController */
/* @var $model InteractionInfo */

$this->breadcrumbs=array(
	'Interaction Infos'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List InteractionInfo', 'url'=>array('index')),
	array('label'=>'Create InteractionInfo', 'url'=>array('create')),
	array('label'=>'Update InteractionInfo', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete InteractionInfo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage InteractionInfo', 'url'=>array('admin')),
);
?>

<h1>View InteractionInfo #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'interaction_id',
		'status',
		'ref_code',
		'imei',
		'time',
		'os',
		'ip',
		'phone_number',
		'telco',
		'hash_code',
	),
)); ?>
