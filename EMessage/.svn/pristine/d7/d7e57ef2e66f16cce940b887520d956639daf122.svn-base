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
					url : "teacher/queryAll",
					columns : [[{field : "emp_no",title : "工号"}
							,{field : "name",title : "姓名"}
							,{field : "sex",title : "性别"}
							,{field : "birthday",title : "出生日期"}
							,{field : "degree",title : "学历"}
							,{field : "position",title : "职称"}
							,{field : "job",title : "岗位"}
							,{field : "phone_number",title : "电话"}
							,{field : "is_employee",title : "是否在岗"}
							,{field : "email",title : "邮箱"}
							,{field : "oname",title : "组织机构"}
							,{
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

		$("[name='org_id']").combotree({
			url : "dept/qalldept"
		});
		
		$("[name='rid']").combobox({
             url:"qxgl/queryUseRole",
             valueField:"id",
             textField:"role_name"
        });

		$("#dv").dialog( {
			title : "教师信息管理",
			width : "600",
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
		var url = "teacher/saveadd";
		var did = $("[name='id']").val();
		if (did != null && did > 0) {
			url = "teacher/saveupdate";
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
		$.post("teacher/dodelete", {
			"id" : id
		}, function(d) {
			$("#ta").datagrid("reload");
		});

	}

	function toupdate(did) {
		$.post("teacher/toupdate", {
			"id" : did
		}, function(data) {
			$("#dv").dialog("open");
			$("[name='id']").val(data.id);
			$("[name='emp_no']").val(data.emp_no);
			$("[name='name']").val(data.name);
			$("[name='password']").val(data.password);
			if(data.sex=='男'){
				$($("[name='sex']")[0]).attr("checked",true);
			}else{
				$($("[name='sex']")[1]).attr("checked",true);
			}
			$(".easyui-datebox").datebox('setValue',data.birthday);
			$("[name='degree']").val(data.degree);
			$("[name='phone_number']").val(data.phone_number);
			$("[name='email']").val(data.email);
			$("[name='position']").val(data.position);
			$("[name='job']").val(data.job);
			if(data.is_employee=='0'){
				$($("[name='is_employee']")[0]).attr("checked",true);
			}else{
				$($("[name='is_employee']")[1]).attr("checked",true);
			}
			$("#org_id").combotree("setValue", data.org_id);
			$("#rid").combobox("setValue", data.rid);
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

</script>



	</head>

	<body>
		<div id="cx">
			<br>
			工号：
			<input type="text" name="emp_no">
			姓名：
			<input type="text" name="name">
			组织机构：
			<input type="text" name="org_id" /><br/>
			学历：
			<input type="text" name="degree">
			电话：
			<input type="text" name="phone_number">
			所在岗位：
			<input type="text" name="job" />
			
			<a href="javascript:doquery()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
			<a href="javascript:dk()" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'">添加</a>
		</div>
		<table id="ta"></table>
		<div id="dv">
			<form id="mianform" method="post">
				<input type="hidden" name="id">
				
				<table>
					<tr>
						<td>工号</td>
						<td><input type="text" name="emp_no"></td>
						<td>姓名</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>密码</td>
						<td><input type="text" name="password"></td>
						<td>性别</td>
						<td>
							<input type="radio" name="sex" value="男" checked="checked">男
							<input type="radio" name="sex" value="女" >女
						</td>
					</tr>
					<tr>
						<td>出生日期</td>
						<td><input type="text" name="birthday" class="easyui-datebox"></td>
						<td>学历</td>
						<td><input type="text" name="degree"></td>
					</tr>
					<tr>
						<td>职称</td>
						<td><input type="text" name="position"></td>
						<td>岗位</td>
						<td><input type="text" name="job"></td>
					</tr>
					
					<tr>
						<td>电话</td>
						<td><input type="text" name="phone_number"></td>
						<td>邮箱</td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>
						<td>
							组织机构
						</td>
						<td>
							<input type="text" id="org_id" name="org_id">
						</td>
						<td>
							是否在岗
						</td>
						<td>
							<input type="radio" name="is_employee" value="0" checked="checked">在岗
							<input type="radio" name="is_employee" value="1" >不在岗
						</td>
					</tr>
					<tr>
						<td>
							所属角色
						</td>
						<td>
							<input type="text" id="rid" name="rid">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
