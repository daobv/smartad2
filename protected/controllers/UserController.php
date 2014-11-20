<?php

class UserController extends Controller
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
				'actions'=>array('index','view','login','register','captcha',),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update','revenue','logout','info','PaymentInfo','closewarning'),
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
    public function init(){
        parent::init();
        Yii::$classMap = array_merge( Yii::$classMap, array(
            'CaptchaExtendedAction' => Yii::getPathOfAlias('ext.captchaExtended').DIRECTORY_SEPARATOR.'CaptchaExtendedAction.php',
            'CaptchaExtendedValidator' => Yii::getPathOfAlias('ext.captchaExtended').DIRECTORY_SEPARATOR.'CaptchaExtendedValidator.php'
        ));
    }
    public function actions(){
        return array(
            'captcha'=>array(
                'class'=>'CaptchaExtendedAction',
                // if needed, modify settings
                'mode'=>CaptchaExtendedAction::MODE_MATH,
            ),
        );
    }
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
		$model=new User;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['User']))
		{
			$model->attributes=$_POST['User'];
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

		if(isset($_POST['User']))
		{
			$model->attributes=$_POST['User'];
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
		$dataProvider=new CActiveDataProvider('User');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new User('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['User']))
			$model->attributes=$_GET['User'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return User the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=User::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param User $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='user-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
    public function actionRegister(){
        $model = new RegisterForm();
        $sent = false;
        $this->performAjaxValidation($model);
        if(isset($_POST['RegisterForm'])){
            $user = new User();
            $user->attributes = $_POST['RegisterForm'];
            $user->password = $user->hashPassword($user->password);
            $user->user_role = 6;
            if($user->save()){
                Yii::app()->user->setFlash('register-success', "Chúc mừng bạn đã đăng ký thành công tài khoản tại hệ thống SmartAd!");
                $login = new Login;
                $login->attributes = $user->attributes;
                $login->password = $_POST['RegisterForm']['password'];
                if($login->validate() && $login->login()){
                    $this->redirect(Yii::app()->createUrl('user/revenue'));
                }
            }
        }
        $this->render("register",array('model'=>$model));
    }
    public function actionLogin()
    {

        if(!Yii::app()->user->isGuest){
            $this->redirect(Yii::app()->createUrl('user/revenue'));
        }
        $model=new Login;
        if(isset($_POST['Login']))
        {
            $model->attributes=$_POST['Login'];
            if($model->validate() && $model->login()){
                $this->redirect(Yii::app()->createUrl('user/revenue'));
            }
        }

        // display the login form
        $this->render('login',array('model'=>$model));
    }
    public function actionLogout()
    {
        Yii::app()->user->logout();
        $this->redirect('/');
    }
    public function actionRevenue()
    {
        if (Yii::app()->user->roleId == 3 || Yii::app()->user->roleId == 7) {
            $this->redirect(Yii::app()->createUrl("merchant"));
            exit();
        }
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
        $weekRevenue = Interaction::model()->getWeekRevenue($userId);
        $today = date('ymd',time());
        $date = date("Y-m-d H:i:s");
        $thisWeek = date("ymd",strtotime( '-1 week' , strtotime($date)));
        $todayPercent=Interaction::model()->percentActionPerClick($userId,$today,$today);
        $thisWeekPercent=Interaction::model()->percentActionPerClick($userId,$thisWeek,$today);
        $thisMonth= Interaction::model()->percentActionPerClick($userId, "1".date('ymd',time()),$today);
        $staticPage = new StaticPage();
        $staticPage->type =1;
        $staticPage->static_type = "page";
        $staticPage->boolean = 1;
        $staticPage->search();
        $this->render('revenue',array('todayRevenue'=>$todayRevenue,
            'dateParams'=>$dateParams,'clickArray'=>$clickArray,
            'actionArray'=>$actionArray,
            'weekRevenue'=>$weekRevenue,
            'todayPercent'=>$todayPercent,
            'thisWeekPercent'=>$thisWeekPercent,
            'thisMonth'=>$thisMonth,
            'staticPage'=>$staticPage,
            'monthRevenue'=>$monthRevenue));
       // $this->redirect('/');
    }
    public function actionInfo(){
        $userId = Yii::app()->user->id;
        $model = $this->loadModel($userId);
        unset($model->password);
        if(isset($_POST['User']))
        {
            $model->attributes=$_POST['User'];
            if($model->password != ""){
                $model->password = $model->hashPassword($model->password);
            }else{
                unset($model->password);
            }
            $model->username = Yii::app()->user->name;
            $model->email = Yii::app()->user->email;
            if($model->save()){
                $userInfo = UserInfo::model()->findByAttributes(array('user_id'=>$model->id));
                $userInfo->attributes=$_POST['UserInfo'];
                if($userInfo->save()){
                    Yii::app()->user->setFlash('success', "Cập nhật thành công!");
                }else{
                    Yii::app()->user->setFlash('error', "Lỗi xảy ra khi cập nhật!");
                }
            }
        }
        $this->render('info',array('model'=>$model));
    }
    public function actionPaymentInfo(){
        $userId=Yii::app()->user->id;
        $model = PaymentInfo::model()->findByAttributes(array('user_id'=>$userId));
        if(!$model){
            $model = new PaymentInfo();
            $model->user_id = $userId;
            $model->search();
        }
        $this->performAjaxValidation($model);
        if(isset($_POST['PaymentInfo']))
        {
            $model->attributes=$_POST['PaymentInfo'];
            if(!$model->save()){
                Yii::app()->user->setFlash('success', "Cập nhật thành công!");
            }else{
                Yii::app()->user->setFlash('error', "Lỗi xảy ra khi cập nhật!");
            }

        }
        $this->render('paymentInfo',array('model'=>$model));
    }
    public function actionCloseWarning(){
        $id= $_GET['id'];
        $_SESSION["$id"] = 1;
    }
}
