
<div class="container" style="padding-left: 0px;padding-right: 0px;width: 100% !important;">
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class=""></li>
            <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner">
            <?php foreach($sliders as $key=> $slider):?>
            <div class="item <?php if($key == 0): ?>active <?php endif;?>">
                <a href="<?php echo $slider->redirect_url; ?>"><img src="<?php echo $slider->image_url?>" height="440" width="1920" title="<?php echo $slider->name;?>" /></a>
            </div>
            <?php endforeach; ?>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-circle-arrow-left"></span></a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-circle-arrow-right"></span></a>
    </div><!-- /.carousel -->
</div>