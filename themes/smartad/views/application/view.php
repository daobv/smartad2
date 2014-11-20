<?php
/* @var $this ApplicationController */
/* @var $model Application */

?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-2 col-xs-2" style="padding-right: 0px;">
                <?php echo CHtml::image($model->image, $model->name, array("style" => 'width: 90%')) ?>
            </div>
            <div class="col-md-4 col-xs-4">
                <h5 style="text-transform: uppercase; color:#0054a6"><?php echo $model->name; ?></h5>

                <p><span style="font-weight: bold; color: #09468b"> Phát hành:</span> N/A</p>

                <p><span style="font-weight: bold; color: #09468b"> Tình trạng:</span> <span
                        class="label label-success"><?php echo $model['status']['name'] ?></span></p>

                <p><span style="font-weight: bold; color: #09468b"> Hình thức:</span>
                    <?php echo $model['appearance']['name'] ?> <i class="<?php echo $model['appearance']['image'] ?>"
                                                                  style="font-size: 16px; color: #b3c833;"></i>
                </p>
                <p><span
                        style="font-weight: bold; color: #09468b"> Chấp nhận khu vực:</span> <?php echo $model['area'] ?>
                </p>
            </div>
            <div class="col-md-5 col-xs-6" style="padding-right: 0px;">
                <p><span style="font-weight: bold; color: #09468b"> Tiền chia sẻ</span>: <?php echo $model['price'] ?>
                    VNĐ
                </p>

                <p><span style="font-weight: bold; color: #09468b"> Thời gian:</span>
                    từ <?php echo date("d/m/Y", strtotime($model['from'])) ?>
                    đến <?php echo date("d/m/Y", strtotime($model['to'])) ?>
                </p>

                <p><span style="font-weight: bold; color: #09468b"> Dung lượng: </span> <?php echo $model['size']; ?>
                </p>
            </div>
        </div>
    </div>
    <div class="clearfix" style="height: 50px"></div>
    <div class="row2 tab-data">
        <div class="col-md-12">
            <div class="box border">
                <div class="box-title">
                    <h4><i class="fa fa-columns"></i> <span class="hidden-inline-mobile">Thông Tin Sản Phẩm</span></h4>
                </div>
                <div class="box-body">
                    <div class="tabbable header-tabs">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#sales" data-toggle="tab"><i class="fa fa-bookmark"></i> <span
                                        class="hidden-inline-mobile">Giới Thiệu</span></a></li>
                            <li class=""><a href="#feed" data-toggle="tab"><i class="fa fa-rss"></i> <span
                                        class="hidden-inline-mobile">Chính Sách Bán Hàng</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="sales">
                                <div class="panel">
                                    <p><b>Link Phân Phối: <a href="<?php echo Yii::app()->createUrl("cpi/".Yii::app()->user->name."/".$model->app_code);?>" target="_blank"><?php echo Yii::app()->getBaseUrl(true)."/cpi/".Yii::app()->user->name."/".$model->app_code; ?></a></b></p>
                                    <?php echo $model->content;?>
                                </div>
                            </div>
                            <div class="tab-pane" id="feed">
                                <?php echo $model->policy;?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

