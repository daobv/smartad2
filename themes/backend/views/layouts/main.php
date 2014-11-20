<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="shortcut icon" href="<?php echo Setting::getSetting('favicon'); ?>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="stylesheet" type="text/css" media="all" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/main.css" />
    <link rel="stylesheet" type="text/css" media="all" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/icons.css" />
    <link rel="stylesheet" type="text/css" media="all" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/jquery.fancybox.css" />
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-ui.min.js"></script>
    <title><?php echo Setting::getSetting('title'); ?> | Admin Panel</title>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.fancybox.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.tagsinput.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/flot/jquery.flot.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/flot/jquery.flot.orderBars.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/flot/excanvas.min.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/flot/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/ui/jquery.alerts.js"></script>

</head>
<body>
<?php if(!Yii::app()->user->isGuest):?>
<!-- Top navigation bar -->

<?php $this->widget('TopNav'); ?>

<!-- Content wrapper -->
<div class="wrapper">

<!-- Left navigation -->
<div class="leftNav">
    <ul id="menu">
        <li class="tables"><a href="#" title="" class="active"><span>Danh mục</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/category/create');?>" title="">Thêm danh mục</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/category/list');?>" title="">Quản lý danh mục</a></li>
            </ul>
        </li>
        <li class="login"><a href="#" title="" class="active"><span>Thành viên</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/user/create');?>" title="">Thêm Thành Viên</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/user/list');?>" title="">Danh Sách Thành Viên</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/userGroup');?>" title="">Quản Lí Nhóm Thành Viên</a></li>
            </ul>
        </li>
        <li class="typo"><a href="#" title="" class="active"><span>Ứng Dụng</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/application/create');?>" title="">Thêm Mới</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/application/admin');?>" title="">Danh Sách</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/userGroup');?>" title="">Quản Lí Nhóm Thành Viên</a></li>
            </ul>
        </li>
        <li class="dash"><a href="#" title="" class="active"><span>Quản Lý Trang</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/announcement/admin');?>" title="">Thông báo</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/post/admin');?>" title="">Bài viết</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/slider/admin');?>" title="">Cài đặt slide</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/warning/admin');?>" title="">Tin Nhắn Hệ Thống</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/staticPage/admin');?>" title="">Trang cố định</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/email/list');?>" title="">Mẫu email</a></li>
            </ul>
        </li>
        <li class="graphs"><a href="#" title="" class="active"><span>Tùy chọn</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/setting/general');?>" title="">Cấu hình chung</a></li>
            </ul>
        </li>
    </ul>
</div>
<?php endif;?>

<!-- Content -->

<?php echo $content; ?>
<div class="fix"></div>
</div>
<?php if(!Yii::app()->user->isGuest):?>
<!-- Footer -->
<div id="footer">
    <div class="wrapper">
        <span>&copy; Copyright 2014. All rights reserved.</span>
    </div>
</div>
<script>
    $(".hideit").click(function() {
        $(this).fadeTo(200, 0.00, function(){ //fade
            $(this).slideUp(300, function() { //slide up
                $(this).remove(); //then remove from the DOM
            });
        });
    });
    $("a[rel^='prettyPhoto']").prettyPhoto();
</script>
<?php endif;?>
</body>
</html>