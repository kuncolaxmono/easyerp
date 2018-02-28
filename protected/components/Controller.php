<?php
class Controller extends CController {    
    public $breadcrumbs = array();    
    public function setTheme(){
        return Yii::app()->theme = 'backend';
    }
}
