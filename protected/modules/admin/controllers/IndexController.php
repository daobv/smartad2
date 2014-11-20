<?php

class IndexController extends Controller{

    public function actionIndex(){
        $userId = Yii::app()->user->id;
        $from = (Yii::app()->getRequest()->getParam("from") == null) ? date('ymd',strtotime('-7 days')) : Yii::app()->getRequest()->getParam("from");
        $to = (Yii::app()->getRequest()->getParam("to") ==  null) ? date('ymd',time()) : Yii::app()->getRequest()->getParam("to");
        $todayRevenue = Interaction::model()->getTodayRevenue();
        $dateParams = array();
        $clickArray = array();
        $actionArray = array();
        //$interactions = Interaction::model()->getInteractionByDate($userId,$from,$to);
        while($from <=  $to){
            $interaction = Interaction::model()->getInteractionByDate($userId,$from,$from);
            if(!$interaction){
                $daySplit = str_split($from,2);
                $dateParams[] = $daySplit[2]."/".$daySplit[1];
                $clickArray[] = (int)0;
                $actionArray[] = (int)0;
            }else{
                $daySplit = str_split($interaction->date,2);
                $dateParams[] = $daySplit[2]."/".$daySplit[1];
                $clickArray[] = (int)$interaction->day_click;
                $actionArray[] = (int)$interaction->success;
            }
            $date = date('Y',time());
            $dateParam = $date."-".$daySplit[1]."-".$daySplit[2];
            $from = date('ymd',(strtotime('+1 days', strtotime($dateParam))));
        }
        $monthRevenue = Interaction::model()->getMonthRevenue($userId);
        $this->render('index',array('todayRevenue'=>$todayRevenue,
            'dateParams'=>$dateParams,'clickArray'=>$clickArray,
            'actionArray'=>$actionArray,
            'monthRevenue'=>$monthRevenue));
    }
}