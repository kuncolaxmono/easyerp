<?php
/* @var $this DivisiController */
/* @var $model MsDivisi */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'divisi_id'); ?>
		<?php echo $form->textField($model,'divisi_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'divisi_nama'); ?>
		<?php echo $form->textField($model,'divisi_nama',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'divisi_delete'); ?>
		<?php echo $form->textField($model,'divisi_delete'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->