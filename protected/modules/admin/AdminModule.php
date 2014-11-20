<?php

class AdminModule extends CWebModule
{
	public function init()
	{
		// this method is called when the module is being created
		// you may place code here to customize the module or the application

		// import the module-level models and components
        $this->setComponents(array(
                'errorHandler' => array(
                    'errorAction' => 'site/error'),
                'user' => array(
                    'class' => 'CWebUser',
                    'loginUrl' => Yii::app()->createUrl('admin/user/login'),
                )
            )
        );
        Yii::app()->user->setStateKeyPrefix('_admin');
        $this->setImport(array(
            'admin.models.*',
            'admin.components.*',
            'admin.views.*',
        ));
        Yii::app()->theme = "backend";
        parent::init();
	}

	public function beforeControllerAction($controller, $action)
	{

        if(parent::beforeControllerAction($controller, $action))
        {

            $route = Yii::app()->controller->module->id ."/".$controller->id . '/' . $action->id;
            $publicPages = array(
                'admin/user/login',
            );

            if (Yii::app()->user->isGuest && !in_array($route, $publicPages)){
                /*set the return URL*/
                $request=Yii::app()->request->getUrl();
                Yii::app()->user->returnURL=$request;

                /*redirect to module login form*/
                Yii::app()->getModule("admin")->user->loginRequired();
            }
            return true;
        }
        else
            return false;
	}
}
