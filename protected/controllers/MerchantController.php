<?php

class MerchantController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	//public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
        if (Yii::app()->user->isGuest)
            $this->redirect("user/login");
        else {
            if (Yii::app()->user->roleId == 6 || Yii::app()->user->roleId == 5) {
                $this->redirect(Yii::app()->createUrl("user/revenue"));
                exit();
            }
        }
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}
    /**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update','index','view'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Merchant;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Merchant']))
		{
			$model->attributes=$_POST['Merchant'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Merchant']))
		{
			$model->attributes=$_POST['Merchant'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
        $userId = Yii::app()->user->id;
        $user = User::model()->findByPk($userId);
        $application = $user['application'];
        if(count($application)==0){
            $application = Application::model()->findAll(array("order"=>"id DESC"));
        }
        $from = (Yii::app()->getRequest()->getParam("from") == null) ? date('ymd',strtotime('-7 days')) : Yii::app()->getRequest()->getParam("from");
        $to = (Yii::app()->getRequest()->getParam("to") ==  null) ? date('ymd',time()) : Yii::app()->getRequest()->getParam("to");
        $todayRevenue = 0;
        $dateParams = array();
        $clickArray = array();
        $actionArray = array();
        $monthRevenue = 0;
        //$interactions = Interaction::model()->getInteractionByDate($userId,$from,$to);
        while($from <=  $to){
            $daySplit = str_split($from,2);
            $dateParams[] = $daySplit[2]."/".$daySplit[1];
            $sumClick = 0;
            $sumAction = 0;
            foreach($application as $app){
                $interaction = Interaction::model()->getMerchantInteraction($app->id,$from,$from);
                if(!$interaction){
                    $sumClick += 0;
                    $sumAction += 0;
                }else{
                     $sumClick += (int)$interaction->day_click;
                     $sumAction += (int)$interaction->success;
                    $monthRevenue += $interaction->success*$app->merchant_price;
                    if($from == $to){
                        $todayRevenue += $interaction->success*$app->merchant_price;
                    }

                }
            }
            $clickArray[] = $sumClick;
            $actionArray[] = $sumAction;
            $date = date('Y',time());
            $dateParam = $date."-".$daySplit[1]."-".$daySplit[2];
            $from = date('ymd',(strtotime('+1 days', strtotime($dateParam))));
        }

        $this->render('index',array('todayRevenue'=>$todayRevenue,
            'dateParams'=>$dateParams,'clickArray'=>$clickArray,
            'actionArray'=>$actionArray,
            'monthRevenue'=>$monthRevenue));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Merchant('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Merchant']))
			$model->attributes=$_GET['Merchant'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Merchant the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Merchant::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Merchant $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='merchant-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
