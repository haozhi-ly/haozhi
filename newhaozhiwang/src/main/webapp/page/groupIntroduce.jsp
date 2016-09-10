<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html class="">

<head>
<base href="/newhaozhiwang/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="baidu-site-verification" content="XN2OVFQdUg">
<title>摄影公社小组 - 好知网</title>
<meta name="keywords" content="摄影公社小组 好知网">
<meta name="description"
	content="摄影公社（原称爱摄公社），集结好知网喜欢摄影的同学。欢迎大家在小组里发表作品、提问和分享信息。PS：大家传图片记得先处理一下，控制在1M以下哦。本组Q群：113410968本组微信：photo-tips新浪微博：@howzhifoto常见摄影问答：摄影知识之你问我答摄影基础概念：光圈、景深、对焦，连...">
<meta content="783d2780243a713e381a2657201ae9fc7f4e4f78"
	name="csrf-token">
<meta content="1" name="is-login">
<meta content="1" name="is-open">

<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">

<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/top.js"></script>
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

	<!--下面是头部-->
	<c:set value="${users}" var="us"/>
	<c:if test="${us==null }">
		<jsp:include page="topf.jsp"></jsp:include>
	</c:if>
	<c:if test="${us!=null }">
		<jsp:include page="topb.jsp"></jsp:include>
	</c:if>
	<!--小组简介-->
	<div class="container" id="content-container">
		<ol class="breadcrumb breadcrumb-o" style="margin-top: -18px">
			<li><a href="http://www.howzhi.com/">首页</a></li>
			<li><a href="http://www.howzhi.com/groups/explore">小组频道</a></li>
			<li><a href="http://www.howzhi.com/group/2/">${showgroups.groupname }</a></li>
		</ol>
		<div class="group-header"
			style="background: url(http://f1.howzhi.com/group-icon/2013/02-17/2114262b3815751219.jpg); background-repeat: no-repeat; background-size: 100% 100%;">
			<div class="media">
				<div class="media-left">
					<a href="http://www.howzhi.com/group/2/"> <img src="images/111938a63532860008.jpg"
						alt="${showgroups.groupname }" class="avatar-square-md">
					</a>
				</div>
				<div class="media-body">
					<h2 class="media-heading">${showgroups.groupname }<a id="add-btn" class="btn btn-success btn-sm mlm"
							href="http://www.howzhi.com/group/2/join">加入小组</a>
					</h2>
					<div class="media-metas">${showgroups.peoplecount }个成员 <span class="mlm">4608个话题</span> <span class="fsn mlm">创建时间：${showgroups.createtime }</span>
					</div>
				</div>
			</div>
			<div class="image-overlay image-overlay-o"></div>
		</div>

		<div class="row">
			<div class="col-md-8 group-main">
				<div class="panel panel-default">
					<div class="panel-body">

						<ul class="nav nav-tabs">
							<li class="active"><a href="http://www.howzhi.com/group/2/">小组首页</a></li>
							<li><a href="http://www.howzhi.com/group/member/2">小组成员</a></li>
							<li style="left: 0px; width: 104px; overflow: hidden;"
								class="highlight"></li>
						</ul>
						<div class="alert alert-info clearfix">
							<p>摄影公社（原称爱摄公社），集结好知网喜欢摄影的同学。欢迎大家在小组里发表作品、提问和分享信息。</p>

							<p>PS：大家传图片记得先处理一下，控制在1M以下哦。</p>

							<p>
								<strong>本组Q群：113410968</strong>
							</p>

							<p>
								<strong>本组微信：<a
									href="http://www.howzhi.com/group/snap/discuss/10143"
									target="_blank">photo-tips</a></strong>
							</p>

							<p>
								<strong>新浪微博：<a href="http://weibo.com/howzhifoto"
									target="_blank" title="摄影课堂微博">@howzhifoto</a></strong>
							</p>

							<p>
								<strong>常见摄影问答：<a
									href="http://www.howzhi.com/group/snap/discuss/1675"
									target="_blank" title="摄影问答">摄影知识之你问我答</a></strong>
							</p>

							<p>
								<strong>摄影基础概念：<a
									href="http://www.howzhi.com/group/snap/discuss/10195"
									target="_blank" title="摄影基础知识">光圈、景深、对焦，连续更新中</a></strong>
							</p>

							<p>
								<strong>摄影课程合集：<a
									href="http://www.howzhi.com/group/snap/discuss/725"
									target="_blank" title="摄影课程合集">好知网<strong>摄影课程合集</strong></a>
								</strong>
							</p>

							<p>&nbsp;</p>
							<hr>
							<div class="">
								<a id="add-btn" class="btn btn-info btn-sm pull-right"
									href="http://www.howzhi.com/group/2/join">加入小组</a> <span
									class="text-muted fsn mrm">创建时间：${showgroups.createtime }</span> <span
									class="text-muted fsn mrm">组长： <a
									class="link-light link-muted " href="http://www.howzhi.com/u/187/">${showgroups.createman }</a></span> <span
									class="text-muted fsn ">你已经是小组成员，<a id="exit-btn"
									class="text-muted" href="/group/2/exit"> » 退出小组</a></span>
							</div>
						</div>

						<div class="nav-filter clearfix mbl">

							<ul class="nav nav-pills nav-pills-sm">

								<li class="active"><a class="js-nav"
									data-target="#thread-pane"
									href="http://www.howzhi.com/group/2/?num=25&amp;sort=byCreatedTime&amp;isElite=0">全部</a></li>

								<li><a class="js-nav" data-target="#thread-pane"
									href="http://www.howzhi.com/group/2/?type=elite&amp;num=25&amp;sort=byCreatedTime">精华</a></li>

								<li><a class="js-nav" data-target="#thread-pane"
									href="http://www.howzhi.com/group/2/?type=reward&amp;num=25&amp;sort=byCreatedTime">悬赏</a></li>

								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="#"> <span class="text-muted">排序：</span>
										最新发帖 <span class="caret"></span>
								</a>
									<ul class="dropdown-menu">
										<li class="active"><a class="js-nav"
											href="http://www.howzhi.com/group/2/?isElite=all&amp;num=25&amp;sort=byCreatedTime">最新发帖</a></li>
										<li class=""><a class="js-nav"
											href="http://www.howzhi.com/group/2/?isElite=all&amp;num=25&amp;sort=byLastPostTime">最后回复</a></li>
										<li class=""><a class="js-nav"
											href="http://www.howzhi.com/group/2/?isElite=all&amp;num=25&amp;sort=byPostNum">回复数</a></li>
									</ul></li>
							</ul>

						</div>

						<!--小组热帖-->
						<ul class="media-list thread-list">
							<li class="media"><a class="pull-left js-user-card"
								href="http://www.howzhi.com/u/187/"
								data-card-url="/user/187/card/show" data-user-id="187"> <img
									class="avatar-md " src="images/person04.jpg" 　alt="乱流">
							</a>

								<div class="media-body">
									<div class="media-heading">
										<span class="label label-danger">置顶</span> <a class="title"
											href="http://www.howzhi.com/group/2/discuss/265661">【好知活动】冬日唯美人像外拍第一期回顾</a>

									</div>

									<div class="metas">
										<a class="link-light link-muted"
											href="http://www.howzhi.com/u/187/">乱流</a> <span
											class="daren-icon-t" title="达人"></span> <span class="divider">•</span>
										04-18 <span class="divider">•</span> 最后回复 <a
											class="link-light link-muted"
											href="http://www.howzhi.com/u/2355437/">赵小渔</a> 28天前
									</div>
								</div></li>
							<li class="media"><a title="" data-original-title=""
								class="pull-left js-user-card"
								href="http://www.howzhi.com/u/187/"
								data-card-url="/user/187/card/show" data-user-id="187"> <img
									class="avatar-md " src="images/person04.jpg" 　alt="乱流">
							</a>

								<div class="media-body">
									<div class="media-heading">
										<span class="label label-danger">置顶</span> <a class="title"
											href="http://www.howzhi.com/group/2/discuss/265626">Lightroom预设资源分享（第一期）</a>

									</div>

									<div class="metas">
										<a class="link-light link-muted"
											href="http://www.howzhi.com/u/187/">乱流</a> <span
											class="daren-icon-t" title="达人"></span> <span class="divider">•</span>
										03-13 <span class="divider">•</span> 最后回复 <a
											class="link-light link-muted"
											href="http://www.howzhi.com/u/1648670/">源源酱</a> 4天前
									</div>
								</div></li>
							<li class="media"><a class="pull-left js-user-card"
								href="http://www.howzhi.com/u/1897142/"
								data-card-url="/user/1897142/card/show" data-user-id="1897142">
									<img class="avatar-md " src="images/person01.jpg" 　alt="姚振华">
							</a>

								<div class="media-body">
									<div class="media-heading">
										<span class="label label-danger">置顶</span> <a class="title"
											href="http://www.howzhi.com/group/2/discuss/265624">开学季福利到！我要加入好知摄影入门班，快来帮我赢学费红包！</a>

									</div>

									<div class="metas">
										<a class="link-light link-muted"
											href="http://www.howzhi.com/u/1897142/">姚振华</a> <span
											class="divider">•</span> 03-10
									</div>
								</div></li>
							<li class="media"><a class="pull-left js-user-card"
								href="http://www.howzhi.com/u/187/"
								data-card-url="/user/187/card/show" data-user-id="187"> <img
									class="avatar-md " src="images/person04.jpg" 　alt="乱流">
							</a>

								<div class="media-body">
									<div class="media-heading">
										<span class="label label-danger">置顶</span> <a class="title"
											href="http://www.howzhi.com/group/2/discuss/11979">说说你觉得好的摄影书籍</a>
										<span class="label label-warning">精</span>

									</div>

									<div class="metas">
										<a class="link-light link-muted"
											href="http://www.howzhi.com/u/187/">乱流</a> <span
											class="daren-icon-t" title="达人"></span> <span class="divider">•</span>
										2013-07-25 <span class="divider">•</span> 最后回复 <a
											class="link-light link-muted"
											href="http://www.howzhi.com/u/2313406/">小舒</a> 05-09
									</div>
								</div></li>
						</ul>
						<!--分页-->
						<ul class="pagination ">
							<li class="active"><a
								href="http://www.howzhi.com/group/2/?page=1">1</a></li>
							<li><a href="http://www.howzhi.com/group/2/?page=2">2</a></li>
							<li><a href="http://www.howzhi.com/group/2/?page=3">3</a></li>
							<li><a href="http://www.howzhi.com/group/2/?page=4">4</a></li>
							<li><a href="http://www.howzhi.com/group/2/?page=5">5</a></li>

							<li><a href="http://www.howzhi.com/group/2/?page=2"><i
									class="es-icon es-icon-chevronright"></i></a></li>
							<li><a href="http://www.howzhi.com/group/2/?page=54">尾</a></li>
						</ul>

					</div>
				</div>
			</div>

			<div class="col-md-4 group-side">
				<!--组内搜索，用来搜索话题-->
				<form action="/group/2/serach" method="get">
					<div class="input-group group-search">
						<input name="_csrf_token"
							value="783d2780243a713e381a2657201ae9fc7f4e4f78" type="hidden">
						<input class="form-control" placeholder="组内搜索" name="keyWord"
							type="text"> <span class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</form>

				<!--最近加入的成员，按加入时间排序-->
				<div class="panel panel-default">
					<div class="panel-heading">最近加入</div>
					<!--最近加入成员，从数据库获取-->
					<div class="panel-body">
						<ul class="user-avatar-list clearfix">
							<li><a title="" data-original-title="" class=" js-user-card"
								href="http://www.howzhi.com/u/2364063/"
								data-card-url="/user/2364063/card/show" data-user-id="2364063">
									<img class="avatar-sm" src="images/person02.jpg"
									alt="浪漫时尚军旅军品店">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/2364063/">浪漫时尚军旅军品店</a>

								</div></li>
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/1969172/"
								data-card-url="/user/1969172/card/show" data-user-id="1969172">
									<img class="avatar-sm" src="images/person01.jpg"
									alt="小芋头Sky">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/1969172/">小芋头Sky</a>

								</div></li>
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/2338273/"
								data-card-url="/user/2338273/card/show" data-user-id="2338273">
									<img class="avatar-sm" src="images/person03.jpg"
									alt="acissejjessica">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/2338273/">acissejjessica</a>

								</div></li>
							<li><a title="" data-original-title="" class=" js-user-card"
								href="http://www.howzhi.com/u/2363329/"
								data-card-url="/user/2363329/card/show" data-user-id="2363329">
									<img class="avatar-sm" src="images/person04.jpg" alt="学无止境V">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/2363329/">学无止境V</a>

								</div></li>
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/1648670/"
								data-card-url="/user/1648670/card/show" data-user-id="1648670">
									<img class="avatar-sm" src="images/person05.jpg" alt="源源酱">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/1648670/">源源酱</a>

								</div></li>
							<li><a title="" data-original-title="" class=" js-user-card"
								href="http://www.howzhi.com/u/2364063/"
								data-card-url="/user/2364063/card/show" data-user-id="2364063">
									<img class="avatar-sm" src="images/person02.jpg"
									alt="浪漫时尚军旅军品店">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/2364063/">浪漫时尚军旅军品店</a>

								</div></li>
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/1969172/"
								data-card-url="/user/1969172/card/show" data-user-id="1969172">
									<img class="avatar-sm" src="images/person01.jpg"
									alt="小芋头Sky">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/1969172/">小芋头Sky</a>

								</div></li>
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/2338273/"
								data-card-url="/user/2338273/card/show" data-user-id="2338273">
									<img class="avatar-sm" src="images/person03.jpg"
									alt="acissejjessica">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/2338273/">acissejjessica</a>

								</div></li>
							<li><a title="" data-original-title="" class=" js-user-card"
								href="http://www.howzhi.com/u/2363329/"
								data-card-url="/user/2363329/card/show" data-user-id="2363329">
									<img class="avatar-sm" src="images/person04.jpg" alt="学无止境V">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/2363329/">学无止境V</a>

								</div></li>
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/1648670/"
								data-card-url="/user/1648670/card/show" data-user-id="1648670">
									<img class="avatar-sm" src="images/person05.jpg" alt="源源酱">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/1648670/">源源酱</a>

								</div></li>
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/2338273/"
								data-card-url="/user/2338273/card/show" data-user-id="2338273">
									<img class="avatar-sm" src="images/person03.jpg"
									alt="acissejjessica">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/2338273/">acissejjessica</a>

								</div></li>
							<li><a title="" data-original-title="" class=" js-user-card"
								href="http://www.howzhi.com/u/2363329/"
								data-card-url="/user/2363329/card/show" data-user-id="2363329">
									<img class="avatar-sm" src="images/person04.jpg" alt="学无止境V">
							</a>

								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/2363329/">学无止境V</a>

								</div></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>