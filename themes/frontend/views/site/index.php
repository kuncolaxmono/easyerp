<div class="container" style="margin-top:30px">
<div class="col-md-4 col-md-offset-4">
<div class="panel panel-default">
<div class="panel-heading"><h3 class="panel-title"><strong>Login EasyERP</strong></h3>
</div>

<div class="panel-body">
<?php
$form = $this->beginWidget('CActiveForm', array(
	'id' => 'login-form',
	'htmlOptions' => array('class' => 'form-horizontal')
));
?> 
<?php
foreach (Yii::app()->user->getFlashes() as $key => $message) {
	echo '<div class="flash-' . $key . '">' . $message . "</div>\n";
}
echo "<span class='errors'>". CHtml::errorSummary($model). "</span>";
?>  
<div style="margin-bottom: 12px" class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
<?php echo $form->textField($model, 'username', array('class' => 'form-control', 'id' => 'login-username', 'placeholder' => 'Username', 'autocomplete' => 'off', 'autofocus' => 'autofocus', 'required' => 'required')); ?>                                  
</div>

<div style="margin-bottom: 12px" class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
<?php echo $form->passwordField($model, 'password', array('class' => 'form-control', 'id' => 'login-password', 'placeholder' => 'Password', 'autocomplete' => 'off', 'required' => 'required')); ?>
</div>

<button type="submit" class="btn btn-success">Login</button>
<?php $this->endWidget(); ?>     
</div>
</div>
</div>
</div>