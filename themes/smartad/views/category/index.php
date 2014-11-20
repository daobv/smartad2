<?php
/* @var $this CategoryController */
/* @var $dataProvider CActiveDataProvider */

?>
<div class="container">

        <div class="row">
        <div class="col-md-12">
        <div class = "col-md-7" style="padding-left:0px;padding-right:0px">
            <h4 style="margin-top: 1px"><i class="fa fa-list"> </i> <?php echo $category->name; ?><i style="float: left; padding-top: 6px"></i> </h4>
        <?php $this->widget('zii.widgets.CListView', array(
            'dataProvider'=>$posts,
            'itemView'=>'_post',
            'itemsCssClass'=>"list-news",
            "itemsTagName"=>"ul",
            'summaryText'=>''
        )); ?>
        </div>
        <div class="col-md-4" style="padding-left:0px">
            <h4 style="margin-top: 1px"><i class="fa fa-app"></i>Bài Viết Nổi Bật<i style="float:left; padding-top: 6px"></i> </h4>
        </div>
        </div>

</div>