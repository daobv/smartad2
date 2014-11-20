<div class="content">
    <div class="title"><h5>Quản lý slider</h5>
        <div class="button" style="float:right">
            <?php echo CHtml::link(CHtml::button('Tạo mới'), Yii::app()->createUrl('admin/slider/create')); ?>
        </div>
    </div>
    <div class="table">
        <?php $this->widget('zii.widgets.grid.CGridView', array(
            'id' => 'slider-grid',
            'dataProvider' => $model->search(),
            'filter' => $model,
            'itemsCssClass' => 'display',
            'filterCssClass' => 'ui-state-default',
            'summaryCssClass' => 'head',
            'summaryText' => '<h5 class="iFrames">Quản lý slider</h5><label>Hiển thị từ {start} đến {end} trên {count} bản ghi</label>',
            'rowCssClass' => array('gradeA odd', 'gradeA even'),
            'pagerCssClass' => 'dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers',
            'columns' => array(
                'slider_id',
                'name',
                array(
                    "name" => "image_url",
                    'type' => 'html',
                    "value" => 'CHtml::link(CHtml::image($data->image_url,$data->name,array("style"=>"height:80px;"))
                    ,$data->image_url,array("id"=>"user-image"))',
                    'filter' => ""
                ),
                'redirect_url',
                array(
                    'name'=>"is_show",
                    'header'=>'Status',
                    'type'=>'raw',
                    'value' => 'Slider::model()->getStautsText($data->is_show)',
                    'filter'=> Slider::model()->getStatusDropdownList(),
                ),
                'created_date',
                array(
                    'class' => 'CButtonColumn',
                ),
            ),
        )); ?>
    </div>
</div>
