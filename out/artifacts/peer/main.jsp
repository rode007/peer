<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>JQuery easyui demo</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.4.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.4.1/themes/icon.css">
	<script type="text/javascript" src="jquery-easyui-1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript">
		function user(title){
			if($("#tt").tabs("exists",title)){
				$("#tt").tabs("select",title);
			}else{
				$('#tt').tabs('add',{
				    title:'用户管理',    
				    href:'<%=basePath%>users/userlists',
				    closable:true   
				});  
			}
		}

</script>
</head>

<body class="easyui-layout">
  <div id="cc" class="easyui-layout" style="width:100%;height:600px;">   
    <div data-options="region:'north',border:false" style="height:100px;">
    	<img alt="logo" src="images/logo.png" style="padding: 20px 0 0 20px;">
    </div>   
    <div data-options="region:'west',title:'菜单',split:true" style="width:200px;">
    	<div id="aa" class="easyui-accordion" data-options="fit:true,border:false">   
    		<div title="用户管理" data-options="iconCls:'icon-save',selected:true" style="overflow:auto;padding:10px;">   
		        <a id="btn" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true" onclick="user('用户管理')">用户管理</a>  
    		</div>   
    		<div title="新闻管理" data-options="iconCls:'icon-reload'" style="padding:10px;">   
        		<a href="#" class="easyui-linkbutton" data-options="plain:true">新闻管理</a>   
    		</div>   
    		<div title="系统管理" data-options="iconCls:'icon-reload'" style="padding:10px;">   
        		<a href="#" class="easyui-linkbutton" data-options="plain:true">修改密码</a> <br/>
        		<a href="#" class="easyui-linkbutton" data-options="plain:true">刷新系统缓存</a>   
    		</div>   
</div> 
    </div>  
     
    <div data-options="region:'center',border:false,plain:true">
    	<div id="tt" class="easyui-tabs" fit=true>   
		    <div title="首页" style="text-align: center;font-size: 24px;">   
		        <p>欢迎来到what21后台管理系统</p>    
		    </div>   
		</div> 
   </div>   
</div>  
<div style="height: 100px;text-align: center;font-size: 12px;">
	<p>版权所有,转载请著名出处</p>
</div>
 
    
</body>
</html>