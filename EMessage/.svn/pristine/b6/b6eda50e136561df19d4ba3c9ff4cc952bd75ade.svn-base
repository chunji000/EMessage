<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>alldept.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link rel="stylesheet" href="<%=basePath%>js/easyui/themes/icon.css" type="text/css"></link>
  <link rel="stylesheet" href="<%=basePath%>js/easyui/themes/bootstrap/easyui.css" type="text/css"></link>
  <script type="text/javascript" src="<%=basePath%>js/easyui/jquery-1.8.0.min.js"></script>
  <script type="text/javascript" src="<%=basePath%>js/easyui/jquery.easyui.min.js"></script>
   <script type="text/javascript">
      $(function(){
           $("#ta").datagrid({
               url:"dept/alldept",
               columns:[[
                      {field:"org_name",title:"机构名称"},
                      {field:"pname",title:"上级机构"},
                      {field:"is_use",title:"是否启用",formatter:function(v,data,index){
                           if(v==0){
                           		return '启用';
                           }else{
                                   return '停用';
                            }
                          }},
                      {field:"op",title:"操作",formatter:function(v,data,index){
                           var ref="<a href='javascript:toupdate("+data.id+")'>修改</a>&nbsp;&nbsp;"
                               ref+="<a href='javascript:deleteDept("+data.id+")'>删除</a>"
                                   return ref;
                          }}
                        ]],
               		pagination : true,
					toolbar : "#cx",
					striped:true,
					fitColumns:true,
					rownumbers:true,
					singleSelect:true,
					pagination:true,
					fit:true
               });

               $("[name='parent_id']").combotree({
					url:"dept/qalldept"
				});
               

              
               $("#dv").dialog({
                   title:"组织机构信息维护",
                   width:"400",
                   height:"300", 
                   closed:true,//默认隐藏弹出框
                   onClose:function(){
                         $("#mianform").form("clear");//调用表单控件清空表单数据
                                },
                   buttons:[
   					{text:"保存",handler:adddept}
   				]})
    })
    
    function adddept(){
    	  var url="dept/adddept";
    	   		var did= $("[name='id']").val();
    	   		if(did!=null&&did>0){
    	   			url="dept/updatedept";
    	   		}
    	   		
    	       $("#mianform").form("submit",{
    	         url:url,
    	         success:function(data){
	    	         $("#dv").dialog("close");//关闭新增窗口
	    	         $("#ta").datagrid("reload");//刷新页面
	    	         $("[name='parent_id']").combotree({
							url:"dept/qalldept"
						});
    	         }
    	       })
    	      
    }

      function deleteDept(did){
		$.post("dept/deleteDept", {"did":did}, function(d) {
			$("#ta").datagrid("reload");
			 $("[name='parent_id']").combotree({
					url:"dept/qalldept"
				});
		});

	}



	function toupdate(id) {
		$.post("dept/toupdate", {
			"did" : id
		}, function(data) {
			$("#dv").dialog("open");
			$("[name='id']").val(data.id);
			$("[name='org_name']").val(data.org_name);
			$("#parent_id").combotree("setValue", data.parent_id);
			if(data.is_use==0){
				$($("[name='is_use']")[0]).attr("checked",true);
			}else{
				$($("[name='is_use']")[1]).attr("checked",true);
			}
		})

	}

	function querydept(did) {
		$.post("dept/alldept", {
			"did" : did
		}, function() {
			$("#dv").dialog("open");
			$("#ta").datagrid("reload");
		})
	}

	function dk() {
		$("#dv").dialog("open");
	}

	function doquery() {
		var v_name = $("[name='name']").val();
		var v_pdid = $("[name='pdid']").val();
		$("#ta").datagrid( {
			url : "dept/alldept",
			queryParams : {
				name : v_name,
				pdid : v_pdid
			}

		})
	}
</script>
  
  
  
  </head>
  
  <body>
  <div id="cx">
     组织名称：<input type="text" name="org_name">
   上级组织：<input type="text" name="parent_id"/>
    <a href="javascript:doquery()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
     <a href="javascript:dk()" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a>
  </div>
    <table id="ta"></table>
    <div id="dv">
      <form id="mianform" method="post">
      <br>
      <input type="hidden" name="id">
         组织名称：&nbsp;<input type="text" name="org_name"><br><br>
         上级组织：&nbsp;<input type="text" id="parent_id" name="parent_id" value="--请选择--"><br><br>
         是否启用：&nbsp;<input type="radio" name="is_use" value="0" checked>启用
         	 &nbsp;<input type="radio" name="is_use" value="1">停用<br><br>
     
      </form>
    </div>
    
     
  </body> 
</html>
