<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lxsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/demo/demo.css" >
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/themes/default/easyui.css" >
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/themes/icon.css" >
	<script type="text/javascript" language="javascript" src="<%=basePath%>js/easyui/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" language="javascript" src="<%=basePath%>js/easyui/jquery.easyui.min.js"></script>
	

  </head>
  
  <script language="javascript" type="text/javascript">
	
		//上传按钮
		function shangchuan(){
			$('#scwin').window('open');
		}
		
		//开始上传
		function dosubmit(){
			var url="<%=basePath%>login/uploadfiles";
			$.messager.progress();
			
			$("#fileForm").form("submit",{
				url:url,
				method:"post",
				success:function(data){
					$.messager.progress('close');
					fid = data.split("@")[1];
					if(data!="errors"){
						$.messager.alert('提示','附件上传成功,当前附件ID为:'+fid);
						$('#scwin').window('close');
					}else{
						$.messager.alert('提示','附件上传失败，请稍候再试');
					}
				}
			});
		}

		//关闭
		function closescwin(){
			$('#scwin').window('close');
		}

		
		//查看附件  并下载
	  	function ckfujian(){
			var v_sid=$("[name='sid']").val();
			//alert(v_sid);
			//初始化附件div
			$("#filelist").datagrid({
				url:"<%=basePath%>xmlx/ckStepfileBySid?sid="+v_sid
				,columns:[[
							{field:"pid",title:"项目ID",align:"center",width:"90PX"},
							{field:"fn",title:"文件名称",align:"center",width:"120PX"},
							{field:"tp",title:"文件类型",align:"center",width:"90PX"},
							{field:"siz",title:"文件大小(KB)",align:"center",width:"100PX"},
							{field:"tim",title:"创建时间",align:"center",width:"120PX"},
							{field:"cz",title:"操作",align:"center",width:"100PX",formatter:function(val,data,index){
								var str = "<a href='<%=basePath%>xmlx/fileDown/"+data.sfid+"'>下载</a>";
								return str;
							}}		
						]]
				,singleSelect:true
			});
			$('#file').window('open');
	  	}
		  	
  	  	
  </script>
  
  <body>
  	<input type="button" value="附加上传" onclick="shangchuan()"/><br/>
  	<a  data-options="plain:true" href="<%=basePath %>/login/fileDown/22">下载福建</a>
  	
    <!-- 文件上传  -->
    	<div id="scwin" class="easyui-window" title="文件上传" style="width:400px;height:300px" 
  			data-options="modal:true,closed:true,collapsible:false,minimizable:false,maximizable:false">
  			<form id="fileForm" name="fileForm" method="post" enctype="multipart/form-data">
    			<input type="file" name="files" size="40"/>
    		
    			<div data-options="region:'south',border:false" style="padding:5px 0 0;">
					<a  data-options="plain:true" href="javascript:dosubmit()">开始上传</a>
					<a data-options="plain:true" href="javascript:void(0)" onclick="javascript:closescwin()">关闭</a>
    			</div>
    		</form>
    	</div>
    
        <div id="filea" class="easyui-window" title="附件信息" style="width:650px;height:350px" 
	  		data-options="modal:true,closed:true,collapsible:false,minimizable:false,maximizable:false">
	  		<table id="filelist" class="easyui-datagrid"></table>
	  	</div>
  </body>
</html>
