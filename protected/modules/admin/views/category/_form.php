<div class="form">

    <?php $form=$this->beginWidget('CActiveForm', array(
        'id'=>'category-form',
        'enableAjaxValidation'=>false,
    )); ?>
    <fieldset>
        <div class="widget first">
            <div class="head"><h5 class="iList">Tất cả mọi trường có dấu <span class="required">*</span> đều bắt buộc.</h5></div>

            <?php echo $form->errorSummary($model); ?>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model,'parent_id'); ?></label>
                <div class="formRight"><?php echo $form->dropDownList($model,'parent_id',$model->getDropdownCategory(),array('selected'=>$model->parent_id)); ?></div>
                <div class="fix"><?php echo $form->error($model,'parent_id'); ?></div>
            </div>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model,'name'); ?></label>
                <div class="formRight"><?php echo $form->textField($model,'name',array('size'=>45,'maxlength'=>45)); ?></div>
                <div class="fix"><?php echo $form->error($model,'name'); ?></div>
            </div>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model,'slug'); ?></label>
                <div class="formRight"><?php echo $form->textField($model,'slug',array('size'=>45,'placeholder'=>'(Để trống nếu muốn tự động tạo)')); ?></div>
                <div class="fix"><?php echo $form->error($model,'slug'); ?></div>
            </div>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model,'order'); ?></label>
                <div class="formRight"><?php echo $form->textField($model,'order',array('size'=>35,'placeholder'=>'(Để trống nếu muốn tự động sắp xếp)')); ?></div>
                <div class="fix"><?php echo $form->error($model,'order'); ?></div>
            </div>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model,'active'); ?></label>
                <div class="formRight"><?php echo $form->radioButtonList($model,'active',array(0=>'Non active',1=>'Active')); ?></div>
                <div class="fix"><?php echo $form->error($model,'active'); ?></div>
            </div>

            <div class="rowElem buttons">
                <?php echo CHtml::submitButton($model->isNewRecord ? 'Tạo và quay lại' : 'Lưu và quay lại', array('name'=>'submit_back')); ?>
                <?php echo CHtml::submitButton($model->isNewRecord ? 'Tạo và xem' : 'Lưu và xem', array('name'=>'submit')); ?>
                <?php echo CHtml::submitButton($model->isNewRecord ? 'Tạo tiếp' : 'Lưu và tạo tiếp', array('name'=>'submit_continue')); ?>
            </div>

            <?php $this->endWidget(); ?>
        </div>
    </fieldset>
</div><!-- form -->