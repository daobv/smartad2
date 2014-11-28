<div class="row" style="margin-left: 0px;margin-right: 0px;">
    <div class="col-md-12"
         style="margin-top: 30px;">
        <div class="col-md-12" style="padding-left: 0px">
            <div class="col-md-4" style="padding-left: 0px">
                <h4 class="header-box-db" style="margin-top: 1px"><i class="fa fa-bar-chart-o"></i> THỐNG KÊ DOANH
                    THU </h4>

            </div>
            <div class="col-md-4" style="padding-left: 0px; padding-bottom: 10px">
                <?php $sumAction = 0;$sumClick = 0;$sumRevenue = 0;?>
                <?php foreach($actionArray as $action){$sumAction+=$action;}?>
                <?php foreach($clickArray as $click){$sumClick+=$click;}?>
                <?php foreach($revenueArray as $revenue){$sumRevenue+=$revenue;}?>
                Action: <?php echo $sumAction; ?> | Click: <?php echo $sumClick; ?> | Doanh thu: <?php printf("%3.0f",$sumRevenue); ?> VNĐ
            </div>
            <div class="col-md-4" style="padding-left: 0px;">
                <form class="form-inline" id="report_form" method="get">
                    <div class="input-prepend input-append"
                         style="display: inline-block; margin: 0px; height: 30px;  margin-right: 5px;">
                <span class="add-on"><a href="#"><i
                            class="icon-step-backward"></i></a></span>
                <span class="reportrange input-large uneditable-input" style="width: 200px">
                <span id="report-rang-custom"><?php echo $dateParams[0] . "/" . date('Y'); ?>
                    - <?php echo $dateParams[count($dateParams) - 1] . "/" . date('Y'); ?></span>
                 </span>
                        <span class="add-on reportrange"><i class="icon-calendar icon-large"></i></span>
                <span class="add-on"><a href="#"><i
                            class="icon-step-forward"></i></a></span>
                    </div>
                </form>
                <link rel="stylesheet" type="text/css" media="all"
                      href="<?php echo Yii::app()->theme->baseUrl; ?>/css/daterangepicker-bs2.css"/>
                <script type="text/javascript"
                        src="<?php echo Yii::app()->theme->baseUrl; ?>/js/moment.js"></script>
                <script type="text/javascript"
                        src="<?php echo Yii::app()->theme->baseUrl; ?>/js/daterangepicker.js"></script>

                <script type="text/javascript">
                    $('.reportrange').daterangepicker(
                        {
                            format: 'DD/MM/YYYY',
                            startDate: '<?php echo $dateParams[0]."/".date('Y');?>',
                            endDate: '<?php echo $dateParams[count($dateParams)-1]."/".date('Y');?>',
                            separator: 'to',
                            locale: {
                                applyLabel: 'Xem',
                                cancelLabel: 'Hủy',
                                fromLabel: 'Từ ngày',
                                toLabel: 'Tới ngày',
                                customRangeLabel: 'Tùy chỉnh',
                                daysOfWeek: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
                                monthNames: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
                                firstDay: 1
                            },
                            ranges: {
                                'Hôm nay': [moment(), moment()],
                                'Hôm qua': [moment().subtract('days', 1), moment().subtract('days', 1)],
                                '7 ngày trước': [moment().subtract('days', 6), moment()],
                                '30 ngày trước': [moment().subtract('days', 29), moment()],
                                'Tháng này': [moment().startOf('month'), moment().endOf('month')],
                                'Tháng trước': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')],
                                'Tất cả': [new Date('2013-01-01'), moment()]
                            }
                        },
                        function (start, end) {
                            $('#report-rang-custom').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'));
                            var start_date = start.format('YYMMDD');
                            var end_date = end.format('YYMMDD');
                            window.location.replace("<?php echo Yii::app()->createUrl('user/revenue'); ?>?from=" + start_date + "&&to=" + end_date);

                        }
                    );
                    function convert_date(date_check) {
                        var res = date_check.split('-');
                        var day_get = res[2];
                        var month_get = res[1];
                        var year_get = res[0].toString();
                        return  day_get + month_get + year_get;
                    }
                </script>

            </div>


        </div>
        <div id="chart_div" data-highcharts-chart="0">
            <?php
            $this->Widget('ext.highcharts.HighchartsWidget', array(
                'options' => array(
                    'title' => array('text' => ''),
                    'xAxis' => array(
                        'categories' => $dateParams
                    ),
                    'yAxis' => array(
                        'title' => array('text' => 'Sản Lượng')
                    ),
                    'series' => array(
                        array('name' => 'Action', 'data' => $actionArray),
                        array('name' => 'Click', 'data' => $clickArray),
                    )
                )
            ));
            ?>
        </div>
    </div>
