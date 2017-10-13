<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改系统权限</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/demo/demo.css" >
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/themes/default/easyui.css" >
	<link rel="stylesheet" type="text/css" href="<%=basePath%>js/easyui/themes/icon.css" >
	<script type="text/javascript" language="javascript" src="<%=basePath%>js/easyui/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" language="javascript" src="<%=basePath%>js/easyui/jquery.easyui.min.js"></script>
   <script type="text/javascript">
      $(function(){
          $("#menutree").tree({
               url:"<%=basePath%>qxgl/updatemenu?rid="+$("#rid").val()
              ,"animate":"true"
              ,checkbox:true
          })
      });
      function getckval(){
    	 var qx="";
         var tr=$("#menutree").tree("getChecked");       
         for(var i=0;i<tr.length;i++){
           var node=$("#menutree").tree("getNode",tr[i].target);
           if(qx==""){
               qx=node.id;
           }else{
               qx+=","+node.id;
           }         
         }
         var name=$("[name='name']").val();
         var des=$("[name='des']").val();
         ///alert(name+">>"+des+">>"+qx);
         var rid=$("#rid").val();
         window.location="<%=basePath%>qxgl/saveupd?name="+name+"&&des="+des+"&&qx="+qx+"&&rid="+rid;
      }
   </script>
  </head>
  
  <body>
     <form id="mainform">
       <input type="hidden" id="id" name="id" value="${role.id }">
                   角色名称:<input type="text" name="name" value="${role.role_name }"><br>
                   是否停用:<input type="text" name="is_user" value="${role.is_use }"><br>
                   <%--
                   角色权限:<div  id="menutree" style="width:250px"></div>
               <input type="button" value="修改"  onclick="getckval()"> --%>
     </form>
  </body>
</html>
