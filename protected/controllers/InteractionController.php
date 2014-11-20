<?php

class InteractionController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
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
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view','create','update'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('update'),
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
	public function actionCreate($user,$app_code)
	{
        $user = User::model()->findByAttributes(array('username'=>$user));
        $application = Application::model()->findByAttributes(array('app_code'=>$app_code));
		$model=new Interaction;
        $interaction_info = new InteractionInfo();
        $hashCode = "";
        while(true){
            $hashCode = $model->generateRandomString();
            $interactionInfoData = InteractionInfo::model()->findByAttributes(array('hash_code'=>$hashCode));
            if(!$interactionInfoData)
                break;
        }
        $redirectUrl = str_replace("{hashCode}",$hashCode,$application->link);
        $date=date('ymd',time());
        $interaction = Interaction::model()->findByAttributes(array('app_id'=>$application->id,'user_id'=>$user->id,'date'=>$date));

        if($interaction){
            $interaction->day_click += 1;
            $interaction->save();
            $interaction_info->interaction_id = $interaction->id;
            $interaction_info->ip = $_SERVER['REMOTE_ADDR'];
            $interaction_info->hash_code = $hashCode;
            $interaction_info->save();
        }else{
            $model->user_id = $user->id;
            $model->app_id = $application->id;
            $model->date = $date;
            $model->day_click = 1;
            $model->save();
            $interaction_info->interaction_id = $model->id;
            $interaction_info->ip = $_SERVER['REMOTE_ADDR'];
            $interaction_info->hash_code = $hashCode;
            $interaction_info->save();
        }
        $this->redirect($redirectUrl);
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($app_code)
	{
        $hash_code = Yii::app()->request->getParam("hash_code");
        $interactionInfo = InteractionInfo::model()->findByAttributes(array('hash_code'=>$hash_code));
        if($interactionInfo && $interactionInfo->status == 0){
            $requestIp = $_SERVER['REMOTE_ADDR'];
            $allowIp = ActivationIp::model()->findByAttributes(array('ip'=>$requestIp,'status'=>1));
            if($allowIp){
                $interactionInfo->status = 1;
                $interactionInfo->save();
                $interaction = Interaction::model()->findByPk($interactionInfo->interaction_id);
                if($interaction){
                    $interaction->success += 1;
                    $application = Application::model()->findByPk($interaction->app_id);
                    if($application && $application->app_code == $app_code){
                        $interaction->revenue += $application->price;
                    }
                    $interaction->save();
                }
            }
            $log = new ActivationLog();
            $log->ip = $requestIp;
            $log->hash_code = $hash_code;
            $log->save();
        }

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
		$dataProvider=new CActiveDataProvider('Interaction');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Interaction('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Interaction']))
			$model->attributes=$_GET['Interaction'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Interaction the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Interaction::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Interaction $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='interaction-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
