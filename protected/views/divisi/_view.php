<?php
/* @var $this DivisiController */
/* @var $data MsDivisi */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('divisi_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->divisi_id), array('view', 'id'=>$data->divisi_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('divisi_nama')); ?>:</b>
	<?php echo CHtml::encode($data->divisi_nama); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('divisi_delete')); ?>:</b>
	<?php echo CHtml::encode($data->divisi_delete); ?>
	<br />


</div>