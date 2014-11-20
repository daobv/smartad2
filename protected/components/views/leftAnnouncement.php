<div class="content-news-db">
    <div class="news-dansboad">
        <h4 style="margin-top: 0px;"><i class="fa fa-list "> </i> Thông Báo </h4>
        <?php $this->widget('zii.widgets.grid.CGridView', array(
            'dataProvider'=>$model->search(),
            'htmlOptions'=>array('class'=>'list-news','id'=>'list-news','style'=>'padding-bottom:20px'),
            'summaryText' => '',
            'rowCssClass'=>array('gradeA odd', 'gradeA even'),
            'columns'=>array(
                array(
                    'type'=>'raw',
                    'value'=>'CHtml::link($data->title,"/thong-bao/".$data->slug,array("style"=>"padding-left:15px;padding-bottom:10px"))',
                     'headerHtmlOptions'=>array('style'=>'width:0%; display:none'),
                    'htmlOptions'=>array('class'=>'fa fa-star-o'),
                )
            ),
        )); ?>
    </div>
</div>
