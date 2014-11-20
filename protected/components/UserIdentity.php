<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{
    /**
     * Authenticates a user.
     * The example implementation makes sure if the username and password
     * are both 'demo'.
     * In practical applications, this should be changed to authenticate
     * against some persistent user identity storage (e.g. database).
     * @return boolean whether authentication succeeds.
     */
    public function authenticate()
    {

        $models = User::model()->findByAttributes(array('username' => $this->username));
        if (count($models) == 0) {
            $this->errorCode = self::ERROR_UNKNOWN_IDENTITY;
        } else if ($models->password == "" || $models->password != $this->password) {
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        } else {
            $this->errorCode = self::ERROR_NONE;
            $this->setState("id", $models->id);
            $this->setState('email', $models->email);
            $this->setState('roleId', $models->user_role);
            $this->setState("roleName", $models['role']['role_name']);
        }
        return $this->errorCode;
    }
}