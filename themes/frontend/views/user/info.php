<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title-blank">
                    <h4><i class="fa fa-list"></i> <span>Thông Tin Tài Khoản</span></h4>
                </div>
            </div>
            <div class="col-md-6" style="padding-left: 0px">
                <?php $form=$this->beginWidget('CActiveForm', array(
                    'id'=>'user-info',
                    'enableClientValidation'=>false,
                    'enableAjaxValidation'=>false,
                    'clientOptions'=>array(
                        'validateOnSubmit'=>false,
                    ),
                    'htmlOptions'=>array('class'=>'form-user-info form-login')
                )); ?>
                <fieldset>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model,'username')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model,'username',array('class'=>'form-control','placeholder'=>'Tên Đăng Nhập','readOnly'=>true)); ?>
                            <p>
                                <?php echo $form->error($model,'username',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model,'email')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model,'email',array('class'=>'form-control','placeholder'=>'Email','readOnly'=>true)); ?>
                            <p>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model,'password')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->passwordField($model,'password',array('class'=>'form-control','placeholder'=>'Mật Khẩu')); ?>
                            <p>
                                <small>Mật khẩu từ 3 đến 10 ký tự. Chỉ cho phép chữ cái và số.</small>
                                <?php echo $form->error($model,'password',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model['info'],'full_name')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model['info'],'full_name',array('class'=>'form-control','placeholder'=>'Tên Đầy Đủ')); ?>
                            <small>
                            </small>
                            <?php echo $form->error($model['info'],'full_name',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model['info'],'phone_number')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model['info'],'phone_number',array('class'=>'form-control','placeholder'=>'Số Điện Thoại')); ?>
                            <small>Ví dụ: 0988546789, cần nhập đúng số điện thoại của bạn để đảm bảo quyền lợi
                                của bạn.
                            </small>
                            <?php echo $form->error($model['info'],'phone_number',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model['info'],'job')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model['info'],'job',array('class'=>'form-control','placeholder'=>'Nghề nghiệp')); ?>
                            <p>
                            <?php echo $form->error($model['info'],'job',array('style'=>'color:#d04526')); ?>
                            </p>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model['info'],'company')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model['info'],'company',array('class'=>'form-control','placeholder'=>'Công ty')); ?>
                            <p>
                                <?php echo $form->error($model['info'],'company',array('style'=>'color:#d04526')); ?>
                            </p>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model['info'],'address')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model['info'],'address',array('class'=>'form-control','placeholder'=>'Địa chỉ')); ?>
                            <p>
                                <?php echo $form->error($model['info'],'address',array('style'=>'color:#d04526')); ?>
                            </p>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model['info'],'city')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model['info'],'city',array('class'=>'form-control','placeholder'=>'Tỉnh/Thành Phố')); ?>
                            <p>
                                <?php echo $form->error($model['info'],'city',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model['info'],'user_type')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->dropDownList($model['info'],'user_type',UserInfo::model()->getUserType(),array('class'=>'form-control','placeholder'=>'Bạn là')); ?>
                            <p>
                                <?php echo $form->error($model['info'],'user_type',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo $form->label($model['info'],'store_channel')?></label>
                        <div class="col-sm-9">
                            <?php echo $form->textField($model['info'],'store_channel',array('class'=>'form-control','placeholder'=>'Kênh Bán Hàng')); ?>
                            <p>
                                <?php echo $form->error($model['info'],'store_channel',array('style'=>'color:#d04526')); ?>
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

                <div class="message-block">
                    <?php $this->widget('LeftAnnouncement')?>
                </div>

        </div>
    </div>
</div>