<?php
/* @var $this ApplicationController */
/* @var $model Application */

?>
<div class="content">
    <div class="title"><h5>Ứng Dụng #<?php echo ucfirst($model->name); ?></h5></div>

    <div class="widget">
        <?php $this->widget('zii.widgets.CDetailView', array(
            'data' => $model,
            'attributes' => array(
                'name',
                array(
                    'name' => "image",
                    'type' => 'raw',
                    'value' => CHtml::image($model->image, $model->name, array('width' => '60px')), $model->image, array('id' => 'application-image'),
                ),
                array(
                    'name' => "app_code",
                    'type' => 'raw',
                    'value' => $model->app_code,
                ),
                array(
                    'name' => "short_description",
                    'type' => 'raw',
                    'value' => htmlspecialchars_decode($model->short_description),
                ),
                array(
                    'name' => "adv_type",
                    'type' => 'raw',
                    'value' => $model['type']['name'],
                ),
                array(
                    'name' => "platform_id",
                    'type' => 'raw',
                    'value' => $model->getPlatformText($model->platform_id),
                ),
                array(
                    'name' => "appearance_id",
                    'type' => 'raw',
                    'value' => $model['appearance']['name'],
                ),
                'link',
                'price',
                'area',
                'size',
                array(
                    'name' => "registered_date",
                    'type' => 'raw',
                    'value' => Yii::app()->dateFormatter->format("dd/M/yyyy", strtotime($model->registered_date)),
                ),
                array(
                    'name' => "from",
                    'type' => 'raw',
                    'value' => Yii::app()->dateFormatter->format("dd/M/yyyy", strtotime($model->from)),
                ),
                array(
                    'name' => "to",
                    'type' => 'raw',
                    'value' => Yii::app()->dateFormatter->format("dd/M/yyyy", strtotime($model->to)),
                ),
                array(
                    'name' => "status_id",
                    'type' => 'raw',
                    'value' => $model['status']['name'],
                ),
                array(
                    'name' => "content",
                    'type' => 'raw',
                    'value' => htmlspecialchars_decode($model->content),
                ),

            ),
        )); ?>
    </div>
</div>