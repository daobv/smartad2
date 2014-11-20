<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title><?php echo Setting::model()->getSetting("title"); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl ?>/css/cloud-admin.css">
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl ?>/css/themes/default.css"
          id="skin-switcher">
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl ?>/css/responsive.css">
    <!-- STYLESHEETS --><!--[if lt IE 9]>
    <script src="<?php echo Yii::app()->theme->baseUrl?>/js/flot/excanvas.min.js"></script>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
    <link href="<?php echo Yii::app()->theme->baseUrl ?>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- ANIMATE -->
    <link rel="stylesheet" type="text/css"
          href="<?php echo Yii::app()->theme->baseUrl ?>/css/animatecss/animate.min.css"/>
    <!-- DATE RANGE PICKER -->
    <link rel="stylesheet" type="text/css"
          href="<?php echo Yii::app()->theme->baseUrl ?>/js/bootstrap-daterangepicker/daterangepicker-bs3.css"/>
    <!-- TODO -->
    <link rel="stylesheet" type="text/css"
          href="<?php echo Yii::app()->theme->baseUrl ?>/js/jquery-todo/css/styles.css"/>
    <!-- FULL CALENDAR -->
    <link rel="stylesheet" type="text/css"
          href="<?php echo Yii::app()->theme->baseUrl ?>/js/fullcalendar/fullcalendar.min.css"/>
    <!-- GRITTER -->

    <!-- FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- HEADER -->
<?php $this->widget("HeaderNavbar"); ?>
<!--/HEADER -->

<!-- PAGE -->
<section id="page">
<!-- SIDEBAR -->
<!-- /SIDEBAR -->
<div id="main-content">
<div class="container">
<div class="row">
<div id="content" class="col-lg-12">
<!-- PAGE HEADER-->
<div class="row">
    <div class="col-sm-12">
        <?php $this->widget("PageLogo");?>
    </div>
</div>
    <div class="row">
        <div class="col-sm-12 breadcrumb-container">
            <?php $this->widget("BreadCrumb");?>
        </div>
    </div>
<!-- /PAGE HEADER -->
<!-- HERO GRAPH -->
<?php echo $content; ?>
<!-- /CALENDAR & CHAT -->
</div>
</div>
</div>
</div>

</section>
<!--/PAGE -->
<!-- JAVASCRIPTS -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- JQUERY -->


<!-- JQUERY UI-->
<script
    src="<?php echo Yii::app()->theme->baseUrl ?>/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
<!-- BOOTSTRAP -->
<script src="<?php echo Yii::app()->theme->baseUrl ?>/bootstrap-dist/js/bootstrap.min.js"></script>
<!-- DATE RANGE PICKER -->
<script src="<?php echo Yii::app()->theme->baseUrl ?>/js/bootstrap-daterangepicker/moment.min.js"></script>
<script src="<?php echo Yii::app()->theme->baseUrl ?>/js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
<!-- SPARKLINES -->
<script type="text/javascript"
        src="<?php echo Yii::app()->theme->baseUrl ?>/js/sparklines/jquery.sparkline.min.js"></script>

<!-- CUSTOM SCRIPT -->
<script src="<?php echo Yii::app()->theme->baseUrl ?>/js/script.js"></script>
<!-- FOOTER -->

</body>
</html>