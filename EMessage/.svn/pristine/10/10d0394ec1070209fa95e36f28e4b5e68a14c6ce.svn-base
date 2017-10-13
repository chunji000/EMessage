<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>系统权限管理</title>
    
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
  <script type="text/javascript">
     $(function(){
       $("#dis").dialog({
      	        title:"新增角色"
               ,width:400
               ,height:400
               ,closed:true
               ,onClose:function(){
                    $("#nx").val(null);
                    $("#name").val(null);
                    $("#des").val(null);
                    $("#qx").val(null);
               }
               ,buttons:[
                         {text:"新增",handler:saveadd}
                        ,{text:"取消",handler:function(){
                            $("#dis").dialog("close");
                            $("#sss").form("clear");
                        }}
                 ]
          });
         $("#tab").datagrid({
             url:"<%=basePath%>qxgl/queryjs"
            ,fitColumns:true
      		,rownumbers:true
      		,singleSelect:true
      		,fit:true
      		,cache:false
      		,pagination:true
            ,columns:[[
                  {title:"角色名",field:"role_name"}
                 ,{title:"是否停用",field:"is_use"}
                 ,{title:"操作",field:"op",formatter:function(v,data,index){
                     var url="<a href='<%=basePath%>qxgl/vup?id="+data.rid+"'>修改</a>&nbsp;&nbsp;&nbsp;";
                         url+="<a href='javascript:del("+data.rid+")'>删除</a>";
                         return url;
                  }}
             ]]
            ,toolbar:"#dd"
         });
         /*
	         $('#qx').tree({             
	             url:"<%=basePath%>qxgl/queryqx"
	             ,checkbox:true
	        });
        */
    })
    function quarylist(){
    	 $('#tab').datagrid('load',{       
             name:$("[name='name']").val()
         });
 	}
   function save(){
         $("#dis").dialog("open");
   }
 	function saveadd(){
 	      var nx="";	     
 	      var fid = $("#qx").tree("getChecked");
         for(var i=0;i<fid.length;i++){
 	        var node=$("#qx").tree("getNode",fid[i].target);
 	        if(nx==""){
 	           nx=node.id;
 	           $("#nx").val(nx);
 	        }else{
 	           nx+=","+node.id;
 	           $("#nx").val(nx);
 	        }
 	      };
 	      var dname=$("#name").val();
 	      var dess=$("#des").val();
 	      var url="<%=basePath%>qxgl/savefus";	    	     
 	      $.post(url,{"name":dname,"des":dess,"nx":nx},function(data){	 
 	                $("#dis").dialog("close");
	                $("#tab").datagrid("reload");
 	      })         
    } 
    function del(v_rid){
      var url="<%=basePath%>qxgl/dodel";
      $.post(url,{"rid":v_rid},function(){
         $("#tab").datagrid("reload");
      })
    }
 
  </script>
  </head>
  
  <body>
    <div id="dd">
                   角色名:<input type="text" name="name">
       <a href="javascript:quarylist()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>&nbsp;&nbsp;
       <a href="javascript:save()" class="easyui-linkbutton" data-options="iconCls:'icon-add'">新增</a>
    </div>
    <table id="tab"></table>
    <div id="dis">
    	<input type="hidden" id="id" name="id"/>
               <input type="hidden"  id="nx" value="">
                       角色名:<input type="text"  id="role_name" name="role_name"><br>
                       备     注:<input type="text"  id="des"name="des"><br>
                      权      限:<ul id="qx"></ul>
    </div>
  </body>
</html>
