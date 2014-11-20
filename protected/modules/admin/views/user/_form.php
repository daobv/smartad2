<?php
/* @var $this UserController */
/* @var $model User */
/* @var $form CActiveForm */
$status = $model->isNewRecord ? 'Tạo Mới ' : 'Cập Nhật ';
?>
<div class="content">
    <div class="title"><h5><?php echo $status; ?>Thành Viên <?php echo ucfirst($model->username); ?></h5></div>
    <div class="form">

        <?php $form = $this->beginWidget('CActiveForm', array(
            'id' => 'user-form',
            // Please note: When you enable ajax validation, make sure the corresponding
            // controller action is handling ajax validation correctly.
            // There is a call to performAjaxValidation() commented in generated controller code.
            // See class documentation of CActiveForm for details on this.
            'enableAjaxValidation' => false,
        )); ?>

        <fieldset>
            <div class="widget first">
                <div class="head"><h5 class="iList">Thông Tin Đăng Nhập</div>
                <?php echo $form->errorSummary($model); ?>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'username'); ?></label>
                    <div class="formRight"><?php
                        echo $form->textField($model, 'username',
                            array('size' => 60, 'maxlength' => 255)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'username'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'password'); ?></label>
                    <div class="formRight"><?php echo $form->passwordField($model, 'password',
                            array('size' => 60, 'maxlength' => 255)); ?>
                    </div>
                    <div class="fix"><?php echo $form->error($model, 'password'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'email'); ?></label>
                    <div class="formRight"><?php echo $form->textField($model, 'email',
                            array('size' => 60, 'maxlength' => 255)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'email'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'user_role'); ?></label>
                    <div class="formRight"><?php echo $form->dropDownList($model, 'user_role'
                            ,CHtml::listData(UserRole::model()->findAll(),'id','role_name'),array('prompt'=>'None')); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'user_role'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'user_group'); ?></label>
                    <div class="formRight"><?php echo $form->dropDownList($model, 'user_group',
                            CHtml::listData(UserGroup::model()->findAll(),'id','group_name'),array('prompt'=>'None')); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'user_group'); ?></div>
                </div>
                <div class="widget first">
                    <div class="head"><h5 class="iList">Thông Tin Cá Nhân</div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'full_name'); ?></label>
                        <div class="formRight"><?php echo $form->textField($model['info'],'full_name',array('size'=>60,'maxlength'=>255)); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'full_name'); ?></div>
                    </div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'job'); ?></label>
                        <div class="formRight"><?php echo $form->textField($model['info'],'job',array('size'=>60,'maxlength'=>255)); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'job'); ?></div>
                    </div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'company'); ?></label>
                        <div class="formRight"><?php echo $form->textField($model['info'],'company',array('size'=>60,'maxlength'=>255)); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'company'); ?></div>
                    </div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'address'); ?></label>
                        <div class="formRight"><?php echo $form->textField($model['info'],'address',array('size'=>60,'maxlength'=>255)); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'address'); ?></div>
                    </div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'city'); ?></label>
                        <div class="formRight"><?php echo $form->textField($model['info'],'city',array('size'=>60,'maxlength'=>255)); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'city'); ?></div>
                    </div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'country'); ?></label>
                        <div class="formRight"><?php echo $form->textField($model['info'],'country',array('size'=>60,'maxlength'=>255)); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'country'); ?></div>
                    </div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'phone_number'); ?></label>
                        <div class="formRight"><?php echo $form->textField($model['info'],'phone_number',array('size'=>60,'maxlength'=>255)); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'phone_number'); ?></div>
                    </div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'user_type'); ?></label>
                        <div class="formRight"><?php echo $form->dropDownList($model['info'],'user_type',UserInfo::model()->getUserType(),array('class'=>'form-control','placeholder'=>'Bạn là')); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'user_type'); ?></div>
                    </div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'store_channel'); ?></label>
                        <div class="formRight"><?php echo $form->textField($model['info'],'store_channel',array('size'=>60,'maxlength'=>255)); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'store_channel'); ?></div>
                    </div>
                    <div class="rowElem">
                        <label><?php echo $form->labelEx($model['info'],'reference'); ?></label>
                        <div class="formRight"><?php echo $form->textField($model['info'],'reference',array('size'=>60,'maxlength'=>255)); ?></div>
                        <div class="fix"><?php echo $form->error($model['info'],'reference'); ?></div>
                    </div>
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