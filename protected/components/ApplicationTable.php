<?php
Yii::import('zii.widgets.CPortlet');

class ApplicationTable extends CPortlet
{
    protected function renderContent(){
        $from = (Yii::app()->getRequest()->getParam("from") == null) ? date('ymd',strtotime('-7 days')) : Yii::app()->getRequest()->getParam("from");

        $to = (Yii::app()->getRequest()->getParam("to") ==  null) ? date('ymd',time()) : Yii::app()->getRequest()->getParam("to");
        $user_id = Yii::app()->user->id;
        $data = array(0=>array('app_id'=>0,'day_click'=>0,'revenue'=>0));
           $interactions = Interaction::model()->getInteractionByUser($user_id,$from,$to);
            if(count($interactions) > 0){
                foreach($interactions as $key=> $interaction){
                    if($interactions){
                        $data[$key]['app_id'] = $interaction->app_id;
                        $data[$key]['day_click'] = $interaction->day_click;
                        $data[$key]['success'] = $interaction->success;
                        $data[$key]['revenue'] = $interaction->revenue;
                    }
                }
            }
        $this->render('applicationTable',array('data'=>$data));
    }

}
