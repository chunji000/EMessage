<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>襄阳汽车职业技术学院教务考评系统</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 下拉菜单，单独引用的 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/demo/demo.css" >
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/themes/default/easyui.css" >
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/themes/icon.css" >
	<script type="text/javascript" language="javascript" src="<%=basePath%>js/easyui/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" language="javascript" src="<%=basePath%>js/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript">
	
		$(function(){
				var vrid=$("#rid").val();
				$("#xmgl").tree({
					//"url":"<%=basePath%>login/queryallqx?id="+vrid
					"url":"<%=basePath%>jsp/index/tree.json"
					,"animate":"true"
					,"onClick":changmenu
				});
		});

		
		function changmenu(obj){
			//不为空，说明是一个具体的菜单
			if(obj.attributes!=null){
				var b =  $("#maintab").tabs("exists",obj.text);
				//alert(obj.attributes.url);
				//var tab =  $("#maintab").tabs("getTab",obj.text);
				
				//如果选项卡不存在，则去新增选项卡
				if(b){
					 $("#maintab").tabs("select",obj.text);
				}else{
					$('#maintab').tabs('add',{
						title:obj.text,
						content: "<iframe scrolling=yes frameborder=0 width='100%px' height='100%px' src='<%=basePath%>"+obj.attributes.url+"'></iframe>",
						closable: true
					});
				}
			}
		}
		function func5(){
			var info = "当前时间：" ;
			var dt = new Date();
			var dtstr = dt.toLocaleString();       
			var weeks = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
			var index = dt.getDay();
			info += dtstr + " " + weeks[index];
			time1.innerHTML = info;
			setTimeout(func5,1000); 
		}
		window.onload=function(){
			time1 = document.getElementById('tt');
			func5();
		}
		function closeAll() {
			$(".tabs li").each(function(index, obj) {
			      //获取所有可关闭的选项卡
				  var tab = $(".tabs-closable", this).text();
				  $(".easyui-tabs").tabs('close', tab);
			});
		}
		function func(){
			window.parent.location.href = "<%=basePath%>";
		}
	
	</script>
  </head>
  <body class="easyui-layout">
         <div data-options="border:false,split:true,region:'north'"  style="height: 110px;background-color:#2C79D3;" >
    	<div style="background-image: url('<%=basePath%>images/top.jpg');height: 73px">&nbsp;</div>
    	<div style="position:absolute; top:60px ; width: 1000px" align="right">
    		<a class="aa" href="#" style="color: white; text-decoration: none" onmouseover="this.style.color='black'" onmouseout="this.style.color='white'">修改密码</a>
    		<a class="aa" href="javascript:func()" style="color: white; text-decoration: none" onmouseover="this.style.color='black'" onmouseout="this.style.color='white'">退出系统</a>
    	</div>
    	<div style="background-color:#E0ECFF;">

    		 <table width="100%">
    		 	<tr>
    		 		<td class="aa">&nbsp;&nbsp;<strong>您好!
    		 		<input type="hidden" name="rid" id="rid" value="${acc.rid }"/>
    		 		&nbsp;${acc.name }
    		 			&nbsp;&nbsp;所在部门：</strong></td>
    		 		<td class="aa"><div id="tt" align="right"></div></td>
    		 		<td align="right">
    		 			<a href="javascript:closeAll()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" >关闭全部</a>
    		 		</td>
    		 	</tr>
    		 </table>	
    	</div>
    </div>
    <div data-options="region:'west',title:'系统功能菜单',split:true"  style="width:155px">
    	<ul id="xmgl"></ul>
    </div>
    <div data-options="region:'center',split:true">
		<div id="maintab" class="easyui-tabs" fit="true"></div>
	</div>
  </body>
</html>
