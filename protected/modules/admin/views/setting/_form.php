<div class="form">
    <fieldset>
        <?php
        foreach($models as $model){
            $setting = Setting::model()->findAll('category=:category', array(':category'=>$model->category));
            $form=$this->beginWidget('CActiveForm', array(
                'id'=>$model->category,
                'enableAjaxValidation'=>false,
            ));
            echo $form->errorSummary($setting);
            ?>
            <div class="widget first">
                <div class="head"><h5 class="iList"><?php echo $model->category; ?></h5></div>
                <?php
                foreach($setting as $md){
                    ?>
                    <div class="rowElem">
                        <label for="<?php echo $md->name; ?>"><?php echo $md->title; ?></label>
                        <div class="formRight">
                            <?php
                            switch($md->type){
                                case 'passwordField': echo $form->passwordField($md,'value',array('id'=>$md->name,'size'=>'100','name'=>'Setting['.$md->name.']')); break;
                                case 'textField': echo $form->textField($md,'value',array('id'=>$md->name,'size'=>'100','name'=>'Setting['.$md->name.']')); break;
                                case 'textArea': echo $form->textArea($md,'value',array('id'=>$md->name,'cols'=>'103','name'=>'Setting['.$md->name.']')); break;
                                case 'checkBox': echo $form->checkBox($md,'value',json_decode($md->key),array('name'=>'Setting['.$md->name.']')); break;
                                case 'radioButton': echo $form->radioButtonList($md,'value',json_decode($md->key),array('name'=>'Setting['.$md->name.']')); break;
                                case 'dropDown': echo $form->dropDownList($md,'value',json_decode($md->key),array('name'=>'Setting['.$md->name.']')); break;
                            }
                            ?>
                        </div>
                        <div class="fix"></div>
                    </div>
                <?php } ?>
                <div class="rowElem buttons">
                    <?php echo CHtml::submitButton('Save'); ?>
                </div>
            </div>
            <?php
            $this->endWidget();
        }
        ?>
    </fieldset>
</div><!-- form -->