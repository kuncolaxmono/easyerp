<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>             
        <link href="<?php echo Yii::app()->request->baseUrl; ?>/bundle/bootstrap/css/bootstrap.min.css" rel="stylesheet">        
        <link href="<?php echo Yii::app()->request->baseUrl; ?>/bundle/bootstrap/css/login.css" rel="stylesheet">        
		<style>
		body{padding-top:20px;}
		.errors {
			color:#df2227;
			font-size:12px;
		}		
		</style>
    </head>
    <body>
        <div class="content">
            <?php echo $content; ?>
        </div>    
    </body>
</html>