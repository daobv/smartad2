<div id="topNav">
    <div class="fixed">
        <div class="wrapper">
            <div class="welcome"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no_avatar.gif" width="18px" height="20px" alt="" /><span>Xin chào, <?php echo $admin->username;?> !</span></div>
            <div class="userNav">
                <ul>
                    <li><a href="<?php echo Yii::app()->createUrl('admin/user/view', array('id'=>$admin->id));?>" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icons/topnav/profile.png" alt="" /><span>Tài khoản</span></a></li>
                    <li><a href="<?php echo Yii::app()->createUrl('admin/setting/general');?>" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icons/topnav/settings.png" alt="" /><span>Cấu hình</span></a></li>
                    <li><a href="<?php echo Yii::app()->createUrl("admin/user/logout"); ?>" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icons/topnav/logout.png" alt="" /><span>Thoát</span></a></li>
                </ul>
            </div>
            <div class="fix"></div>
        </div>
    </div>
</div>
<div id="header" class="wrapper">
    <div class="logo"><a href="<?php echo Yii::app()->createUrl('admin');?>" title=""><img src="<?php echo Setting::getSetting("logo"); ?>" alt="" /></a></div>
    <div class="middleNav">
        <ul>
            <li class="iStat"><a href="#" title=""><span>Biểu đồ thống kê</span></a></li>
            <li class="iUser"><a href="<?php echo Yii::app()->createUrl('admin/user/list');?>" title=""><span>Thành viên</span></a></li>
        </ul>
    </div>
    <div class="fix"></div>
</div>
