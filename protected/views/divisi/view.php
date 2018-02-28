<?php
/* @var $this DivisiController */
/* @var $model MsDivisi */

$this->breadcrumbs=array(
	'Ms Divisis'=>array('index'),
	$model->divisi_id,
);

$this->menu=array(
	array('label'=>'List MsDivisi', 'url'=>array('index')),
	array('label'=>'Create MsDivisi', 'url'=>array('create')),
	array('label'=>'Update MsDivisi', 'url'=>array('update', 'id'=>$model->divisi_id)),
	array('label'=>'Delete MsDivisi', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->divisi_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage MsDivisi', 'url'=>array('admin')),
);
?>

<h1>View MsDivisi #<?php echo $model->divisi_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'divisi_id',
		'divisi_nama',
		'divisi_delete',
	),
)); ?>
