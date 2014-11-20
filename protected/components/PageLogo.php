<?php
Yii::import('zii.widgets.CPortlet');

class PageLogo extends CPortlet
{
    protected function renderContent(){
        $this->render('pageLogo');
    }
}
