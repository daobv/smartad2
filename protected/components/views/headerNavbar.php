<header class="navbar clearfix" id="header">
    <div class="container" style="">
        <!-- NAVBAR LEFT -->
        <?php foreach ($categories as $category): ?>
            <?php $subCategories = $category->getReverseArrayCategory($category) ?>
            <ul class="nav navbar-nav hidden-xs pull-left" id="navbar-left">
                <li class="dropdown">
                    <a href="<?php echo $category->slug; ?>" class="dropdown-toggle"
                       <?php if (count($subCategories) > 0): ?>data-toggle="dropdown" <?php endif; ?>>

                        <span class="name"><?php echo $category->name; ?></span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <?php if (count($subCategories) > 0): ?>
                        <ul class="dropdown-menu skins">
                            <?php foreach ($subCategories as $subCategory): ?>
                                <li><a href="<?php echo Yii::app()->createUrl('chuyen-muc/' . $subCategory->slug); ?>" data-skin="default"><?php echo $subCategory->name ?></a></li>

                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>
                </li>
            </ul>
        <?php endforeach; ?>
        <?php if (!Yii::app()->user->isGuest): ?>
            <ul class="nav navbar-nav pull-left" id="navbar-left">
                <li class="dropdown">
                    <a class="dropdown-toggle" href="<?php echo Yii::app()->createUrl("application/"); ?>">
                        <span class="name">Kho CPI</span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                </li>
            </ul>

            <!-- /NAVBAR LEFT -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav navbar-nav pull-right">
                <!-- BEGIN USER LOGIN DROPDOWN -->
                <li class="dropdown user" id="header-user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img alt="" class="fa fa-user"/>
                        <span class="username"><?php echo Yii::app()->user->name; ?></span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="<?php echo Yii::app()->createUrl('user/revenue') ?>">
                                <i class="fa fa-user"></i> Xem Báo Cáo</a></li>
                        <li><a href="<?php echo Yii::app()->createUrl('user/account-info') ?>">
                                <i class="fa fa-user"></i> Thông Tin Tài Khoản</a></li>
                        <li><a href="<?php echo Yii::app()->createUrl('user/payment-info') ?>">
                                <i class="fa fa-user"></i> Thông Tin Thanh Toán</a></li>
                        <li><a href="<?php echo Yii::app()->createUrl('user/logout') ?>">
                                <i class="fa fa-user"></i> Thoát</a></li>
                    </ul>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
        <?php else: ?>
            <ul class="nav navbar-nav pull-right">
                <li class="dropdown user" id="header-user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="username">Đăng Nhập</span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu" style="padding: 15px;min-width: 250px;">
                        <div class="row">
                            <div class="col-md-12">
                                <?php $form = $this->beginWidget('CActiveForm', array(
                                    'id' => 'login-form',
                                    'enableClientValidation' => true,
                                    'clientOptions' => array(
                                        'validateOnSubmit' => true,
                                    ),
                                    'action' => Yii::app()->createUrl('user/login')
                                )); ?>

                                <div class="form-group">
                                    <label class="sr-only"
                                           for="exampleInputEmail2"><?php echo $form->labelEx($model, 'username'); ?></label>
                                    <?php echo $form->textField($model, 'username', array('class' => 'form-control',)); ?>
                                    <?php echo $form->error($model, 'username'); ?>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only"
                                           for="exampleInputPassword2"><?php echo $form->labelEx($model, 'password'); ?></label>
                                    <?php echo $form->passwordField($model, 'password', array('class' => 'form-control',)); ?>
                                    <?php echo $form->error($model, 'username'); ?>
                                </div>
                                <div class="checkbox">
                                    <?php echo $form->checkBox($model, 'rememberMe'); ?>
                                    <label>
                                        <?php echo $form->label($model, 'rememberMe'); ?>
                                        <?php echo $form->error($model, 'rememberMe'); ?>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-block">Đăng nhập</button>
                                </div>
                                <?php $this->endWidget(); ?>
                            </div>
                        </div>
                    </ul>
                </li>
            </ul>
        <?php endif;?>
        <!-- END TOP NAVIGATION MENU -->
    </div>
</header>
