<?php
/* @var $this UserGroupController */
/* @var $model UserGroup */
/* @var $form CActiveForm */
$status = $model->isNewRecord ? 'Tạo Mới ' : 'Cập Nhật ';
?>

<div class="content">
    <div class="title"><h5><?php echo $status; ?>Nhóm Thành Viên <?php echo ucfirst($model->group_name); ?></h5></div>
    <div class="form">

        <?php $form = $this->beginWidget('CActiveForm', array(
            'id' => 'user-group-form',
            // Please note: When you enable ajax validation, make sure the corresponding
            // controller action is handling ajax validation correctly.
            // There is a call to performAjaxValidation() commented in generated controller code.
            // See class documentation of CActiveForm for details on this.
            'enableAjaxValidation' => false,
        )); ?>

        <fieldset>
            <div class="widget first">
                <div class="head"><h5 class="iList">Thông Tin Nhóm</div>
                <?php echo $form->errorSummary($model); ?>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'group_name'); ?></label>
                    <div class="formRight"><?php echo $form->textField($model, 'group_name',
                            array('size' => 60, 'maxlength' => 255)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'group_name'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'manager'); ?></label>
                    <div class="formRight"><?php echo $form->dropDownList($model, 'manager',
                            CHtml::listData(User::model()->findAll(
                            ' user_role = 2 OR user_role = 3'
                        ),'id','username'),array('prompt'=>'None')); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'manager'); ?></div>
                </div>
                <div class="rowElem buttons">
                    <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
                </div>
            </div>
        </fieldset>
        <?php $this->endWidget(); ?>

    </div>
    <!-- form -->
</div>