<%@ page language="java" import="java.util.*,java.sql.*,tools.DBBean" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/main.css"/>
		<script src="js/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css"/>
		<script type="text/javascript">
			$(function(){
				$("#_home").load("company.html");
				$("#nav").tabs({
  					event: "mouseover"
				});
//				$("#tabs-1").accordion();
				$( "#menu,#menu_1" ).menu({ icons: { submenu: "ui-icon-circle-triangle-e" } });
			    $("#home").click(function(){
			        $("#rightbar>div").attr("id","_home");
			        $("#_home").load("right.html");
			    })
			    $("#work").click(function(){
			        $("#rightbar>div").attr("id","_work");
			        $("#_work").load("top.jsp");
			    })
			});
			
		</script>
	</head>
	<body>
		<div id="header">
		    <div id="login"><a href="login.html">登录</a>|<a href="zhuce.html"> 注册</a></div>
			<div id="nav">
			   <ul>
			    <li><a href="#tabs-1">公司主页</a></li>
			    <li><a href="#tabs-2">个人办公</a></li>
			    <li><a href="#tabs-3">公共信息</a></li>
			    <li><a href="#tabs-4">办公流程</a></li>
			    <li><a href="#tabs-5">辅助办公</a></li>
			    <li><a href="#tabs-6">人力资源</a></li>
			    <li><a href="#tabs-7">系统管理</a></li>
			   </ul>
			   <div id="tabs-1">
				 <ul>
				 	<!--<li><a href="#">我的主页</a></li>
				 	<li><a href="#">工作计划</a></li>
				 	<li><a href="#">工作任务</a></li>
				 	<li><a href="#">项目管理</a></li>
				 	<li><a href="#">日程安排</a></li>
				 	<li><a href="#">工作日志</a></li>
				 	<li><a href="#">个人设置</a></li>-->
				 </ul>
			   </div>
			   <div id="tabs-2">
			     <ul>
				 	<li><a href="#">我的主页</a></li>
				 	<li><a href="#">工作计划</a></li>
				 	<li><a href="#">工作任务</a></li>
				 	<li><a href="#">项目管理</a></li>
				 	<li><a href="#">日程安排</a></li>
				 	<li><a href="#">工作日志</a></li>
				 	<li><a href="#">个人设置</a></li>
				 </ul>
			   </div>
			   <div id="tabs-3">
			     <ul>
				 	<li><a href="#">随碟附送</a></li>
				 	<li><a href="#">群我QQ</a></li>
				 	<li><a href="#">萨达得到</a></li>
				 	<li><a href="#">从长春市</a></li>
				 	<li><a href="#">阿斯顿撒</a></li>
				 	<li><a href="#">客户高科</a></li>
				 	<li><a href="#">和估计更</a></li>
				 </ul>
			   </div>
			   <div id="tabs-4">
				 <ul>
				 	<li><a href="#">儿微微额</a></li>
				 	<li><a href="#">而违约或</a></li>
				 	<li><a href="#">风道姑妙</a></li>
				 	<li><a href="#">高合金钢</a></li>
				 	<li><a href="#">地方怪怪</a></li>
				 	<li><a href="#">工作日志</a></li>
				 	<li><a href="#">个人设置</a></li>
				 </ul> 
			   </div>
			   <div id="tabs-5">
			     <ul>
				 	<li><a href="#">我的主页</a></li>
				 	<li><a href="#">工作计划</a></li>
				 	<li><a href="#">工作任务</a></li>
				 	<li><a href="#">项目管理</a></li>
				 	<li><a href="#">日程安排</a></li>
				 	<li><a href="#">工作日志</a></li>
				 	<li><a href="#">个人设置</a></li>
				 </ul>
			   </div>
			   <div id="tabs-6">
			     <ul>
				 	<li><a href="#">请假管理</a></li>
				 	<li><a href="#">出差管理</a></li>
				 	<li><a href="#">加班管理</a></li>
				 	<li><a href="#">考勤管理</a></li>
				 	<li><a href="#">人事管理</a></li>
				 	<li><a href="#">考核管理</a></li>
				 	<li><a href="#">招聘管理</a></li>
				 </ul>
			   </div>
			   <div id="tabs-7">
			     <ul>
				 	<li><a href="#">系统登录</a></li>
				 	<li><a href="#">系统检查</a></li>
				 	<li><a href="#">系统升级</a></li>
				 	<li><a href="#">系统维修</a></li>
				 	<li><a href="#">故障排除</a></li>
				 	<li><a href="#">故障日志</a></li>
				 	<li><a href="#">安全设置</a></li>
				 </ul>
			   </div>
			</div>
		</div>
		<div id="content">
			<div id="leftbar">
				<div id="head">
					<h2>个人办公</h2>
				</div>
				<ul id="menu">
					<li id="home"><a href="#">我的主页</a></li>
				 	<li id="work"><a href="#">工作计划</a></li>
				 	<li><a href="#">工作任务</a></li>
				 	<li><a href="#">项目管理</a></li>
				 	<li><a href="#">日程安排</a></li>
				 	<li><a href="#">工作日志</a></li>
				 	<li><a href="#">个人设置</a></li>
				</ul>
				<div id="head">
					<h2>友情链接</h2>
				</div>
				<ul id="menu_1">
					<li><a href="#">百度</a></li>
				 	<li><a href="#">谷歌</a></li>
				 	<li><a href="#">淘宝</a></li>
				 	<li><a href="#">亚马逊</a></li>
				 	<li><a href="#">美团</a></li>
				 	<li><a href="#">1号店</a></li>
				 	<li><a href="#">个人设置</a></li>
				</ul>
			</div>
			<div id="empty"> </div>
			<div id="rightbar">
				<div width="740px" height="560px" id="_home"></div>
			</div>
		</div>
		
		<div id="tail">
			<h3>版权所有人：冯银超   </h3>
		</div>
	</body>
</html>

