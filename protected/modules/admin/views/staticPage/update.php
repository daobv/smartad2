<div class="content">
    <div class="title"><h5>Chỉnh Sửa Trang <?php echo $model->title; ?></h5>

        <div class="button" style="float:right">
            <?php echo CHtml::link(CHtml::button('Danh Sách'), Yii::app()->createUrl('admin/staticPage/admin')); ?>
        </div>
    </div>
    <div class="table">
        <?php $this->renderPartial('_form', array('model' => $model)); ?>
    </div>
</div>