<?php
/* @var $this DivisiController */
/* @var $model MsDivisi */

$this->breadcrumbs=array(
	'Ms Divisis'=>array('index'),
	$model->divisi_id=>array('view','id'=>$model->divisi_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List MsDivisi', 'url'=>array('index')),
	array('label'=>'Create MsDivisi', 'url'=>array('create')),
	array('label'=>'View MsDivisi', 'url'=>array('view', 'id'=>$model->divisi_id)),
	array('label'=>'Manage MsDivisi', 'url'=>array('admin')),
);
?>

<h1>Update MsDivisi <?php echo $model->divisi_id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>