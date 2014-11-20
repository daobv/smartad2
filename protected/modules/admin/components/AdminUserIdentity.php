<?php

class AdminUserIdentity extends CUserIdentity
{
    public function authenticate()
    {
        $models = User::model()->findByAttributes(array('username'=>$this->username));
        if(count($models) == 0){
            $this->errorCode = self::ERROR_UNKNOWN_IDENTITY;
        }else if($models->password == "" || $models->password != $this->password){
            $this->errorCode=self::ERROR_PASSWORD_INVALID;
        }else{
            if($models->user_role == 1){
                $this->errorCode=self::ERROR_NONE;
                $this->setState("id",$models->id);
                $this->setState('email', $models->email);
                $this->setState('roleId', $models->user_role);
                $this->setState("roleName",$models['role']['role_name']);
            }else{
                $this->errorCode = self::ERROR_UNKNOWN_IDENTITY;
            }
        }
        return $this->errorCode;
    }
}