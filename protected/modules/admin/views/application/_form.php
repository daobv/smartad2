<?php
/* @var $this ApplicationController */
/* @var $model Application */
/* @var $form CActiveForm */
$status = $model->isNewRecord ? 'Tạo Mới ' : 'Cập Nhật ';
?>
<div class="content">
    <div class="title"><h5><?php echo $status; ?> Ứng Dụng <?php echo ucfirst($model->name); ?></h5></div>
    <div class="form">

        <?php $form = $this->beginWidget('CActiveForm', array(
            'id' => 'application-form',
            // Please note: When you enable ajax validation, make sure the corresponding
            // controller action is handling ajax validation correctly.
            // There is a call to performAjaxValidation() commented in generated controller code.
            // See class documentation of CActiveForm for details on this.
            'enableAjaxValidation' => false,
        )); ?>
        <fieldset>
            <div class="widget first">
                <div class="head"><h5 class="iList">Tất cả mọi trường có dấu <span class="required">*</span> đều bắt
                        buộc.
                    </h5></div>

                <?php echo $form->errorSummary($model); ?>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'name'); ?></label>

                    <div
                        class="formRight"><?php echo $form->textField($model, 'name', array('size' => 60, 'maxlength' => 255)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'name'); ?></div>
                </div>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'app_code'); ?></label>

                    <div
                        class="formRight"><?php echo $form->textField($model, 'app_code', array('size' => 60, 'maxlength' => 255)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'app_code'); ?></div>
                </div>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'image'); ?></label>

                    <div
                        class="formRight"><?php echo $form->textField($model, 'image', array('size' => 60, 'maxlength' => 255)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'image'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'short_description'); ?></label>

                    <div
                        class="formRight"><?php echo $form->textArea($model, 'short_description', array('rows' => 6, 'cols' => 58)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'short_description'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'adv_type'); ?></label>

                    <div
                        class="formRight"><?php echo $form->dropDownList($model, 'adv_type', CHtml::listData(AdvType::model()->findAll(), 'id', 'name'), array('style' => 'min-width:100px')); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'adv_type'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'platform_id'); ?></label>

                    <div
                        class="formRight"><?php echo $form->dropDownList($model, 'platform_id', Application::model()->getPlatform(), array('style' => 'min-width:100px')); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'platform_id'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'appearance_id'); ?></label>

                    <div
                        class="formRight"><?php echo $form->dropDownList($model, 'appearance_id', CHtml::listData(AdvApperance::model()->findAll(), 'id', 'name'), array('style' => 'min-width:100px')); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'appearance_id'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'area'); ?></label>

                    <div
                        class="formRight"><?php echo $form->textField($model, 'area', array('size' => 60, 'maxlength' => 255)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'area'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'from'); ?></label>

                    <div class="formRight">
                        <?php
                        $this->widget('application.extensions.timepicker.EJuiDateTimePicker', array(
                            'model' => $model,
                            'attribute' => 'from',
                            'options' => array(
                                'timeFormat' => 'hh:mm:ss',
                                'dateFormat' => 'yy/mm/dd',
                                'changeMonth' => true,
                                'changeYear' => true,
                            ),
                        ));
                        ?>
                    </div>
                    <div class="fix"><?php echo $form->error($model, 'from'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'to'); ?></label>

                    <div class="formRight">
                        <?php
                        $this->widget('application.extensions.timepicker.EJuiDateTimePicker', array(
                            'model' => $model,
                            'attribute' => 'to',
                            'options' => array(
                                'timeFormat' => 'hh:mm:ss',
                                'dateFormat' => 'yy/mm/dd',
                                'changeMonth' => true,
                                'changeYear' => true,
                            ),
                        ));
                        ?>
                    </div>
                    <div class="fix"> <?php echo $form->error($model, 'to'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'status_id'); ?></label>

                    <div
                        class="formRight"><?php echo $form->dropDownList($model, 'status_id', CHtml::listData(AdvStatus::model()->findAll(), 'id', 'name')); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'status_id'); ?></div>
                </div>

                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'content'); ?>
                        <div
                            class="formRight"><?php echo $form->textArea($model, 'content', array('rows' => 6, 'cols' => 58,'class'=>'tinyMCE')); ?></div>
                        <div class="fix"><?php echo $form->error($model, 'content'); ?></div>
                </div>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'policy'); ?>
                        <div
                            class="formRight"><?php echo $form->textArea($model, 'policy', array('rows' => 6, 'cols' => 58,'class'=>'tinyMCE')); ?></div>
                        <div class="fix"><?php echo $form->error($model, 'policy'); ?></div>
                </div>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'link'); ?></label>

                    <div
                        class="formRight"><?php echo $form->textField($model, 'link', array('size' => 60, 'maxlength' => 255)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'link'); ?></div>
                </div>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'file_url'); ?></label>

                    <div
                        class="formRight"><?php echo $form->textField($model, 'file_url', array('size' => 60, 'maxlength' => 255)); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'file_url'); ?></div>
                </div>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'price'); ?></label>

                    <div class="formRight"><?php echo $form->textField($model, 'price'); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'price'); ?></div>
                </div>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'merchant_price'); ?></label>

                    <div class="formRight"><?php echo $form->textField($model, 'merchant_price'); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'merchant_price'); ?></div>
                </div>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'size'); ?></label>

                    <div class="formRight"><?php echo $form->textField($model, 'size'); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'size'); ?></div>
                </div>
                <div class="rowElem">
                    <label><?php echo $form->labelEx($model, 'merchant_id'); ?></label>

                    <div class="formRight"><?php echo $form->dropDownList($model, 'merchant_id',CHtml::listData(User::model()->findAll(array('condition'=>'user_role=:role',"params"=>array(":role"=>7))), 'id', 'username')); ?></div>
                    <div class="fix"><?php echo $form->error($model, 'merchant_id'); ?></div>
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
<script type="text/javascript"
        src="<?php echo Setting::getSetting('site_url'); ?>/resource/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
    tinymce.init({
        selector: "textArea.tinyMCE",
        height: 300,
        width: 600,
        theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough," +
            "|,justifyleft,justifycenter,justifyright,justifyfull," +
            "|,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword," +
            "|,search,replace,|,bullist,numlist,|" +
            ",outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor," +
            "image,cleanup,help,code,|,insertdate,inserttime,preview," +
            "|,forecolor,backcolor,|,hr,removeformat,visualaid,|,sub,sup ",
        theme_advanced_toolbar_location: "top",
        theme_advanced_toolbar_align: "left",
        theme_advanced_statusbar_location: "bottom",
        theme_advanced_resizing: true

    });
</script>