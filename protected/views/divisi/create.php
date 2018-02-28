<?php
/* @var $this DivisiController */
/* @var $model MsDivisi */

$this->breadcrumbs=array(
	'Ms Divisis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List MsDivisi', 'url'=>array('index')),
	array('label'=>'Manage MsDivisi', 'url'=>array('admin')),
);
?>

<h1>Create MsDivisi</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>