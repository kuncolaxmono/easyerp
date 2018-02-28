<?php
class EWebUser extends CWebUser {    
    protected $_model;
    
    protected function loadUser() {
        if($this->_model === null) {            
            $this->_model = Yii::app()->db->createCommand()->setFetchMode(PDO::FETCH_OBJ)
                            ->select("user_id, user_name")
                            ->from("ms_user")                            
                            ->where('user_id = :user_id', array(':user_id' => $this->id))
                            ->queryRow();            
        }
        return $this->_model;
    }    
    
    function isUsername(){
        $user = $this->loadUser();
        if($user)
            return $user->user_name;
        return false;
    }
        
    function isUserid(){
        $user = $this->loadUser();
        if($user)
            return $user->user_id;
        return false;
    }    
        
}
?>