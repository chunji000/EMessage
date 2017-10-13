<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'allaccs.jsp' starting page</title>
    
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
         
    	  $("[name='did']").combobox({
                url:"accs/alldept",
                valueField:"did",
                textField:"name"
                  });
       
         $("#ta").datagrid({
              fitCloumns:true,
              fit:true,
              rownumbers:true,
              url:"accs/allaccs",
              columns:[[
                 {field:"username",title:"用户名",width:"100px"},
                 {field:"name",title:"真实姓名",width:"100px"},
                 {field:"stat",title:"用户状态",width:"100px",formatter:function(v,datd,index){
                     var str="";
						if(datd.stat==1){
							str="启用";
							return str;
							}else{
								str="禁用";
								return str;
							}
                     }},
                 {field:"dname",title:"所属部门",width:"150px"},
                 {field:"em",title:"邮箱",width:"100px"},
                 {field:"op",title:"操作",formatter:function(v,data,index){
                    var ref="<a href='javascript:selectaccs("+data.aid+")'>详细</a>&nbsp;&nbsp;&nbsp;"
                               ref+="<a href='javascript:toupdate("+data.aid+")'>修改</a>&nbsp;&nbsp;&nbsp;"
                               ref+="<a href='javascript:deleteaccs("+data.aid+")'>删除</a>"
                                   return ref;
                 }},
              ]],
              toolbar:"#cx" ,
              pagination:true
         })

         $("#dv").dialog({
        	 title:"增改用户信息",
             width:"600",
             height:"400", 
             closed:true,//默认隐藏弹出框
             onClose:function(){
                   $("#mainform").form("clear");//调用表单控件清空表单数据
                          },
             buttons:[
					{text:"保存",handler:addaccs}
				]
             })

             //详细信息弹出框
              $("#xx").dialog({
                   title:"用户详细信息",
                   width:"400",
                   height:"250", 
                   closed:true,//默认隐藏弹出框
                   buttons:[
   					{text:"关闭",handler:function(){
   					  $("#xx").dialog("close");
   					
   					}}
   				]})
   				
   				//角色表的单选按钮
   				$.post("<%=basePath%>accs/allroles",function(data){
					$.each(data,function(d,i){
						var ck='<input type="radio" name="rid" value="'+i.rid+'"/>'+i.name;
						$("#roles").append(ck);
					});
   	   			});
   			
     })
     
     
     
     function xz(){
         $.post("accs/allroles",function(){
        	 $("#dv").dialog("open");

             })
        
         }

     function toupdate(aid){
        $.post("accs/toupdate",{"aid":aid},function(data){
        	 $("#dv").dialog("open");
          var aid=$("[name='aid']").val(data.aid);
          var job=$("[name='job']").val(data.job);
          var username=$("#user").val(data.username);
          var name=$("[name='name']").val(data.name);
          var des=$("[name='des']").val(data.des);
          $("#did").combobox("setValue",data.did);
          var em=$("[name='em']").val(data.em);
          var tel=$("[name='tel']").val(data.tel);
          var passwords=$("[name='password']").val(data.password);
            if(data.sex=="m"){
      			$("[name='sex']")[0].checked=true;
      		}else{
      			$("[name='sex']")[1].checked=true;
      		}
            if(data.stat=="1"){
      			$("[name='stat']")[0].checked=true;
      		}else{
      			$("[name='stat']")[1].checked=true;
      		}
      		//获取默认角色
      		var rid=$("[name='rid']");
      		for(var i=0;i<=rid.length;i++){
      			if(data.rid==rid[i].value){
      				rid[i].checked=true;
      				break;
      			}
      		}
      		
      		if(aid!=null){
          		var tr=$("#trs").val();
          		var trs=tr[0];
          		trs:style:display="none";
          		}
           

            })

         }
     
     function addaccs(){
         url="accs/addaccs";
         var aid=$("#aid").val();
         if(aid!=null&aid>0){
           url="accs/updateaccs";
             }
       $("#mainform").form("submit",{
           url:url,
           success:function(){
            $("#dv").dialog("close");
            $("#ta").datagrid("reload");
           }

           })
         

         }
     
      //删除
     function deleteaccs(aid){
       $.post("accs/deleteaccs",{"aid":aid},function(){
    	   $("#ta").datagrid("reload");
           })

   	  
         }

     //模糊查询
     function doquery(){
      var uname=$("[name='username']").val();
      var v_did=$("[name='did']").val();
      $("#ta").datagrid({
          url:"accs/allaccs",
          queryParams:{
             username:uname,
             did:v_did
          }

          })

         }

     //详细信息
     function selectaccs(aid){
    	 $.post("accs/selectaccs", {
 			"aid" : aid
 		}, function(data) {
 			$("#xx").dialog("open");
 			var name = $("#name").text(data.name);
			var des = $("#des").text(data.des);
			var job = $("#job").text(data.job);
			var username = $("#username").text(data.username);
			var sex = data.sex;
			if(sex=="m"){
				$("#sex").text("男");
			}
			if(sex=="f"){
				$("#sex").text("女");
			}
			var tel = $("#tel").text(data.tel);
			var em = $("#em").text(data.em);
			var stat =data.stat;
			if(stat==1){
				$("#stat").text("启用");	
			} 
			if(stat==0){
				$("#stat").text("禁用");	
			}
			var dname = $("#dname").text(data.dname);

 		})
         }

     function yz(){
      var password=$("[name='password']").val();
      var passwords=$("[name='passwords']").val();
      if(passwords!=password){
         $("#mm").html("两次输入的密码不一样，请重新输入");
          }else{
        	  $("#mm").html("");
              }

         }

     //用户重名验证
     function checkname(v_uname){
   	  var url="accs/checkname";
   	     $.post(url,{"username":v_uname},function(data){
   				$("#msg").html(data);
   			});
   	  }
  
  
  </script>

  </head>
  
  <body>
  
  <div id="cx">
   用户名：<input type="text" name="username">
   所属部门：<input type="text" name="did"/>
    <a href="javascript:doquery()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
     <a href="javascript:xz()" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a>
  </div>
   <table id="ta"></table>
   <div id="dv" style="background-color:'aliceblue'">
      <form id="mainform" method="post">
        <table width="100%">
          <tr>
            <td>用户名:</td>
            <td><input type="hidden" name="aid" id="aid" />
            <input type="text" name="username" id="user" onblur="checkname(this.value)"/><br><span style="color: red;font-size: 12px" id="msg"></span></td>
            <td align="right">职务:</td>
            <td><input type="text" name="job"/></td>
          </tr>
          <tr>
            <td>真实姓名:</td>
            <td><input type="text" name="name"/></td>
            <td align="right">邮箱:</td>
            <td><input type="text" name="em"/></td>
          </tr>
          <tr>
            <td>性别:</td>
            <td><input type="radio" name="sex" value="m"/>男
                <input type="radio" name="sex" value="f"/>女
              </td>
            <td align="right">电话:</td>
            <td><input type="text" name="tel"/></td>
          </tr>
          <tr id="trs" >
            <td>密码:</td>
            <td><input type="text" name="password"/></td>
            <td >再次输入密码:</td>
            <td><input type="text" name="passwords" onblur="yz()"/><br>
            <span id="mm" style="color: red;font-size: 12px"></span></td>
          </tr>
          <tr>
            <td>用户状态:</td>
            <td><input type="radio" name="stat" value="1">启用
                <input type="radio" name="stat" value="0">禁用 </td>
            <td align="right">部门:</td>
            <td><input type="text" name="did" id="did"/></td>
          </tr>
          <tr>
            <td>描述:</td>
            <td colspan="3">
             <textarea name="des" rows="3" cols="50"></textarea>
            </td>
          </tr>
          <tr>
            <td>选择角色:</td>
            <td colspan="3">
            	<div id="roles">
            		
            	</div>
            </td>
          </tr>
        </table>
      </form>
   </div>
   
   <div id="xx" style="background-color:'aliceblue'">
   <table width="100%">
          <tr>
            <td align="right">用户名：</td>
            <td align="left"><span id="username"></span></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td align="right">职务:</td>
            <td align="left"><span id="job"></span></td>
          </tr>
          <tr>
            <td align="right">真实姓名：</td>
            <td align="left"><span id="name"></span></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td align="right">邮箱:</td>
            <td align="left"><span id="em"></span></td>
          </tr>
          <tr>
            <td align="right">性别：</td>
            <td align="left"><span id="sex"></span></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td align="right">电话：</td>
            <td align="left"><span id="tel"></span></td>
          </tr>
          <tr>
            <td align="right">用户状态：</td>
            <td  align="left"><span id="stat"></span></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td align="right">部门：</td>
            <td align="left"><span id="dname"></span></td>
          </tr>
          <tr>
            <td align="right">描述:</td>
            <td colspan="4">
             <span id="des" align="left"></span>
            </td>
          </tr>
        </table>
   </div>
   
 </body>
 </html>
