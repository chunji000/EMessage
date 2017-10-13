<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

		<link rel="stylesheet" href="<%=basePath%>js/easyui/themes/icon.css"
			type="text/css"></link>
		<link rel="stylesheet"
			href="<%=basePath%>js/easyui/themes/bootstrap/easyui.css"
			type="text/css"></link>
		<script type="text/javascript"
			src="<%=basePath%>js/easyui/jquery-1.8.0.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>js/easyui/jquery.easyui.min.js"></script>
		<script type="text/javascript">
	$(function() {
		$("#ta").datagrid(
				{
					fitColumns : true,
					url : "msg/queryAll",
					columns : [[
							{field : "id",title : "序号"}
							,{field : "user",title : "发布人"}
							,{field : "to",title : "接收人"}
							,{field : "push_title",title : "主题"}
							,{
								field : "push_content",
								title : "内容摘要"
							},{
								field : "attache_file",
								title : "附件名称"
							},{
								field : "push_date",
								title : "发布日期"
							},{
								field : "op",
								title : "操作",
								formatter:function(v, data, index) {
									var ref = "";
									ref += "<a href='javascript:toupdate("+ data.id+ ")'>修改</a>&nbsp;&nbsp;";
									ref += "<a href='javascript:dodelete("+ data.id + ")'>删除</a>&nbsp;&nbsp;";
									ref += "<a href='javascript:dopush("+ data.id + ")'>发布</a>";
								return ref;
								}
							}]],
					pagination : true,
					toolbar : "#cx"
				});

		$("[name='org_id']").combotree( {
			url : "dept/qalldept"
		});

		$("#dv").dialog( {
			title : "消息管理",
			width : "600",
			height : "300",
			closed : true,//默认隐藏弹出框
			onClose : function() {
				$("#mianform").form("clear");//调用表单控件清空表单数据
			},
			buttons : [ {
				text : "保存",
				handler : addmes
			} ]
			})
	})

	function addmes() {
		var url = "msg/saveAdd";
		var did = $("[name='id']").val();
		if (did != null && did > 0) {
			url = "msg/saveupdate";
		}

		$("#mianform").form("submit", {
			url : url,
			success : function() {
				$("#dv").dialog("close");//关闭新增窗口
				$("#ta").datagrid("reload");//刷新页面
			}
		});
	}

	function dodelete(id) {
		$.post("msg/dodelete", {
			"id" : id
		}, function(d) {
			$("#ta").datagrid("reload");
		});
	}
function dopush(id) {
		$.post("msg/dopush", {
			"id" : id
		}, function(d) {
			$("#ta").datagrid("reload");
		});
	}
	function toupdate(did) {
		$.post("dept/toupdate", {
			"did" : did
		}, function(data) {
			$("#dv").dialog("open");
			var did = $("[name='did']").val(data.did);
			var name = $("[name='name']").val(data.name);
			$("#pdid").combotree("setValue", data.pdid);
			$("#tid").combobox("setValue", data.tid);
			$("#bid").combobox("setValue", data.bid);
			var ress = $("[name='ress']").val(data.ress);
			var tel = $("[name='tel']").val(data.tel);
			var tact = $("[name='tact']").val(data.tact);
			var mob = $("[name='mob']").val(data.mob);
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


	function doquery() {
		$("#ta").datagrid( {
			url : "stu/queryAll",
			queryParams : {
				stu_no : $("[name=stu_no]").val(),
				name :  $("[name=name]").val(),
				org_id :  $("#sorg_id").combotree("getValue"),
				degree :  $("[name=degree]").val(),
				phone_number :  $("[name=phone_number]").val(),
				teacher_id :  $("#steacher_id").combotree("getValue")
			}
		})
	}

	function dk() {
		$("[name='id']").val(0);
		$("#dv").dialog("open");
	}

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
				  $("#attache_file").val($("#attache_file").val()+$("#fs").val().substr($("#fs").val().lastIndexOf("\\")+1)+"-");
					$.messager.progress('close');
					fid = data.split("@")[1];
					var fidsString = $("#fids").val()+fid+",";
					$("#fids").val(fidsString);
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
</script>



	</head>

	<body>
		<div id="cx">
			<br>
			发布人：
			<input type="text" name="push_user">
			接收人：
			<input type="text" name="org_id" />
			<a href="javascript:doquery()" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'">查询</a>
			<a href="javascript:dk()" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'">添加</a>
		</div>
		<table id="ta"></table>
		<div id="dv">

			<form id="mianform" method="post">
				<table>
					<tr>
						<td>
							接收人：
						</td>
						<td>
							<input type="text" id="org_id" name="org_id">&nbsp;&nbsp;
							<input type="radio" name="role_id" value="2" checked>老师&nbsp;
							<input type="radio" name="role_id" value="3">学生&nbsp;
							<input type="radio" name="role_id" value="0">师生
						</td>
					</tr>
					<tr>
						<td>
							主题：
						</td>
						<td>
							<input type="text" name="push_title">&nbsp;&nbsp;
							<input type="checkbox" name="is_feedback">要求回复
						</td>
					</tr>
					<tr>
						<td>
							内容摘要：
						</td>
						<td>
							<input type="text" name="push_content" style="width:360px;">
						</td>
					</tr>
					<tr>
						<td>							
						附件：</td>
						<td>
							<input type="text" name="attache_file" id="attache_file" readonly="readonly">
							<input type="button" value="附加上传" onclick="shangchuan()"/>
							<input type="hidden" name="fids" id="fids">
						</td>						
					</tr>					
				</table>
			</form>
		</div>
  	   <!-- 文件上传  -->
    	<div id="scwin" class="easyui-window" title="文件上传" style="width:400px;height:300px" 
  			data-options="modal:true,closed:true,collapsible:false,minimizable:false,maximizable:false">
  			<form id="fileForm" name="fileForm" method="post" enctype="multipart/form-data">
    			<input type="file" name="files" size="40" id="fs"/>
    	  			<div data-options="region:'south',border:false" style="padding:5px 0 0;"><br>
					<a  data-options="plain:true" href="javascript:dosubmit()">开始上传</a>&nbsp;&nbsp;
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
