<?php
Yii::import('zii.widgets.CPortlet');

class Carousel extends CPortlet
{
    protected function renderContent(){
        $sliders = Slider::model()->findAllByAttributes(array('is_show'=>1));
        $this->render('carousel',array('sliders'=>$sliders));
    }
    protected function getAllCatagories(){
        return Category::model()->findAllByAttributes(array('parent_id'=>'0','active'=>1));
    }
}
?>