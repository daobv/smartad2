<?php
Yii::import('zii.widgets.CPortlet');

class HeaderNavbar extends CPortlet
{
    protected function renderContent(){
         $loginForm = new Login;
        $this->render('headerNavbar',array('categories'=>$this->getAllCatagories(),'model'=>$loginForm));
    }
   protected function getAllCatagories(){
       return Category::model()->findAllByAttributes(array('parent_id'=>'0','active'=>1));
   }
}
