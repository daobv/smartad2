<div class="table">
    <?php $this->widget('zii.widgets.grid.CGridView', array(
        'dataProvider'=>$model->search(),
        'filter'=> $model,
        'htmlOptions'=>array('style'=>'padding:0;'),
        'itemsCssClass'=>'display',
        'filterCssClass'=>'ui-state-default',
        'summaryCssClass' => 'head',
        'summaryText' => '<h5 class="iFrames">Liệt kê danh mục</h5><label>Hiển thị từ {start} đến {end} trên {count} bản ghi</label>',
        'rowCssClass'=>array('gradeA odd', 'gradeA even'),
        'pagerCssClass'=>'dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers',
        'columns'=>array(
            array(
                'name'=>'id',
                'value'=>'1 + $row + ($this->grid->dataProvider->pagination->currentPage * $this->grid->dataProvider->pagination->pageSize)',
                'filter'=>false,
            ),
            array(
                'name'=>'name',
                'type'=>'raw',
                'value'=>'CHtml::link(CHtml::encode($data->name), $data->getAdminUrl())'
            ),
            array(
                'name'=>'parent_id',
                'filter'=>$model->getDropdownCategory(),
                'value'=>'$data->getParentCategoryName()',
            ),
            array(
                'name'=>'slug',
                'type'=>'raw',
                'value'=>'CHtml::link(CHtml::encode($data->slug), $data->getAdminUrl())'
            ),
            array(
                'name'=>'active',
                'filter'=>array(1=>'Active', 0=>'Non Active'),
                'value'=>'$data->getActive()',
            ),
            array(
                'filter'=>false,
                'name'=>'order',
                'value'=>'$data->order',
            ),
            array(
                'class'=>'CButtonColumn'
            ),
        ),
    )); ?>
</div>

