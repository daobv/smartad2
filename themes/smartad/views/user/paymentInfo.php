<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-6" style="padding-left: 0px">
                <?php $form=$this->beginWidget('CActiveForm', array(
                    'id'=>'payment-info',
                    'enableClientValidation'=>true,
                    'enableAjaxValidation'=>true,
                    'clientOptions'=>array(
                        'validateOnSubmit'=>true,
                    ),
                    'htmlOptions'=>array('class'=>'form-user-info form-payment')
                )); ?>
                <fieldset>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model,'identity_card')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model,'identity_card',array('class'=>'form-control')); ?>
                            <p>
                                <?php echo $form->error($model,'identity_card',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model,'type')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model,'type',array('class'=>'form-control',)); ?>
                            <p>
                                <?php echo $form->error($model,'type',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model,'number')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model,'number',array('class'=>'form-control',)); ?>
                            <p>
                                <?php echo $form->error($model,'number',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model,'owner')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model,'owner',array('class'=>'form-control',)); ?>
                            <p>
                                <?php echo $form->error($model,'owner',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model,'branch')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model,'branch',array('class'=>'form-control',)); ?>
                            <p>
                                <?php echo $form->error($model,'branch',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"></label>
                        <div class="col-sm-9">
                            <button type="submit" name="submit_update" value="1" class="btn btn-success">Lưu
                            </button>
                            <p></p>
                        </div>
                    </div>

                </fieldset>
                <?php $this->endWidget(); ?>
            </div>
            <div class="col-md-6 text-left" style="padding-left: 0px;padding-right:0px">
                <div class="message-block">
                   <?php $this->widget('LeftAnnouncement')?>
                </div>
            </div>
        </div>
    </div>
</div>