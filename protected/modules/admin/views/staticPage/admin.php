<div class="content">
    <div class="title"><h5>Các Trang Có Nội Dung Tĩnh</h5>
        <div class="button" style="float:right">
            <?php echo CHtml::link(CHtml::button('Tạo mới'),Yii::app()->createUrl('admin/staticPage/create')); ?>
        </div>
    </div>
    <div class="table">

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'static-page-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
    'itemsCssClass'=>'display',
    'filterCssClass'=>'ui-state-default',
    'summaryCssClass' => 'head',
    'summaryText' => '<h5 class="iFrames">Danh Sách</h5><label>Hiển thị từ {start} đến {end} trên {count} bản ghi</label>',
    'rowCssClass'=>array('gradeA odd', 'gradeA even'),
    'pagerCssClass'=>'dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers',

    'columns'=>array(
		'title',
		'slug',
		'description',
        array(
            "name"=>"date",
            "value" => $model->date,
            'filter'=>""
        ),
        array(
            'name'=>"type",
            'header'=>'Type',
            'type'=>'raw',
            'value' => 'StaticPage::model()->getTypeText($data->type)',
            'filter'=> StaticPage::model()->getTypeDropdownList(),
        ),
        array(
            'name'=>"boolean",
            'header'=>'Status',
            'type'=>'raw',
            'value' => 'StaticPage::model()->getStautsText($data->boolean)',
            'filter'=> StaticPage::model()->getStatusDropdownList(),
        ),
		array(
			'class'=>'CButtonColumn',
            'template' => '{update}{delete}',
		),
	),
)); ?>
</div>
</div>