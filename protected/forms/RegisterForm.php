<?php
class RegisterForm extends  CFormModel{
    public $full_name;
    public $username;
    public $password;
    public $rePassword;
    public $identity_card;
    public $phoneNumber;
    public $email;
    public $verifyCode;
    public $acceptRules;
    public function rules(){
        return array(
            // username and password are required
            array('username,email,password,rePassword,phoneNumber', 'required','message'=>"Vui lòng nhập {attribute}"),
            array('username', 'length', 'min'=>3,'max'=>30,'tooLong'=>'Tên không được dài hơn 30 ký tự','tooShort'=>'Tên không được ngắn hơn 3 ký tự'),
            array('password', 'length', 'min'=>3,'max'=>10,'tooLong'=>'Mật khẩu không được dài hơn 10 ký tự','tooShort'=>'Tên không được ngắn hơn 3 ký tự'),
            array('identity_card,phoneNumber','numerical', 'integerOnly'=>true,'message'=>'Số điện thoại không hợp lệ'),
            array('acceptRules', 'boolean'),
            array('acceptRules','required','message'=>"Bạn chưa đồng ý với điều khoản của chúng tôi"),
            array('username','unique','enableClientValidation'=>true,
                'attributeName'=>'username','className'=>'User','skipOnError'=>false,
                'message'=>"'{value}' đã tồn tại"),
            array('email','unique','enableClientValidation'=>true,
                'attributeName'=>'email','className'=>'User','skipOnError'=>false,
                'message'=>"'{value}' đã tồn tại"),
            array('rePassword', 'compare', 'compareAttribute'=>'password','message'=>"Mật khẩu không khớp"),
            array('email', 'email', 'allowEmpty'=>false,'message'=>'Email không hợp lệ'),
            array('verifyCode', 'CaptchaExtendedValidator', 'allowEmpty'=>!CCaptcha::checkRequirements(),"message"=>"Captcha không hợp lệ"),
        );
    }
    public function attributeLabels(){
        return array(
            'full_name'=>'họ và tên',
            'username'=>'tên đăng nhập',
            'password'=>'mật khẩu',
            'identity_card'=>'số CMT',
            'rePassword'=>"xác nhận mật khẩu",
            'phoneNumber'=>'số điện thoại',
            'verifyCode' =>"mã captcha",
            'acceptRules' => "Đồng Ý"
        );
    }
}