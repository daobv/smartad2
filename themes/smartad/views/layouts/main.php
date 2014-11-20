<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?php echo Setting::model()->getSetting("meta_description");?>">
    <meta name="keywords" content="<?php echo Setting::model()->getSetting("meta_keywords");?>">
    <meta name="author" content="">
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl?>/js/jquery.js" ></script>
    <title><?php echo Setting::model()->getSetting("title"); ?></title>
    <!-- Bootstrap core CSS -->

    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl?>/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl?>/css/smartad-theme.css"/>

    <link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="<?php echo Yii::app()->theme->baseUrl?>/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="<?php echo Yii::app()->theme->baseUrl?>/css/carousel.css" rel="stylesheet">
    <link rel="shortcut icon" href="<?php echo Setting::getSetting('favicon'); ?>">
</head>
<!-- NAVBAR
================================================== -->
<body>
<?php $this->widget("HeaderNavbar");?>
<?php $this->widget("BreadCrumb");?>
<?php echo $content; ?>


<!-- FOOTER -->
<footer>
    <div class="container">
        <p class="pull-right"><a href="#">Nhà quảng cáo</a> | <a href="#">Người tiếp thị</a> | <a href=""> Liên hệ </a> <span class="social"><a href=""><i class="fa fa-facebook"></i></a><a href=""><i class="fa fa-twitter"></i></a><a href=""><i class="fa fa-google-plus"></i></a></span></p>
        <p>Copyright © 2014 SmartAd</p>
    </div>
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="<?php echo Yii::app()->theme->baseUrl?>/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo Yii::app()->theme->baseUrl?>/js/doc.min.js"></script>

</body></html>