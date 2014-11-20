<?php
/* @var $this SliderController */
/* @var $model Slider */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'slider-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
        'htmlOptions'=>array('enctype'=>'multipart/form-data'),
    )); ?>

    <fieldset>
        <div class="widget first">
            <div class="head"><h5 class="iList"><?php echo $model->isNewRecord ? 'Tạo Mới' : 'Sửa '?> Slider</div>
            <?php echo $form->errorSummary($model); ?>
            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'name'); ?></label>
                <div class="formRight"><?php echo $form->textField($model, 'name', array('size' => 45, 'maxlength' => 45)); ?></div>
                <div class="fix"><?php echo $form->error($model, 'name'); ?></div>
            </div>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'image_url'); ?></label>
                <div class="formRight"><?php echo $form->fileField($model, 'image_url', array('size' => 45, 'maxlength' => 45)); ?></div>
                <div class="fix"><?php echo $form->error($model, 'image_url'); ?></div>
            </div>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'redirect_url'); ?></label>
                <div class="formRight"><?php echo $form->textField($model, 'redirect_url', array('size' => 45, 'maxlength' => 45)); ?></div>
                <div class="fix"><?php echo $form->error($model, 'redirect_url'); ?></div>
            </div>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'is_show'); ?></label>
                <div class="formRight"><?php echo $form->dropDownList($model, 'is_show',$model->getStatusDropdownList()); ?></div>
                <div class="fix"><?php echo $form->error($model, 'is_show'); ?></div>
            </div>
            <div class="rowElem buttons">
                    <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
            </div>
        </div>
    </fieldset>
    <?php $this->endWidget(); ?>

</div><!-- form -->