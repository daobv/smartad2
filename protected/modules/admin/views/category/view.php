<div class="content">
    <div class="title"><h5>Xem danh mục #<?php echo ucfirst($model->name); ?></h5></div>

    <?php $this->widget('zii.widgets.CDetailView', array(
        'data'=>$model,
        'attributes'=>array(
            'id',
            array(
                'label'=>'Parent Category',
                'type'=>'raw',
                'value'=>$model->getParentCategoryName()
            ),
            'name',
            array(
                'label'=>'Active',
                'type'=>'raw',
                'value'=>$model->getActive()
            ),
            'order',
        ),
    )); ?>
    <div class="rowElem buttons">
        <?php echo CHtml::Button('edit', array('submit'=>Yii::app()->createUrl('admin/category/update', array('id'=>$model->id))));?>
        <?php echo CHtml::Button('delete', array('submit'=>Yii::app()->createUrl('admin/category/delete', array('id'=>$model->id)), 'confirm'=>'Are you sure?','name'=>'accept'));?>

    </div>

</div>
