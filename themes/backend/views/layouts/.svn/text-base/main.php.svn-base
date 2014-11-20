<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="stylesheet" type="text/css" media="all" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/main.css" />
    <link rel="stylesheet" type="text/css" media="all" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/icons.css" />
    <link rel="stylesheet" type="text/css" media="all" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/jquery.fancybox.css" />
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-ui.min.js"></script>
    <title>Megadoc.vn | Administrator Control Panel</title>
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
        <li class="dash"><a href="<?php echo Yii::app()->createUrl('admin');?>" title="" class="active"><span>Bảng điều khiển</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/document/pending');?>" title="">Tài liệu cần duyệt</a></li>
                <li><a href="#" title="">Yêu cầu rút tiền</a></li>
                <li><a href="#" title="">Biểu đồ thống kê</a></li>
                <li><a href="#" title="">Thành viên</a></li>
            </ul>
        </li>
        <li class="tables"><a href="#" title="" class="active"><span>Danh mục</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/category/create');?>" title="">Thêm danh mục</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/category/list');?>" title="">Quản lý danh mục</a></li>
            </ul>
        </li>
        <li class="typo"><a href="#" title="" class="active"><span>Tài liệu</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/document/pending');?>" title="">Tài liệu cần duyệt</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/document/list');?>" title="">Danh sách tài liệu</a></li>
            </ul>
        </li>
        <li class="typo"><a href="#" title="" class="active"><span>Sách số</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/ebook/create');?>" title="">Thêm sách số</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/ebook/list');?>" title="">Danh sách sách số</a></li>
            </ul>
        </li>
        <li class="typo"><a href="#" title="" class="active"><span>Sách nói</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/audio/create');?>" title="">Thêm sách nói</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/audio/list');?>" title="">Danh sách sách nói</a></li>
            </ul>
        </li>
        <li class="typo"><a href="#" title="" class="active"><span>Truyện tranh</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/comic/create');?>" title="">Thêm truyện tranh</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/comic/list');?>" title="">Danh sách truyện tranh</a></li>
            </ul>
        </li>
        <li class="login"><a href="#" title="" class="active"><span>Thành viên</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/user/create');?>" title="">Thêm thành viên</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/user/list');?>" title="">Danh sách thành viên</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/userRole/list');?>" title="">Quyền hạn thành viên</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/userCategory/list');?>" title="">Quản trị viên</a></li>
            </ul>
        </li>
        <li class="graphs"><a href="#" title="" class="active"><span>Quản lý trang</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/announcement/admin');?>" title="">Thông báo</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/slider/admin');?>" title="">Cài đặt slide</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/widget/list');?>" title="">Cài đặt widget</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/staticPage/admin');?>" title="">Trang cố định</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/email/list');?>" title="">Mẫu email</a></li>
            </ul>
        </li>
        <li class="graphs"><a href="#" title="" class="active"><span>Tùy chọn</span></a>
            <ul class="sub">
                <li><a href="<?php echo Yii::app()->createUrl('admin/setting/general');?>" title="">Cấu hình chung</a></li>
                <li><a href="<?php echo Yii::app()->createUrl('admin/setting/payment');?>" title="">Cấu hình thanh toán</a></li>
            </ul>
        </li>
    </ul>
</div>
<?php endif;?>

<!-- Content -->

<?php echo $content; ?>
<div class="fix"></div>
</div>

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
</body>
</html>