<?php
/* @var $this StaticPageController */
/* @var $model StaticPage */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'static-page-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
    )); ?>

    <fieldset>
        <div class="widget first">
            <div class="head"><h5 class="iList"><?php echo $model->isNewRecord ? 'Tạo Mới' : 'Sửa '?> Nội Dung</div>
            <?php echo $form->errorSummary($model); ?>
            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'title'); ?></label>
                <div class="formRight"><?php echo $form->textField($model, 'title', array('size' => 60, 'maxlength' => 255,)); ?></div>
                <div class="fix"><?php echo $form->error($model, 'title'); ?></div>
            </div>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'slug'); ?></label>
                <div class="formRight"><?php echo $form->textField($model, 'slug', array('size' => 60, 'maxlength' => 255,'placeholder'=>'(Để trống nếu muốn tự động khởi tạo)')); ?></div>
                <div class="fix"><?php echo $form->error($model, 'slug'); ?></div>
            </div>

            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'description'); ?></label>
                <div class="formRight"><?php echo $form->textField($model, 'description', array('size' => 60, 'maxlength' => 255)); ?></div>
                <div class="fix"><?php echo $form->error($model, 'description'); ?></div>
            </div>
            <div class="rowElem">
                <label><?php echo $form->labelEx($model,'static_category'); ?></label>
                <div class="formRight"><?php echo $form->dropDownList($model,'static_category',Category::model()->getDropdownCategory(),array('selected'=>$model->static_category)); ?></div>
                <div class="fix"><?php echo $form->error($model,'static_category'); ?></div>
            </div>
            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'boolean'); ?></label>
                <div class="formRight"><?php echo $form->dropDownList($model, 'boolean',$model->getStatusDropdownList()); ?></div>
                <div class="fix"><?php echo $form->error($model, 'boolean'); ?></div>
            </div>
            <div class="rowElem">
                <label><?php echo $form->labelEx($model, 'content'); ?></label>
                <div class="formRight"><?php echo $form->textArea($model, 'content', array('style' =>"height:100px")); ?></div>
                <div class="fix"><?php echo $form->error($model, 'content'); ?></div>
            </div>

            <div class="rowElem" >
                <div class="button" style="margin-left:auto;margin-right:auto"><?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?></div>
            </div>
        </div>
    </fieldset>
    <?php $this->endWidget(); ?>

</div><!-- form -->
<script type="text/javascript" src="<?php echo Setting::getSetting('site_url');?>/resource/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
    tinymce.init({
        selector:'textarea',
        height : 300,
        width:600,
        theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough," +
            "|,justifyleft,justifycenter,justifyright,justifyfull," +
            "|,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword," +
            "|,search,replace,|,bullist,numlist,|" +
            ",outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor," +
            "image,cleanup,help,code,|,insertdate,inserttime,preview," +
            "|,forecolor,backcolor,|,hr,removeformat,visualaid,|,sub,sup ",
        theme_advanced_toolbar_location : "top",
        theme_advanced_toolbar_align : "left",
        theme_advanced_statusbar_location : "bottom",
        theme_advanced_resizing : true

    });
</script>