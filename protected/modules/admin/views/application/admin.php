<?php
/* @var $this ApplicationController */
/* @var $model Application */
?>
<div class="content">
    <div class="title"><h5>Danh Sách Ứng Dụng</h5></div>
    <div class="widget">
        <?php $this->widget('zii.widgets.grid.CGridView', array(
            'id' => 'application-grid',
            'dataProvider' => $model->search(),
            'filter' => $model,
            'htmlOptions'=>array('style'=>'padding:0;'),
            'itemsCssClass'=>'display',
            'filterCssClass'=>'ui-state-default',
            'summaryCssClass' => 'head',
            'summaryText' => '<h5 class="iFrames">Danh Sách Ứng Dụng </h5><label>Hiển thị từ {start} đến {end} trên {count} bản ghi</label>',
            'rowCssClass'=>array('gradeA odd', 'gradeA even'),
            'pagerCssClass'=>'dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers',
            'columns' => array(
                'name',
                array(
                    "name" => "image",
                    'type' => 'html',
                    "value" => 'CHtml::link(CHtml::image($data->image,$data->name,array("style"=>"height:40px;"))
                    ,$data->image,array("id"=>"application-image"))',
                    'filter' => "",
                    'htmlOptions' => array('style' => 'width: 40px;height:20px'),
                ),
                array(
                    'name'=>'status_id',
                    'htmlOptions' =>array('style'=>'width:50px'),
                    'value'=>'$data["status"]["name"]',
                    'filter'=>CHtml::listData(AdvStatus::model()->findAll(), 'id', 'name')
                ),
                'app_code',
                array(
                    'name'=>'appearance_id',
                    'htmlOptions' =>array('style'=>'width:50px'),
                    'value'=>'$data["appearance"]["name"]',
                    'filter'=>CHtml::listData(AdvApperance::model()->findAll(), 'id', 'name')
                ),
                /*
                'appearance_id',
                'area',
                'from',
                'to',
                'status_id',
                'content',
                'link',*/
                array(
                    'name'=>'price',
                    'htmlOptions' =>array('style'=>'width:20px'),
                    'filter'=>"",
                    'value'=>$model->price,
                ),
                array(
                    'name'=>'size',
                    'htmlOptions' =>array('style'=>'width:20px'),
                    'filter'=>"",
                    'value'=>$model->size,
                ),
                array(
                    'name'=>'registered_date',
                    'htmlOptions' =>array('style'=>'width:60px'),
                    'filter'=>"",
                    'value'=>'Yii::app()->dateFormatter->format("dd/M/yyyy",strtotime($data->registered_date))'
                ),
                array(
                    'class' => 'CButtonColumn',
                ),
            ),
        )); ?>
    </div>
</div>
