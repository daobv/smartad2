<?php
Yii::import('zii.widgets.CPortlet');

class BreadCrumb extends CPortlet
{
    protected function renderContent(){
        $this->render('breadCrumb');
    }
}