</div>
<!-- /HERO GRAPH -->
<!-- NEW ORDERS & STATISTICS -->
<div class="row" style="margin-left: 0px;
margin-right: 0px;">
    <!-- STATISTICS -->

            <div class="col-md-6">
                <div class="box border inverse">
                    <div class="box-title">
                        <h4><i class="fa fa-money"></i>Doanh Thu </h4>
                    </div>
                    <div class="box-body">
                        <div class="sparkline-row">
                            <span class="title">Hôm Nay</span>
                            <span class="value"><?php echo $todayRevenue; ?> VNĐ</span>
                            <span class="sparkline big" data-color="blue">16,7,23,13,12,11,15,4,19,18,4,24</span>
                        </div>
                        <div class="sparkline-row">
                            <span class="title">Tuần này</span>
                            <span class="value"><?php echo $weekRevenue; ?> VNĐ</span>
                            <span class="sparkline big" data-color="green">11,19,20,20,5,18,11,6,16,20,26,11</span>
                        </div>
                        <div class="sparkline-row">
                            <span class="title">Tháng Này</span>
                            <span class="value"><?php echo $monthRevenue;?> VNĐ</span>
                            <span class="sparkline big" data-color="red">6,3,24,25,27,29,14,26,20,8,12,20</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box border purple">
                    <div class="box-title">
                        <h4><i class="fa fa-adjust"></i>Tỉ Lệ Action </h4>
                    </div>
                    <?php $percent = "0,100"; ?>
                    <?php if($todayPercent && $todayPercent->day_click!=0) $percent = $todayPercent->success.",".$todayPercent->day_click; ?>
                    <div class="box-body">
                        <div class="sparkline-row">
                            <span class="title">Hôm Nay</span>
                            <span class="value"><?php if($todayPercent && $todayPercent->day_click != 0) echo number_format((float)$todayPercent->success/$todayPercent->day_click, 2, '.', '')."%"; else echo " 0.00% " ?></span>
                            <span class="sparklinepie"><?php echo $percent;?></span>
                        </div>
                        <?php $percent = "0,100"; ?>
                        <?php if($thisWeekPercent && $thisWeekPercent->day_click !=0) $percent = $thisWeekPercent->success.",".$thisWeekPercent->day_click; ?>
                        <div class="sparkline-row">
                            <span class="title">Tuân Này</span>
                            <span class="value"><?php if($thisWeekPercent && $thisWeekPercent->day_click !=0) echo number_format((float)$thisWeekPercent->success/$thisWeekPercent->day_click, 2, '.', '')."%"; else echo " 0.00% " ?></span>
                            <span class="sparklinepie"><?php echo $percent;?></span>
                        </div>
                        <?php $percent = "0,100"; ?>
                        <?php if($thisMonth) $percent = $thisMonth->success.",".$thisMonth->day_click; ?>
                        <div class="sparkline-row">
                            <span class="title">Tháng Này</span>
                            <span class="value"><?php if($thisMonth && $thisMonth->day_click != 0) echo number_format((float)$thisMonth->success/$thisMonth->day_click, 2, '.', '')."%"; else echo " 0.00% " ?></span>
                            <span class="sparklinepie"><?php echo $percent;?></span>
                        </div>
                    </div>
                </div>
            </div>

    <!-- /STATISTICS -->
    <div class="col-md-6">

    </div>
</div>
<!-- /NEW ORDERS & STATISTICS -->
<!-- CALENDAR & CHAT -->
<div class="row" style="margin-left: 0px;
margin-right: 0px;">
    <!-- CALENDAR -->
    <div class="col-md-6">
        <div class="box border blue">
            <div class="box-title">
                <h4><i class="fa fa-list"></i>Danh Sách Ứng Dụng</h4>
            </div>
            <div class="panel-body" style="padding: 0px;">
                <?php $this->widget("ApplicationTable"); ?>
            </div>
        </div>

    </div>
    <!-- /CALENDAR -->
    <!-- Table summary -->
    <div class="col-md-6">
        <div class="box border primary">
            <div class="box-title">
                <h4><i class="fa fa-tags"></i>Tin Tức</h4>
            </div>
            <div class="box-body">
                <?php $this->widget('zii.widgets.grid.CGridView', array(
                    'dataProvider'=>$staticPage->search(),
                    'htmlOptions'=>array('class'=>'list-news','id'=>'list-news','style'=>'padding-bottom:20px'),
                    'summaryText' => '',
                    'rowCssClass'=>array('gradeA odd', 'gradeA even'),
                    'columns'=>array(
                        array(
                            'type'=>'raw',
                            'value'=>'CHtml::link($data->title,"/thong-bao/".$data->slug,array("style"=>"padding-left:15px;padding-bottom:10px"))',
                            'headerHtmlOptions'=>array('style'=>'width:0%; display:none'),
                            'htmlOptions'=>array('class'=>'fa fa-star-o'),
                        )
                    ),
                )); ?>
            </div>
        </div>
    </div>
    <!-- CHAT -->
</div>
<script>
    jQuery(document).ready(function () {
        App.setPage("index");  //Set current page
        App.init(); //Initialise plugins and elements
    });
</script>
<!-- /JAVASCRIPTS -->