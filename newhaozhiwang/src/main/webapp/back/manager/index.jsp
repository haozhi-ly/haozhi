<%@page import="com.yc.haozhi.util.SessionAttributeInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<base href="/newhaozhiwang/"/>
	<meta charset="UTF-8"> 
	<title>好知网</title>
	<link rel="stylesheet" type="text/css" href="easyui/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/icon.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/demo.css">
	<link rel="stylesheet" type="text/css" href="back/css/style.css">
	<script type="text/javascript" src="back/js/jquery.min.js"></script>
	<script type="text/javascript" src="back/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="back/js/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript"  src="back/js/ajaxfileupload.js"></script>
	<script type="text/javascript"  src="back/js/cropbox.js"></script>
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>  
    <script type="text/javascript" src="ckeditor/config.js"></script>  
    <script type="text/javascript" src="back/js/index.js"></script>
   	<!-- <script type="text/javascript">
   		var myckeditor;
	    	$(document).ready(function(){  
	    	 myckeditor=CKEDITOR.replace('myckeditor'); 
	    });  
	</script>   -->
<style type="text/css">
	#toplogo{
		font-size:14px;
		float: right;
		width: 180px;
		height: 30px;
		margin-top:15px;
		margin-right:20px;
	}
	#toplogo a:hover{
		color:red;
	}
	#footer{
			font-size:20px;
			letter-spacing:8px;
		}
</style>
<script type="text/javascript">
	function exit(){
		 $.messager.confirm('信息确认','您确认要安全退出吗？',function(rs){
			 if(rs){
				 $.post("back/manager/doExit.jsp",function(data){
						if(data>0){
							location.href = "back/login.html";
						}
					});
			 }else{
			 return;
		 }
	 });
	}
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">
	<span style="font-size:30px;letter-spacing:14px;margin-left:500px;">好知网后台管理</span>
	<div id="toplogo">
		<span style="float:left;font-size:14px;">当前管理员:${myself.aname}</span><a href="javascript:exit()" style="float:left;font-size:14px;margin-left:20px;text-decoration:none;" id="tuichu">[安全退出]</a>
	</div>
	</div>
	<div data-options="region:'west',split:true,title:'菜单'" style="width:150px;padding:10px;">
		<!-- <ul class="easyui-tree" id="menu_tree">
			<li>
				<span>菜单</span>
				<ul>
					<li>管理员管理</li>
					<li>会员管理</li>
					<li>课程类型管理</li>
					<li>课程管理</li>
					<li>小组管理</li>
				    <li>个人信息</li>	
				</ul>
			</li>
		</ul> -->
		<div class="easyui-accordion" style="width: 100%;">
		<div title="管理员管理" style="padding:10px;overflow: auto;">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">管理员管理</li>
			</ul>
		</div>
		<div title="会员管理" style="padding:10px;">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">会员管理</li>
			</ul>
		</div>
		<div title="课程类型管理" style="padding:10px">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">课程类型管理</li>
			</ul>
		</div>
		<div title="课程管理" style="padding:10px">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">课程管理</li>
			</ul>
		</div>
		<div title="小组管理" style="padding:10px">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">小组管理</li>
			</ul>
		</div>
		<div title="个人信息" style="padding:10px">
			<ul class="easyui-tree" >
				<li data-options="iconCls:'icon-save'">个人信息</li>
			</ul>
		</div>
		</div>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'帮助'" style="width:100px;padding:10px;">
	east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px; text-align:center" id="footer">
	@源辰信息   版权所有
	</div>
	<div data-options="region:'center',title:'操作'">
		<div id="center_area" class="easyui-tabs" data-options="fit:true">
		</div>
	</div>
</body>
</html>
