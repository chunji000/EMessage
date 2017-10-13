 <!-- /index.jsp -->
<%@ page contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>襄阳汽车职业技术学院教务考评系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<META http-equiv="x-ua-compatible" content="ie=EmulateIE7" />
<style> 
body {
	margin: 0;
	padding: 0;
	background: url(images/login/bg.jpg) repeat-x top #4A9DDE;
	font-size: 12px;
}
 
input {
	border: 1px solid #4B9ECC;
	height: 16px;
	line-height: 16px;
}
 
.leftbg {
	background: url(images/login/bg-l.jpg) no-repeat;
	width: 344px;
	height: 171px;
}
 
.logo {
	background: url(images/login/logo.jpg) no-repeat;
	width: 611px;
	height: 101px;
	margin: 0 auto;
	margin-top: 18px;
}
 
.type {
	width: 400px;
	margin: 0 auto;
	color: #fff;
	margin-top: 3px;
}
.STYLE1 {color: #FF0000}
</style>
<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/demo/demo.css" >
<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/themes/default/easyui.css" >
<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/themes/icon.css" >
<script type="text/javascript" language="javascript" src="<%=basePath%>js/easyui/jquery-1.8.0.min.js"></script>
<script type="text/javascript" language="javascript" src="<%=basePath%>js/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript">

	function accountApply(){
		$("#msg").dialog("open");
	}

	function getclose(){
		$("#msg").dialog("close");
	}

	function getreg(){
		var url="login/zhuce";
		$.messager.progress();
		$("#frm").form("submit",{
			url:url,
			onSubmit: function(){
				var isValid = $(this).form('validate');
				//alert(isValid);
				if (!isValid){
					$.messager.progress('close');	// 当form不合法的时候隐藏工具条
				}
				return isValid;	// 返回false将停止form提交 
			}
			,success:function(d){
				$.messager.progress('close');	// 当成功提交之后隐藏进度条
				$("#msg").dialog("close");
			}
		});
	}
</script>
</head>
<body scroll="no" style="text-align: center">
<div class="leftbg"></div>
<div class="logo"></div>
<div class="type" style="text-align: center">
<form name="loginForm" method="post"
	action="login/findReg"
	onsubmit="return checkForm();">
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	style="margin-left: 30px;">
	<tr>
		<td>
		<table width="100%" border="0" cellspacing="0" cellpadding="3"
			style="margin: 20px;">
			<tr>
				<td>用户名：</td>
				<td><input name="emp_no" onKeyUp="value=value.replace(' ','')"
					type="text" size="20" style="width: 140px;" value="101" /></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
				<td><input name="password" onKeyUp="value=value.replace(' ','')"
					type="password" style="width: 140px;" size="20" value="123456" />
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="image"
					style="padding: 0; margin: 0; border: 0; height: 26px;"
					src="<%=basePath%>images/login/btn1.jpg" />&nbsp;<img width="65"
					height="26" border="0" src="<%=basePath%>images/login/btn2.jpg"
					onclick="document.forms.loginForm.reset();" style="cursor: hand;" />
				</td>
			</tr>
		</table>
		</td>
		<td width="112" valign="top"><img src="<%=basePath%>images/login/tit.jpg"
			width="112" height="59" /></td>
	</tr>
</table>
</form>
</div>
 
 
<div
	style="color: white; width: 100%; margin-top: 3em; font-size: 14px; text-align: center;">主办单位：襄阳汽车职业技术学院</div>
		
	</body>
</html>
 

