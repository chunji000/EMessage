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

		<title>工资查询</title>

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
		//默认列表
		$(function() {
			$("#ta").datagrid(
					{
						fitColumns : true,
						url : "salary/queryAll",
						columns : [[
								{field : "id",title : "序号"}
								,{field : "salaryMonth",title : "工资月份"}
								,{field : "empId",title : "职员代码"}
								,{field : "empName",title : "职员姓名"}
								,{field : "deptName",title : "部门名称"}
								,{
									field : "jobSalary",
									title : "岗位工资"
								},{
									field : "levelSalary",
									title : "薪级工资"
								},{
									field : "preSalary",
									title : "预先兑付基本工资"
								},{
									field : "healthAllowance",
									title : "卫生津贴"
								},{
									field : "trafficAllowance",
									title : "交通补贴"
								},{
									field : "houseAllowance",
									title : "住房补贴"
								},{
									field : "propertyAllowance",
									title : "物业补贴"
								},{
									field : "leftAllowance",
									title : "保留补贴"
								},{
									field : "preCash",
									title : "预先兑付绩效"
								},{
									field : "otherAllowance",
									title : "补发（扣）及其他补助"
								},{
									field : "intaxSalary",
									title : "参与扣税工资"
								},{
									field : "totalSalary",
									title : "合计工资"
								},{
									field : "yibaoTax",
									title : "扣除医保"
								},{
									field : "unempTax",
									title : "扣除失业养老"
								},{
									field : "houseFundTax",
									title : "扣公积金"
								},{
									field : "lawTax",
									title : "扣劳保、房租、水费"
								},{
									field : "appendHouseFund",
									title : "补扣公积金、医保"
								},{
									field : "shouldSalary",
									title : "应发合计"
								},{
									field : "personTax",
									title : "个人所得税"
								},{
									field : "actualSalary",
									title : "实发合计"
								},{
									field : "op",
									title : "操作",
									formatter:function(v, data, index) {
										var ref = "";
										ref += "<a href='javascript:dodelete("+ data.id + ")'>删除</a>&nbsp;&nbsp;";
									return ref;
									}
								}
								]],
						pagination : true,
						toolbar : "#cx"
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
		//添加事件
		function addmes() {
			var url = "salary/saveAdd";
			var did = $("[name='id']").val();
			if (did != null && did > 0) {
				url = "salary/saveupdate";
			}
	
			$("#mianform").form("submit", {
				url : url,
				success : function() {
					$("#dv").dialog("close");//关闭新增窗口
					$("#ta").datagrid("reload");//刷新页面
				}
			});
		}
		//删除事件
		function dodelete(id) {
			$.post("salary/dodelete", {
				"id" : id
			}, function(d) {
				$("#ta").datagrid("reload");
			});
		}
		//发布事件
		function dopush(id) {
			$.post("salary/dopush", {
				"id" : id
			}, function(d) {
				$("#ta").datagrid("reload");
			});
		}
	
		//查询事件
		function doquery() {
			$("#ta").datagrid( {
				url : "salary/queryAll",
				queryParams : {
					salaryMonth : $("[name=salaryMonth]").val(),
					empName :  $("[name=empName]").val()
				}
			})
		}
	
		function dk() {
			$("[name='id']").val(0);
			$("#dv").dialog("open");
		}
	
		//导入Excel事件
		function shangchuan(){
			$('#scwin').window('open');
		}
		
		//开始上传事件
		function dosubmit(){
			var url="<%=basePath%>salary/uploadTemp";
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
		
		
		$(function() {      
		      $('#salaryMonth').datebox({    
		            onShowPanel : function() {// 显示日趋选择对象后再触发弹出月份层的事件，初始化时没有生成月份层    
		                span.trigger('click'); // 触发click事件弹出月份层    
		                if (!tds)    
		                    setTimeout(function() {// 延时触发获取月份对象，因为上面的事件触发和对象生成有时间间隔    
		                        tds = p.find('div.calendar-menu-month-inner td');    
		                        tds.click(function(e) {    
		                            e.stopPropagation(); // 禁止冒泡执行easyui给月份绑定的事件    
		                            var year = /\d{4}/.exec(span.html())[0]// 得到年份    
		                            , month = parseInt($(this).attr('abbr'), 10) + 1; // 月份    
		                            $('#datetime1').datebox('hidePanel')// 隐藏日期对象    
		                            .datebox('setValue', year + '-' + month); // 设置日期的值    
		                        });    
		                    }, 0);    
		            },    
		            parser : function(s) {// 配置parser，返回选择的日期    
		                if (!s)    
		                    return new Date();    
		                var arr = s.split('-');    
		                return new Date(parseInt(arr[0], 10), parseInt(arr[1], 10) - 1, 1);    
		            },    
		            formatter : function(d) {    
		                var month = d.getMonth();  
		                if(month<=10){  
		                    month = "0"+month;  
		                }  
		                if (d.getMonth() == 0) {    
		                    return d.getFullYear()-1 + '-' + 12;    
		                } else {    
		                    return d.getFullYear() + '-' + month;    
		                }    
		            }// 配置formatter，只返回年月    
		        });    
		        var p = $('#datetime1').datebox('panel'), // 日期选择对象    
		        tds = false, // 日期选择对象中月份    
		        span = p.find('span.calendar-text'); // 显示月份层的触发控件    
		        
		    }); 
	</script>



	</head>

	<body>
		<div id="cx">
			<br>
			工资月份：
			<input type="text" id="salaryMonth" name="salaryMonth">
			姓名：
			<input type="text" name="empName" />
			<a href="javascript:doquery()" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'">查询</a>
			<a href="javascript:shangchuan()" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'">导入Excel</a>
		</div>
		<table id="ta"></table>
		
  	   <!-- 文件上传  -->
    	<div id="scwin" class="easyui-window" title="文件上传" style="width:400px;height:300px" 
  			data-options="modal:true,closed:true,collapsible:false,minimizable:false,maximizable:false">
  			<form id="fileForm" name="fileForm" method="post" enctype="multipart/form-data">
  				<p>
  					<h3>请选择Excel工资数据文件！</h3>
  				</p>
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
	  	
		<!-- 添加表单 
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
		-->
	</body>
</html>
