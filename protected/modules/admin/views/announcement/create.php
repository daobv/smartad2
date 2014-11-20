
<div class="content">
    <div class="title"><h5>Thông Báo</h5>
        <div class="button" style="float:right">
            <?php echo CHtml::link(CHtml::button('Danh Sách'),Yii::app()->createUrl('admin/announcement/admin')); ?>
        </div>
    </div>
    <div class="table">
        <?php $this->renderPartial('_form', array('model'=>$model)); ?>
    </div>
</div>