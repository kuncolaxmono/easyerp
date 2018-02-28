<?php
class SiteController extends LoginTheme {

    public function actionIndex() {
        if(empty(Yii::app()->session['userid'])){
            $this->pageTitle = 'Easy ERP';
            $model = new LoginForm;
            if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
                echo CActiveForm::validate($model);
                Yii::app()->end();
            }
            if (isset($_POST['LoginForm'])) {
                $model->attributes = $_POST['LoginForm'];
                if ($model->validate() && $model->login()) {
                    $this->redirect(array('cpanel/index'));
                }
            }
            $this->render('index', array('model' => $model, $this->setTheme()));            
        } 
        else {
            $this->redirect(array('cpanel/index'));
        }
    }

    public function actionLogin(){
        $this->redirect(array('site/index'));
    }
    
	public function actionTest(){
		//echo "tessss";
		$this->renderPartial('test', array('title'=>'Test', $this->setTheme()));    
	}
	
	public function actionTest1(){
		//echo "tessss";
		$this->renderPartial('test1', array('title'=>'Tes1', $this->setTheme()));    
	}
	
    public function actionLogout() {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

}
