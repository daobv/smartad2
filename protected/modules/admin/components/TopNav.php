<?php
Yii::import('zii.widgets.CPortlet');

class TopNav extends CPortlet
{
    public function init()
    {
        parent::init();
    }
    //* Multi Ads will be set in backend and load here*/
    protected function renderContent(){
        $admin = User::model()->find('username=:username', array(':username'=>Yii::app()->user->name));
        $this->render('topNav', array('admin' => $admin));
    }
}