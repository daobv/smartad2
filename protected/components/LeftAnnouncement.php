<?php
Yii::import('zii.widgets.CPortlet');

class LeftAnnouncement extends CPortlet
{
    protected function renderContent(){
        $staticPage = new StaticPage();
        $staticPage->type =1;
        $staticPage->static_type = "page";
        $staticPage->boolean = 1;
        $staticPage->search();
        $this->render('leftAnnouncement',array('model'=>$staticPage));
    }
}
