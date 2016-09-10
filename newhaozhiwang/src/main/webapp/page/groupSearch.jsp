<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="">

	<head>
		<base href="/newhaozhiwang/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
		<meta name="renderer" content="webkit">
		<meta name="baidu-site-verification" content="XN2OVFQdUg">
		<title>搜索 - 好知网</title>
		<meta name="keywords" content="好知网 ">
		<meta name="description" content="科学学英语从0开始学英语看美剧学英语英语培训机构排名微英语我要学英语">
		<meta content="db7d9096b73f6e0f7498c76a0f86305f45595aa6" name="csrf-token">
		<meta content="1" name="is-login">
		<meta content="1" name="is-open">

		<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">

		<link href="css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/howzhi.css">
		<link rel="stylesheet" type="text/css" href="css/main.css">
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/top.js"></script>
		<script type="text/javascript" src="js/groups.js"></script>
		
		<style>
			.navbar-form{
				margin-top: 25px;
			}
		</style>
		<style>
			.cke {
				visibility: hidden;
			}
		</style>
	</head>

	<body class="group-page">
		<!-------------------------我是头部------------------------------------------->
		<c:set value="${users}" var="us"/>
			<c:if test="${us==null }">
				<jsp:include page="topf.jsp"></jsp:include>
			</c:if>
			<c:if test="${us!=null }">
				<jsp:include page="topb.jsp"></jsp:include>
			</c:if>
		<!-------------------------我是头部分割线------------------------------------------->
		
		<div class="container" id="content-container">
			<div class="panel panel-default panel-lg group-all">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-8">
							<h1>小组搜索</h1></div>
						<div class="col-sm-4">
							<form class="form-inline pull-right" id="form_group_search" action="groups/search" method="get">
								<div class="form-group">
									<div class="input-group group-search">
										<input class="form-control" placeholder="小组搜索" name="keyWord" value="${groups.keyWord }" type="text">
										<input class="form-control" name="categoryId" value="" type="hidden">
										<span class="input-group-btn">
								            <button class="btn btn-default" type="submit">
								                <span class="glyphicon glyphicon-search"></span>
											</button>
										</span>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

				<div class="panel-body">
					<div class="nav inline" id="navid">
						<a class="active" href="groups/moresearch" id="0">全部</a>
						<a href="javascript:;" data-target="photography" data-id="1" id="1">摄影课堂</a>
						<a href="javascript:;" data-target="creative-design" data-id="204" id="2">创意设计</a>
						<a href="javascript:;" data-target="music-school" data-id="205" id="3">声乐器乐</a>
						<a href="javascript:;" data-target="exercise-fitness" data-id="206" id="4">运动健身</a>
						<a href="javascript:;" data-target="IT-internet" data-id="222" id="5">IT互联网</a>
						<!-- <a href="javascript:;" data-target="programme" data-id="151" id="6">编程</a> -->
						<a href="javascript:;" data-target="interest" data-id="9" id="6">兴趣爱好</a>
						<!-- <a href="javascript:;" data-target="computer" data-id="155" id="8">电脑</a> -->
						<a href="javascript:;" data-target="language" data-id="10" id="7">语言学习</a>
						<!-- <a href="javascript:;" data-target="life" data-id="8" id="10">生活</a> -->
						<a href="javascript:;" data-target="career" data-id="178" id="8">职场技能</a>
						<!-- <a href="javascript:;" data-target="culture" data-id="173" id="12">文化</a> -->
						<a href="javascript:;" data-target="openclass" data-id="4" id="9">公开课</a>
					</div>
					<div class="row" id="add">
						<c:set value="${searchgroups}" var="search"/>
						<c:if test="${empty search}">
							<!--关键字查询，小组为空时（没有查询到信息）-->
		            			<div class="empty">暂无小组信息</div>
						</c:if>
	            		<c:if test="${search!=null }">
	            			<!--关键字查询，有相关小组信息时-->
	            			
			            		<c:forEach items="${searchgroups}" var="item">
			            			<div class="col-md-3" >
										<div class="media group-media group-media-sm">
											<a href="groups/showsearch?groupname=${item.groupname }&userid=${users.userid}" title="${item.groupname }" class="pull-left">
												<img src="images/105050a0ca1c653470.jpg" alt="${item.groupname }" class="media-object">
											</a>
											<div class="media-body">
												<p>
													<a href="groups/showsearch?groupname=${item.groupname }&userid=${users.userid}" title="${item.groupname }">${item.groupname }</a>
												</p>
												<div class="text-muted text-normal">
													${item.peoplecount }&nbsp; 1362个话题
												</div>
											</div>
										</div>
									</div>
			            		</c:forEach>
		            		
	            		</c:if>
					</div>
				</div>
			</div>
		</div>
	
		
		<!---------------------------------------我是底部分割线------------------------------------------------------>
		<jsp:include page="footer.jsp"></jsp:include>
		

	</body>

</html>