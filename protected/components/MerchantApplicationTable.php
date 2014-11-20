<?php
Yii::import('zii.widgets.CPortlet');

class MerchantApplicationTable extends CPortlet
{
    protected function renderContent(){
        $from = (Yii::app()->getRequest()->getParam("from") == null) ? date('ymd',strtotime('-7 days')) : Yii::app()->getRequest()->getParam("from");

        $to = (Yii::app()->getRequest()->getParam("to") ==  null) ? date('ymd',time()) : Yii::app()->getRequest()->getParam("to");
        $user_id = Yii::app()->user->id;
        $user = User::model()->findByPk($user_id);
        $application = $user['application'];
        if(count($application)==0){
            $application = Application::model()->findAll(array("order"=>"id DESC"));
        }
        $data = array(0=>array('app_id'=>0,'day_click'=>0,'revenue'=>0));
            foreach($application as $key=>$app){
                $interactions = Interaction::model()->getMerchantInteraction($app->id,$from,$to);
                $data[$key]['app_id'] = $app->id;
                if(!$interactions){
                    $data[$key]['revenue'] =  0;
                    $data[$key]['day_click'] = 0;
                    $data[$key]['success'] = 0;
                }else{
                    $data[$key]['revenue'] =  $app->merchant_price*$interactions->success;
                    $data[$key]['day_click'] = $interactions->day_click;
                    $data[$key]['success'] = $interactions->success;
                }
            }
        $this->render('merchantApplicationTable',array('data'=>$data));
    }

}
