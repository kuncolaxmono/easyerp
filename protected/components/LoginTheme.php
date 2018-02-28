<?php
class LoginTheme extends CController{       
    public $breadcrumbs = array();
    public function setTheme(){
        return Yii::app()->theme = 'frontend';
    }    
}