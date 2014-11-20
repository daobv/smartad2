<?php
return CMap::mergeArray(
    require(dirname(__FILE__) . '/main.php'),
    array(
        'components' => array(
            // uncomment the following to enable URLs in path-format
            'urlManager' => array(
                'urlFormat' => 'path',
                'showScriptName' => false,
                'rules'     => array(
                    'chuyen-muc/<slug>' => 'category/index',
                    'static-page/<slug>' => 'staticPage/index',
                    'thong-bao/<slug>' => 'staticPage/announcement',
                    'merchant' => 'merchant/index',
                    'application' => 'application/index',
                    'application/<slug>' => 'application/view',
                    'user/account-info' => 'user/info',
                    'user/payment-info' => 'user/paymentInfo',
                    'cpi/<user>/<app_code>' =>'interaction/create',
                    'incoming/<app_code>/<code>' =>'interaction/update',
                    'dang-nhap' => 'user/login',
                ),
            ),
        ),
    )
);
