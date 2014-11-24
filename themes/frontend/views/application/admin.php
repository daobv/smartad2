<?php
/* @var $this ApplicationController */
/* @var $model Application */

?>
<script
    src="<?php echo Yii::app()->theme->baseUrl ?>/js/jquery/jquery.js"></script>
<div class="container" style="width: 100% !important;">
    <div class="row">
        <div class="col-md-12">
            <div class="box ">
                <div class="box-title-blank">
                    <h4><i class="fa fa-list"></i> <span>Danh sách ứng dụng</span></h4>
                </div>
            </div>
            <div class="box-body">
                <div class="tabbable header-tabs">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#sales" data-toggle="tab"><i class="fa fa-thumbs-o-up"></i>
                                <span>Đang Chạy</span></a></li>
                        <li class=""><a href="#feed" data-toggle="tab"><i class="fa fa-thumbs-o-down"></i>
                                <span>Tạm Dừng</span></a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="sales">

                            <?php foreach ($model as $k => $app): ?>
                                <?php if ($k % 2 == 0): ?>
                                    <div class="col-md-6 list-product-left" style="padding-left: 0px">
                                        <div class="list_product">
                                            <div class="p10">
                                                <div class="thumb_p">
                                                    <img src="<?php echo $app->image; ?>" alt="">
                                                </div>
                                                <div class="c_p">
                                                    <div class="h_t_p">
                                                        <div class="t_p"><a
                                                                href="<?php echo Yii::app()->createUrl('application/' . $app->slug); ?>"><?php echo $app->name; ?> </a>
                                                            <span
                                                                class="muted"><?php echo $app['status']['name'] ?></span>
                                                        </div>
                                                        <!--<div class="adv_p"><a href="/"></a></div>-->
                                                    </div>
                                                    <div class="c_info_p"><?php echo $app->short_description; ?></div>
                                                    <div class="f_p">
                                                        <a class="price" href="">Giá: <?php echo $app->price; ?></a>
                                                        <a class="ht" href=""><?php echo $app['type']['name']; ?></a>
                                                        <a class="theloai"
                                                           href=""><?php echo $app['appearance']['name']; ?></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php else: ?>
                                    <div class="col-md-6 list-product-right" style="padding-left: 0px">
                                        <div class="list_product-left">
                                            <div class="p10">
                                                <div class="thumb_p">
                                                    <img src="<?php echo $app->image; ?>" alt="">
                                                </div>
                                                <div class="c_p">
                                                    <div class="h_t_p">
                                                        <div class="t_p"><a
                                                                href="<?php echo Yii::app()->createUrl('application/' . $app->slug); ?>"><?php echo $app->name; ?> </a>
                                                            <span
                                                                class="muted"><?php echo $app['status']['name'] ?></span>
                                                        </div>
                                                        <!--<div class="adv_p"><a href="/"></a></div>-->
                                                    </div>
                                                    <div class="c_info_p"><?php echo $app->short_description; ?></div>
                                                    <div class="f_p">
                                                        <a class="price" href="">Giá: <?php echo $app->price; ?></a>
                                                        <a class="ht" href=""><?php echo $app['type']['name']; ?></a>
                                                        <a class="theloai"
                                                           href=""><?php echo $app['appearance']['name']; ?></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            <?php endforeach; ?>

                        </div>
                        <div class="tab-pane" id="feed">

                            <?php foreach ($holdingApp as $k => $app): ?>
                                <?php if ($k % 2 == 0): ?>
                                    <div class="col-md-6" style="padding-left: 0px">
                                        <div class="list_product">
                                            <div class="p10">
                                                <div class="thumb_p">
                                                    <img src="<?php echo $app->image; ?>" alt="">
                                                </div>
                                                <div class="c_p">
                                                    <div class="h_t_p">
                                                        <div class="t_p"><a
                                                                href="<?php echo Yii::app()->createUrl('application/' . $app->slug); ?>"><?php echo $app->name; ?> </a>
                                                            <span
                                                                class="muted"><?php echo $app['status']['name'] ?></span>
                                                        </div>
                                                        <!--<div class="adv_p"><a href="/"></a></div>-->
                                                    </div>
                                                    <div class="c_info_p"><?php echo $app->short_description; ?></div>
                                                    <div class="f_p">
                                                        <a class="price" href="">Giá: <?php echo $app->price; ?></a>
                                                        <a class="ht" href=""><?php echo $app['type']['name']; ?></a>
                                                        <a class="theloai"
                                                           href=""><?php echo $app['appearance']['name']; ?></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php else: ?>
                                    <div class="col-md-6" style="padding-left: 0px">
                                        <div class=".list_product-left">
                                            <div class="p10">
                                                <div class="thumb_p">
                                                    <img src="<?php echo $app->image; ?>" alt="">
                                                </div>
                                                <div class="c_p">
                                                    <div class="h_t_p">
                                                        <div class="t_p"><a
                                                                href="<?php echo Yii::app()->createUrl('application/' . $app->slug); ?>"><?php echo $app->name; ?> </a>
                                                            <span
                                                                class="muted"><?php echo $app['status']['name'] ?></span>
                                                        </div>
                                                        <!--<div class="adv_p"><a href="/"></a></div>-->
                                                    </div>
                                                    <div class="c_info_p"><?php echo $app->short_description; ?></div>
                                                    <div class="f_p">
                                                        <a class="price" href="">Giá: <?php echo $app->price; ?></a>
                                                        <a class="ht" href=""><?php echo $app['type']['name']; ?></a>
                                                        <a class="theloai"
                                                           href=""><?php echo $app['appearance']['name']; ?></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            <?php endforeach; ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>