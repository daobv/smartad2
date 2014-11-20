<?php

class StaticPageController extends Controller
{
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	public function accessRules()
	{
		return array(
            array('allow',
                'actions'=>array('admin','create', 'update', 'delete'),
                'users'=>array('@'),
            ),
            array('deny', // deny all users
                //'actions'=>array('index','view', 'list'),
                'users' => array('*'),
            ),
		);
	}

	public function actionCreate()
	{
		$model=new StaticPage;
		if(isset($_POST['StaticPage']))
		{
			$model->attributes=$_POST['StaticPage'];
            $model->author = Yii::app()->user->id;
            if($_POST['StaticPage']['slug'] == ""){
                $model->slug = $model->getSlug($model->title);
            }
			if($model->save())
				$this->redirect(Yii::app()->createUrl('admin/StaticPage/admin'));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		if(isset($_POST['StaticPage']))
		{
            $model->attributes=$_POST['StaticPage'];
            //Yii::app()->end();
            $model->author = Yii::app()->user->id;
            if($_POST['StaticPage']['slug'] == ""){
                $model->slug = $model->getSlug($model->title);
            }
			if($model->save())
                $this->redirect(Yii::app()->createUrl('admin/StaticPage/admin'));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	public function actionAdmin()
	{
		$model=new StaticPage('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['StaticPage']))
			$model->attributes=$_GET['StaticPage'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	public function loadModel($id)
	{
		$model=StaticPage::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='static-page-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
