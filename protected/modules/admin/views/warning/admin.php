<div class="content">
    <div class="title"><h5>Quản Lý Tin Nhắn Hệ Thống</h5>

        <div class="button" style="float:right">
            <?php echo CHtml::link(CHtml::button('Tạo mới'), Yii::app()->createUrl('admin/warning/create')); ?>
        </div>
    </div>
    <div class="table">
        <?php
        $this->widget('zii.widgets.grid.CGridView', array(
            'id' => 'warning-grid',
            'dataProvider' => $model->search(),
            'filter' => $model,
            'itemsCssClass' => 'display',
            'filterCssClass' => 'ui-state-default',
            'summaryCssClass' => 'head',
            'summaryText' => '<h5 class="iFrames">Danh Sách</h5><label>Hiển thị từ {start} đến {end} trên {count} bản ghi</label>',
            'rowCssClass' => array('gradeA odd', 'gradeA even'),
            'pagerCssClass' => 'dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers',
            'columns' => array(
                'message',
                'create_at',
                'expire_at',
                array(
                    'name'=>"author",
                    'type'=>'raw',
                    'value' => '',
                    'filter'=> "",
                ),
                array(
                    'name'=>"status",
                    'type'=>'raw',
                    'value' => 'StaticPage::model()->getStautsText($data->status)',
                    'filter'=> StaticPage::model()->getStatusDropdownList(),
                ),
                array(
                    'class' => 'CButtonColumn',
                ),
            ),
        )); ?>
    </div>
</div>
