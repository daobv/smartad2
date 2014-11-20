<?php
/* @var $this StaticPageController */
/* @var $dataProvider CActiveDataProvider */

?>
<script
    src="<?php echo Yii::app()->theme->baseUrl ?>/js/jquery/jquery.js"></script>
<div class="container">

    <div class="row">
        <div class="col-md-12">
            <div class = "col-md-7" style="padding-left:0px;padding-right:0px">
                <h4 style="margin-top: 1px"><i class="fa fa-list"> </i> <?php echo $staticPage->title; ?><i style="float: left; padding-top: 6px"></i> </h4>
                <div class="static-content">
                    <?php echo $staticPage->content;?>
                </div>
            </div>
            <div class="col-md-4" style="padding-left:0px">
                <h4 style="margin-top: 1px"><i class="fa fa-app"></i>Bài Viết Nổi Bật<i style="float:left; padding-top: 6px"></i> </h4>
            </div>
        </div>

    </div>