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
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/bundle/jeasyui/themes/defaults/easyui.css">
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/bundle/jeasyui/themes/icon.css">
        <script src="<?php echo Yii::app()->request->baseUrl; ?>/bundle/bootstrap/js/jquery.min.js"></script>	
        <script src="<?php echo Yii::app()->request->baseUrl; ?>/bundle/jeasyui/jquery.easyui.min.js"></script>				
    </head>
    <body class="easyui-layout">
        <div data-options="region:'north',border:false" style="background:#FFF;padding:10px">ERP Apps</div>
        <div data-options="region:'west',split:true,title:'Navigation'" style="width:250px;padding:10px;">
            <div class="easyui-accordion" style="height:300px;">
                <!-- <div title="About" data-options="iconCls:'icon-tip'" style="overflow:auto;padding:10px;">
                        <ul class="easyui-tree">
                                <li><a href="javascript:void(0)" id="cmu1" onclick ="addPanel('Menu 1', '<?php echo Yii::app()->createUrl('site/test'); ?>');">Menu 1</a></li>                
                <li><a href="javascript:void(0)" id="cmu2" onclick ="addPanel('Menu 2', '<?php echo Yii::app()->createUrl('site/test1'); ?>');">Menu 2</a></li>                
            </ul>		
                </div> -->
                <div title="Menu" data-options="iconCls:'icon-more'" style="padding:10px;">
                    <ul id="tm" name="tm" class="easyui-tree" data-options="url:'<?php ?>',method:'post',animate:true,lines:true,
                        dnd:true, onDblClick: function(node)
                        {
                        addPanel(node.id,node.text);
                        }">
                    </ul>

                </div>		
                <div title="Help" data-options="iconCls:'icon-help'" style="padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:void(0)" id="cmu1" onclick ="addPanel('Menu 1', '<?php echo Yii::app()->createUrl('site/test'); ?>');">Menu 1</a></li>                
                        <li><a href="javascript:void(0)" id="cmu2" onclick ="addPanel('Menu 2', '<?php echo Yii::app()->createUrl('site/test1'); ?>');">Menu 2</a></li>                
                    </ul>		
                </div>
            </div>	
        </div>
        <div data-options="region:'south',border:false" style="background:#FFF;padding:10px;">Copyright 2017-<?php echo date('Y'); ?> PT. ERP Apps</div>
        <div data-options="region:'center',title:'<?php echo $this->pageTitle; ?>'">
            <div id="tt" class="easyui-tabs" fit="true">
            </div>	
        </div>
    </body>
</html>

<script>
    function addPanel(title, url) {
        if ($('#tt').tabs('exists', title)) {
            $('#tt').tabs('select', title);
        } else {
            $('#tt').tabs('add',
                    {
                        title: title,
                        content: '<iframe scrolling=\"yes\" frameborder=\"0\"  src="' + url + '" style=\"width:100%;height:100%;\"></iframe>',
                        closable: true,
                        cache: false
                    }
            );

        }
    }
</script>
