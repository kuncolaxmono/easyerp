<?php
class CpanelController extends Controller {
    
    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
        );
    }
    
    public function accessRules() {
        return array(
            array('allow',
                'actions' => array(
                    'index'
                ),
                'expression' => 'Yii::app()->user->id',
            ),
            array('deny',
                'users' => array('*'),
            ),
        );
    }


    public function actionIndex() {
        $this->pageTitle = 'Dashboard';
        $this->render('dashboard/index', array($this->setTheme()));
    }
      
}
