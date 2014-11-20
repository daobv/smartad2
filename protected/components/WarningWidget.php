<?php
Yii::import('zii.widgets.CPortlet');

class WarningWidget extends CPortlet
{
    protected function renderContent(){

        $warnings = Warning::model()->findAllBySql("SELECT * FROM warning WHERE STRCMP('".date("Y-m-d H:i:s")."', expire_at) <= 0 AND status = 1");
        $this->render('warning',array('warnings'=>$warnings));
    }

}
