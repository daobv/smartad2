<div class="container">
    <div class="row">
        <div class="col-lg-4">

            <?php $form=$this->beginWidget('CActiveForm', array(
                'id'=>'login-form',
                'enableClientValidation'=>true,
                'clientOptions'=>array(
                    'validateOnSubmit'=>true,
                ),
                'action'=>Yii::app()->createUrl('user/login')
            )); ?>

            <div class="form-group">
                <label class="sr-only" for="exampleInputEmail2"><?php echo $form->labelEx($model,'username'); ?></label>
                <?php echo $form->textField($model,'username',array('class'=>'form-control',)); ?>
                <?php echo $form->error($model,'username'); ?>
            </div>
            <div class="form-group">
                <label class="sr-only" for="exampleInputPassword2"><?php echo $form->labelEx($model,'password'); ?></label>
                <?php echo $form->passwordField($model,'password',array('class'=>'form-control',)); ?>
                <?php echo $form->error($model,'username'); ?>
            </div>
            <div class="checkbox">
                <?php echo $form->checkBox($model,'rememberMe'); ?>
                <label>
                    <?php echo $form->label($model,'rememberMe'); ?>
                    <?php echo $form->error($model,'rememberMe'); ?>
                </label>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-success btn-block">Đăng nhập</button>
            </div>
            <?php $this->endWidget(); ?>
        </div>
    </div>
</div>