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
					url : "stu/queryAll",
					columns : [[
							{field : "stu_no",title : "学号"}
							,{field : "name",title : "姓名"}
							,{field : "sex",title : "性别"}
							,{
								field : "birthday",
								title : "出生日期"
							},{
								field : "degree",
								title : "学历"
							},{
								field : "phone_number",
								title : "电话"
							},{
								field : "email",
								title : "邮箱"
							},{
								field : "oname",
								title : "组织机构"
							},{
								field : "tname",
								title : "班主任"
							},{
								field : "op",
								title : "操作",
								formatter:function(v, data, index) {
									var ref = "";
									ref += "<a href='javascript:toupdate("+ data.id+ ")'>修改</a>&nbsp;&nbsp;";
									ref += "<a href='javascript:dodelete("+ data.id + ")'>删除</a>";
									return ref;
								}
							}]],
					pagination : true,
					toolbar : "#cx",
					striped:true,
					fitColumns:true,
					rownumbers:true,
					singleSelect:true,
					pagination:true,
					fit:true
				});

		$("[name='org_id']").combotree( {
			url : "dept/qalldept"
		});
		
		$("[name='teacher_id']").combotree( {
			url : "dept/qallteacher",
			onBeforeSelect: function (node) {
			//返回树对象 
			var tree = $(this).tree;
			//选中的节点是否为叶子节点,如果不是叶子节点,清除选中 
			var isLeaf = tree('isLeaf', node.target);
			if (!isLeaf) {
				$(this).treegrid("unselect");
			}
			}
		});

		
		
		

		$("#dv").dialog( {
			title : "学生信息管理",
			width : "500",
			height : "300",
			closed : true,//默认隐藏弹出框
			onClose : function() {
				$("#mianform").form("clear");//调用表单控件清空表单数据
			},
			buttons : [ {
				text : "保存",
				handler : adddept
			} ]
			});
			//初始化日期控件
			$(".easyui-datebox").datebox({
				closeText:"关闭",
				okText:"确定",
				formatter:function(date){
					var y = date.getFullYear();
					var m = date.getMonth()+1;
					var d = date.getDate();
					return y+"-"+m+"-"+d;
				}
			});
	})

	function adddept() {
		var url = "stu/saveadd";
		var did = $("#id").val();
		if (did != null && did > 0) {
			url = "stu/saveupdate";
		}

		$("#mianform").form("submit", {
			url : url,
			success : function(data) {
				$("#dv").dialog("close");//关闭新增窗口
				$("#ta").datagrid("reload");//刷新页面
			}
		});
	}

	function dodelete(id) {
		$.post("stu/dodelete", {
			"id" : id
		}, function(d) {
			$("#ta").datagrid("reload");
		});

	}

	function toupdate(did) {
		$.post("stu/toupdate", {
			"id" : did
		}, function(data) {
			$("#dv").dialog("open");
			$("#id").val(data.id);
			$("#stu_no").val(data.stu_no);
			$("#name").val(data.name);
			$("#password").val(data.password);
			if(data.sex=='男'){
				$("[name=sex]")[0].checked=true;
			}else{
				$("[name=sex]")[1].checked=true;
			}
			$(".easyui-datebox").datebox('setValue',data.birthday);
			$("#degree").val(data.degree);
			$("#phone_number").val(data.phone_number);
			$("#email").val(data.email);
			
			$("#org_id").combotree("setValue", data.org_id);
			$("#teacher_id").combotree("setValue",data.teacher_id);
			//$("#tid").combobox("setValue", data.tid);
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
	

</script>



	</head>

	<body>
		<div id="cx">
			<br>
			学号：
			<input type="text" name="stu_no">
			姓名：
			<input type="text" name="name">
			组织机构：
			<input type="text" id="sorg_id" name="org_id" /><br/>
			学历：
			<input type="text" name="degree">
			电话：
			<input type="text" name="phone_number">
			&nbsp;班主任：
			<input type="text" id="steacher_id" name="teacher_id" />
			
			<a href="javascript:doquery()" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'">查询</a>
			<a href="javascript:dk()" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'">添加</a>
		</div>
		<table id="ta"></table>
		<div id="dv">

			<form id="mianform" method="post">
				<input type="hidden" id="id" name="id">
				<table>
					<tr>
						<td>
							学号
						</td>
						<td>
							<input type="text" id="stu_no" name="stu_no">
						</td>
						<td>
							姓名
						</td>
						<td>
							<input type="text" id="name" name="name">
						</td>
					</tr>
					<tr>
						<td>
							密码
						</td>
						<td>
							<input type="text" id="password" name="password">
						</td>
						<td>
							性别
						</td>
						<td>
							<input type="radio" name="sex" value="男" checked="checked">男
							<input type="radio" name="sex" value="女" >女
						</td>
					</tr>
					<tr>
						<td>
							出生日期
						</td>
						<td>
							<input type="text" id="birthday"  name="birthday" class="easyui-datebox">
						</td>
						<td>
							学历
						</td>
						<td>
							<input type="text" id="degree" name="degree">
						</td>
					</tr>
					<tr>
						<td>
							电话
						</td>
						<td>
							<input type="text" id="phone_number" name="phone_number">
						</td>
						<td>
							邮箱
						</td>
						<td>
							<input type="text" id="email" name="email">
						</td>
					</tr>
					<tr>
						<td>
							组织机构
						</td>
						<td>
							<input type="text" id="org_id" name="org_id">
						</td>
						<td>
							班主任
						</td>
						<td>
							<input type="text" id="teacher_id" name="teacher_id">
						</td>
					</tr>
				</table>
			</form>
		</div>

	</body>
</html>
