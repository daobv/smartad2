<?php

class PostController extends Controller
{

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

    /**
     * Creates a new model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     */
    public function actionCreate()
    {
        $model=new StaticPage;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if(isset($_POST['StaticPage']))
        {
            $model->attributes=$_POST['StaticPage'];
            $model->static_category = $_POST['StaticPage']['static_category'];
            $model->type = 0;
            $model->author = Yii::app()->user->id;
            if($_POST['StaticPage']['slug'] == ""){
                $model->slug = $model->getSlug();
                $model->static_type="post";
            }
            if($model->save())
                $this->redirect(Yii::app()->createUrl('admin/post/admin'));
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

        if(isset($_POST['StaticPage']))
        {
            $model->attributes=$_POST['StaticPage'];
            $model->static_category = $_POST['StaticPage']['static_category'];
            if($_POST['StaticPage']['slug'] == ""){
                $model->slug = $model->getSlug();
                $model->static_type = "post";
            }
            if($model->save())
                $this->redirect(Yii::app()->createUrl('admin/post/admin'));
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
     * Manages all models.
     */
    public function actionAdmin()
    {
        $model=new StaticPage('searchPost');
        $model->unsetAttributes();  // clear any default values
        if(isset($_GET['StaticPage']))
            $model->attributes=$_GET['StaticPage'];
            $model->type = 0;
            $model->static_type = "post";
        $this->render('admin',array(
            'model'=>$model,
        ));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return StaticPage the loaded model
     * @throws CHttpException
     */
    public function loadModel($id)
    {
        $model=StaticPage::model()->findByPk($id);
        if($model===null)
            throw new CHttpException(404,'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param StaticPage $model the model to be validated
     */
    protected function performAjaxValidation($model)
    {
        if(isset($_POST['ajax']) && $_POST['ajax']==='static-page-form')
        {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }
}
