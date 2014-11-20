<table class="table table-striped table-bordered table-hover">
    <thead>
    <tr>
        <th><i class="fa fa-bars"> </i> Ứng Dụng</th>
        <th class="hidden-xs"> <i class="fa fa-quote-left"> </i> Hình Thức</th>
        <th><i class="fa fa-mobile"> </i> Action</th>
        <th><i class="fa fa-cloud-download"> </i> Clicks</th>
        <th class="hidden-xs"> <i class="fa fa-quote-left"> </i> CR</th>
        <th><i class="fa fa-dollar"> </i> Doanh Thu</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach($data as $value):?>
        <?php $application = Application::model()->findByPk($value['app_id']);?>
        <?php if($application):?>
            <tr>

            <td><a href="#">
                    <img src="<?php echo $application->image; ?>"
                         style="max-width: 30px" class="icon-default">
                    <?php echo $application->name;?>
                </a>
            </td>
            <td class="hidden-xs"><i class="<?php echo $application['appearance']['image']; ?>" style="font-size: 16px; color: #8dc63f;"></i>
                <?php echo $application['appearance']['name'];?>
            </td>
            <td>
                <?php echo $value['success']; ?>
            </td>
            <td>
                <?php echo $value['day_click']; ?>
            </td>
            <td class="hidden-xs">
                <?php if($value['success']== 0):?>
                    0.00%
                <?php else: ?>
                    <?php printf("%0.2f",(float)$value['success']/$value['day_click']);?>%
                <?php endif;?>
            </td>
            <td>
                <?php printf("%3.0f",$value['revenue']);?> VNĐ
            </td>
        <?php endif;?>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>