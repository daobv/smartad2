<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-6" style="padding-left: 0px">
                <?php $form=$this->beginWidget('CActiveForm', array(
                    'id'=>'user-form',
                    'enableClientValidation'=>true,
                    'enableAjaxValidation'=>true,
                    'clientOptions'=>array(
                        'validateOnSubmit'=>true,
                    ),
                    'htmlOptions'=>array('class'=>'form-register form-login')
                )); ?>
                    <fieldset>
                        <div class="form-group">
                            <!--<label class="control-label" for="inputUser">Tên đăng nhập</label> -->
                            <div class="controls">
                                <?php echo $form->textField($model,'username',array('class'=>'form-control','placeholder'=>'Tên đăng nhập')); ?>
                                <p>
                                    <?php echo $form->error($model,'username',array('style'=>'color:#d04526')); ?>
                                    <small>Tối thiểu 3-30 ký tự. Chỉ cho phép chữ cái và số.</small>

                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <?php echo $form->passwordField($model,'password',array('class'=>'form-control','placeholder'=>'Mật Khẩu')); ?>
                                <p>
                                    <small>Mật khẩu từ 3 đến 10 ký tự. Chỉ cho phép chữ cái và số.</small>
                                    <?php echo $form->error($model,'password',array('style'=>'color:#d04526')); ?>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <?php echo $form->passwordField($model,'rePassword',array('class'=>'form-control','placeholder'=>'Nhập Lại Mật Khẩu')); ?>
                                <p>
                                    <small>Mật khẩu từ 3 đến 10 ký tự. Chỉ cho phép chữ cái và số.</small>
                                    <?php echo $form->error($model,'rePassword',array('style'=>'color:#d04526')); ?>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <?php echo $form->textField($model,'phoneNumber',array('class'=>'form-control','placeholder'=>'Số Điện Thoại')); ?>
                                    <small>Ví dụ: 0988546789, cần nhập đúng số điện thoại của bạn để đảm bảo quyền lợi
                                        của bạn.
                                    </small>
                                <?php echo $form->error($model,'phoneNumber',array('style'=>'color:#d04526')); ?>
                                </p>

                            </div>
                        </div>

                        <div class="form-group">
                            <div class="controls">
                                <?php echo $form->textField($model,'email',array('class'=>'form-control','placeholder'=>'Email')); ?>
                                <p>
                                    <small>Nhập đúng Email đang dùng để đảm bảo quyền lợi của bạn.</small>
                                    <?php echo $form->error($model,'email',array('style'=>'color:#d04526')); ?>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <?php $this->widget('CCaptcha'); ?>
                                <p><small>Vui lòng nhập lại captcha.</small></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <?php echo $form->textField($model,'verifyCode',array('class'=>'form-control','placeholder'=>'Nhập lại captcha')); ?>
                            </div>
                            <p>
                                <?php echo $form->error($model,'verifyCode',array('style'=>'color:#d04526')); ?>
                            </p>

                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <?php echo $form->checkBox($model,'acceptRules'); ?> <label for="i_agree">Tôi đồng ý với
                                    các quy định của SmartAd.</label>

                                <p><?php echo $form->error($model,'acceptRules',array('style'=>'color:#d04526')); ?></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <button type="submit" name="submit_register" value="1" class="btn btn-success">Đăng ký
                                </button>
                            </div>
                        </div>

                    </fieldset>
                <?php $this->endWidget(); ?>
            </div>
            <div class="col-md-5 text-right">
                <div class="image_register">
                    <img src="http://pub.adflex.vn/default/images/img_phone.png" class="img-responsive">
                </div>
            </div>
        </div>
    </div>
</div>