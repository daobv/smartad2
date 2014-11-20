<div class="content">
    <div class="title"><h5>Xem slider <?php echo $model->slider_id; ?></h5></div>
    <div class="widget first">
        <div class="head"><h5 class="iList">Thông tin tài khoản</div>

        <?php $this->widget('zii.widgets.CDetailView', array(
            'data'=>$model,
            'attributes'=>array(
                'slider_id',
                'name',
                array(
                    'name'=>"image_url",
                    'type'=>'raw',
                    'value'=>CHtml::image($model->image_url,$model->name,array("style"=>"height:80px;"))
                ),
                'redirect_url',
                array(
                    'name'=>"is_show",
                    'type'=>'raw',
                    'value'=>$model->getStautsText($model->is_show)
                ),
                'created_date',
            ),
        )); ?>
    </div>
</div>