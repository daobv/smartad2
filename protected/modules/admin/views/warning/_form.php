<?php
/* @var $this WarningController */
/* @var $model Warning */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'warning-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => true,
    )); ?>
    <fieldset>
        <div class="widget first">
            <div class="head"><h5 class="iList"><?php echo $model->isNewRecord ? 'Tạo Mới' : 'Sửa ' ?> Tin Nhắn</div>
            <?php echo $form->errorSummary($model); ?>
            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'message'); ?></label>
                <div class="formRight"><?php echo $form->textArea($model, 'message', array('rows' => 6, 'cols' => 50)); ?></div>
                <div class="fix"><?php echo $form->error($model, 'message'); ?></div>
            </div>
            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'expire_at'); ?></label>
                <div class="formRight">
                    <?php
                    $this->widget('application.extensions.timepicker.EJuiDateTimePicker', array(
                        'model' => $model,
                        'attribute' => 'expire_at',
                        'options' => array(
                            'timeFormat' => 'hh:mm:ss',
                            'dateFormat' => 'yy/mm/dd',
                            'changeMonth' => true,
                            'changeYear' => true,
                        ),
                    ));
                    ?>
                </div>
                <div class="fix"><?php echo $form->error($model, 'expire_at'); ?></div>
            </div>
            <div class="rowElem">
                <label> <?php echo $form->labelEx($model, 'note'); ?></label>
                <div class="formRight"><?php echo $form->textField($model, 'note', array('size' => 60, 'maxlength' => 255)); ?></div>
                <div class="fix"><?php echo $form->error($model, 'note'); ?></div>
            </div>
            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'status'); ?></label>
                <div class="formRight"><?php echo $form->dropDownList($model, 'status',StaticPage::model()->getStatusDropdownList()); ?></div>
                <div class="fix"><?php echo $form->error($model, 'status'); ?></div>
            </div>

            <div class="rowElem">
                <label></label>
                <div class="formRight"><?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?></div>
                <div class="fix"></div>
            </div>
        </div>
    </fieldset>
    <?php $this->endWidget(); ?>

</div><!-- form -->
