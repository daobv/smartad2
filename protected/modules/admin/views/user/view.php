<?php
/* @var $this UserController */
/* @var $model User */

?>
<div class="content">
    <div class="title"><h5>Thông Tin Thành Viên #<?php echo ucfirst($model->username); ?></h5></div>
    <div class="widget">
        <div class="head"><h5 class="iList">Thông Tin Đăng Nhập</h5></div>
        <?php $this->widget('zii.widgets.CDetailView', array(
            'data' => $model,
            'attributes' => array(
                'id',
                'username',
                'email',
                array(
                    'name' => 'user_role',
                    'value' => $model["role"]["role_name"],
                ),
                array(
                    'name' => 'user_group',
                    'value' => $model["group"]["group_name"],
                ),
            ),
        )); ?>
    </div>
    <div class="widget">
        <div class="head"><h5 class="iList">Thông Tin Tài Khoản</h5></div>
        <?php $this->widget('zii.widgets.CDetailView', array(
            'data' => $model,
            'attributes' => array(
                array(
                    'label' => 'Full Name',
                    'value' => $model["info"]["full_name"],
                ),
                array(
                    'label' => 'Job',
                    'value' => $model["info"]["job"],
                ),
                array(
                    'label' => 'Company',
                    'value' => $model["info"]["company"],
                ),
                array(
                    'label' => 'Address',
                    'value' => $model["info"]["address"],
                ),
                array(
                    'label' => 'City',
                    'value' => $model["info"]["city"],
                ),
                array(
                    'label' => 'Full Name',
                    'value' => $model["info"]["full_name"],
                ),
                array(
                    'label' => 'Country',
                    'value' => $model["info"]["country"],
                ),
                array(
                    'label' => 'Phone Number',
                    'value' => $model["info"]["phone_number"],
                ),
                array(
                    'label' => 'User Type',
                    'value' => $model["info"]["user_type"],
                ),
                array(
                    'label' => 'Store Channel',
                    'value' => $model["info"]["store_channel"],
                ),
                array(
                    'label' => 'Reference',
                    'value' => $model["info"]["reference"],
                ),


            ),
        )); ?>
    </div>
</div>
