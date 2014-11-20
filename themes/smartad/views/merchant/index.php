<?php
/* @var $this MerchantController */
/* @var $dataProvider CActiveDataProvider */
 ?>

<div class="container">
    <div class="row content-site">
        <?php $this->widget("WarningWidget");?>
        <div class="col-md-12">
            <div class="col-md-12 filter-head">
                <div class="col-md-3 nopadding">
                    <form class="form-inline" id="report_form" method="get" style="padding-top:30px">
                        <div class="input-prepend input-append"
                             style="display: inline-block; margin: 0px; height: 30px;  margin-right: 5px;">
                <span class="add-on"><a href="#"><i
                            class="icon-step-backward"></i></a></span>
            <span class="reportrange input-large uneditable-input" style="width: 200px">
                <span id="report-rang-custom"><?php echo $dateParams[0]."/".date('Y'); ?>
                    - <?php echo $dateParams[count($dateParams)-1]."/".date('Y'); ?></span>
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
                                window.location.replace("<?php echo Yii::app()->createUrl('merchant/index'); ?>?from="+start_date+"&&to="+end_date);

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
                <div class="col-md-5 col-xs-12 pull-right" style="padding-top: 5px">
                    <div class="row">
                        <div class="col-md-6 price-header">
                            <a href="<?php echo Yii::app()->createUrl('user/revenue',array('from'=>date('ymd'),'to'=>date('ymd',time()))); ?>">HÔM NAY<span class="number"> <?php echo $todayRevenue; ?></php></span> VNĐ</a>
                        </div>
                        <div class="col-md-6 price-header" style="color: #6fa4d8">
                            <a href="<?php echo Yii::app()->createUrl('user/revenue',array('from'=>date('ym',time())."01",'to'=>date('ymd',time()))); ?>">THÁNG
                                NÀY <span class="number"> <?php echo $monthRevenue; ?></span> VNĐ</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div>
            <div style="clear: both; width: 100%"></div>

            <div class="col-md-12"
                 style="background:#fff; margin-top: 15px; padding-top: 15px; padding-bottom:15px;">
                <h4 class="header-box-db" style="margin-top: 1px"><i class="fa fa-bar-chart-o"></i> THỐNG KÊ DÀNH CHO NHÀ QUẢNG CÁO</h4>

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
                                array('name' => 'Action', 'data' =>$actionArray),
                                array('name' => 'Click', 'data' => $clickArray),
                            )
                        )
                    ));
                    ?>
                </div>
            </div>

            <div class="col-md-12" style="margin-bottom: 20px">
                <?php $this->widget("MerchantApplicationTable");?>
            </div>
        </div>
        <div>
            <div style="clear: both; width: 100%"></div>
            <script src="<?php echo Yii::app()->theme->baseUrl ?>/js/highcharts.js"></script>
        </div>
    </div>
</div>
