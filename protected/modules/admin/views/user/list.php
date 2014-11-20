<div class="content">
    <div class="title"><h5>Danh Sách Thành Viên</h5></div>

    <div class="widget">
        <?php $this->widget('zii.widgets.grid.CGridView', array(
            'dataProvider'=>$model->search(),
            'filter'=> $model,
            'htmlOptions'=>array('style'=>'padding:0;'),
            'itemsCssClass'=>'display',
            'filterCssClass'=>'ui-state-default',
            'summaryCssClass' => 'head',
            'summaryText' => '<h5 class="iFrames">Danh sách thành viên</h5><label>Hiển thị từ {start} đến {end} trên {count} bản ghi</label>',
            'rowCssClass'=>array('gradeA odd', 'gradeA even'),
            'pagerCssClass'=>'dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers',
            'columns'=>array(
                array(
                    'name'=>'id',
                    'value'=>'1 + $row + ($this->grid->dataProvider->pagination->currentPage * $this->grid->dataProvider->pagination->pageSize)',
                    'filter'=>false,
                ),
                'username',
                'email',
                array(
                    'header'=>'Full Name',
                    'value'=>'$data["info"]["full_name"]'
                ),
                array(
                    'header'=>'Role',
                    'value'=>'$data["role"]["role_name"]'
                ),
                array(
                    'class'=>'CButtonColumn',
                    'htmlOptions' =>array('style'=>'width:75px'),
                    'template'=>'{revenue}{view}{update}{delete}',
                    'buttons'=>array(
                        'revenue' => array(
                            'label'=>'Revenue',
                            'imageUrl'=>Yii::app()->theme->baseUrl.'/images/icons/topnav/tasks.png',
                            'url'=>'Yii::app()->createUrl("admin/user/revenue", array("id"=>$data->id))',
                        ),
                    )
                ),
            ),
        )); ?>
    </div>
</div>