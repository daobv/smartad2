<?php
/* @var $this SettingController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Settings',
);

$this->menu=array(
	array('label'=>'Create Setting', 'url'=>array('create')),
	array('label'=>'Manage Setting', 'url'=>array('admin')),
);
?>
<div class="content">
    <div class="title"><h5>Cấu hình chung</h5></div>

    <?php echo $this->renderPartial('_form', array('models'=>$models)); ?>
</div>