<?php
abstract class Model extends CActiveRecord {
    public  $findByPk;
    private $model;
    private $class;

    public function init(){
        $this->model = get_class($this);
        $this->class = strtolower($this->model);
    }

    public function getSlug(){
        $marTViet = array("à", "á", "ạ", "ả", "ã", "â", "ầ", "ấ", "ậ", "ẩ", "ẫ", "ă", "ằ", "ắ", "ặ", "ẳ", "ẵ", "è", "é", "ẹ", "ẻ", "ẽ", "ê", "ề", "ế", "ệ", "ể", "ễ", "ì", "í", "ị", "ỉ", "ĩ", "ò", "ó", "ọ", "ỏ", "õ", "ô", "ồ", "ố", "ộ", "ổ", "ỗ", "ơ", "ờ", "ớ", "ợ", "ở", "ỡ", "ù", "ú", "ụ", "ủ", "ũ", "ư", "ừ", "ứ", "ự", "ử", "ữ", "ỳ", "ý", "ỵ", "ỷ", "ỹ", "đ", "À", "Á", "Ạ", "Ả", "Ã", "Â", "Ầ", "Ấ", "Ậ", "Ẩ", "Ẫ", "Ă", "Ằ", "Ắ", "Ặ", "Ẳ", "Ẵ", "È", "É", "Ẹ", "Ẻ", "Ẽ", "Ê", "Ề", "Ế", "Ệ", "Ể", "Ễ", "Ì", "Í", "Ị", "Ỉ", "Ĩ", "Ò", "Ó", "Ọ", "Ỏ", "Õ", "Ô", "Ồ", "Ố", "Ộ", "Ổ", "Ỗ", "Ơ", "Ờ", "Ớ", "Ợ", "Ở", "Ỡ", "Ù", "Ú", "Ụ", "Ủ", "Ũ", "Ư", "Ừ", "Ứ", "Ự", "Ử", "Ữ", "Ỳ", "Ý", "Ỵ", "Ỷ", "Ỹ", "Đ", " ", '"');
        $marKoDau = array("a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "i", "i", "i", "i", "i", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u", "y", "y", "y", "y", "y", "d", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "I", "I", "I", "I", "I", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "U", "U", "U", "U", "U", "U", "U", "U", "U", "U", "U", "Y", "Y", "Y", "Y", "Y", "D", "-", '');
        $str = strtolower(str_replace($marTViet, $marKoDau, $this->name));
        $str = str_replace("–", "-", $str);
        $str = str_replace("--", "-", $str);
        $str = str_replace("--", "-", $str);
        return $str;
    }

    public function getNextId(){
        $row = $this->getDbConnection()->createCommand("SHOW TABLE STATUS LIKE '".$this->tableName()."'")->queryRow();
        return $row["Auto_increment"];
    }

    public function getAdminUrl(){
        return Yii::app()->createUrl('admin/'.$this->class.'/view', array('id' => $this->getPrimaryKey()));
    }

    public function getMobileUrl(){
        return Yii::app()->createUrl('mobile/'.$this->class.'/view', array('id' => $this->getPrimaryKey()));
    }

    public function getUrl(){
        return Yii::app()->createUrl($this->class.'/view', array('id' => $this->getPrimaryKey(), 'slug' => $this->getSlug()));
    }

    public function getUserName(){
        $user = User::model()->findByPk($this->user_id);
        return $user->getFullname();
    }

    public static function getRandom($length){
        $string = '';
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        $size = strlen($chars);
        for ($i = 0; $i < $length; $i++) {
            $string .= $chars[rand(0, $size - 1)];
        }
        return $string;
    }

    public function getShortName(){
        if(strlen($this->name) > 30){
            $text_temp = substr($this->name, 0, 30);
            $end_point = strrpos($text_temp, ' ');
            $text_fi = substr($text_temp, 0, $end_point).' ...';
            return $text_fi;
        }else{
            return $this->name;
        }
    }
    function generateRandomString($length = 10) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $randomString;
    }
}