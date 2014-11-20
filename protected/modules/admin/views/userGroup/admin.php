<?php
/* @var $this UserGroupController */
/* @var $model UserGroup */


?>
<div class="content">
    <div class="title"><h5>Danh Sách Nhóm</h5></div>
    <div class="widget">
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'user-group-grid',
	'dataProvider'=>$model->search(),
    'filter'=> $model,
    'htmlOptions'=>array('style'=>'padding:0;'),
    'itemsCssClass'=>'display',
    'filterCssClass'=>'ui-state-default',
    'summaryCssClass' => 'head',
    'summaryText' => '<h5 class="iFrames">Danh Sách Nhóm</h5><label>Hiển thị từ {start} đến {end} trên {count} bản ghi</label>',
    'rowCssClass'=>array('gradeA odd', 'gradeA even'),
    'pagerCssClass'=>'dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers',
	'columns'=>array(
		'group_name',
        array(
            'header'=>'Manager',
            'value' => '$data["user"]["username"]'
        ),
		array(
            'template'=>'{update}{delete}',
			'class'=>'CButtonColumn',
		),
	),
)); ?>
</div>