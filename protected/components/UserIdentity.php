<?php
class UserIdentity extends CUserIdentity {
    private $id;                
    public function authenticate()   {      
        $username   = strtolower($this->username);
        $user = Yii::app()->db->createCommand()->setFetchMode(PDO::FETCH_OBJ)
                ->select("*")->from("ms_user")->where('user_name = :user_name', array(':user_name' => $username))->queryRow();
        if (empty($user->user_name))
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        else if($user->user_pass !== md5($this->password))
            $this->errorCode = self::ERROR_PASSWORD_INVALID; 
        else {
            $this->id        = $user->user_id; 
            Yii::app()->session['userid']  = $user->user_id;
            $this->errorCode = self::ERROR_NONE;
        }
        return $this->errorCode == self::ERROR_NONE;        
    }

    public function getId() {
        return $this->id;
    }
}