<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="">
<head>
<base href="/newhaozhiwang/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<title>人像摄影高级教程 - 好知网-重拾学习乐趣</title>

<link
	href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico"
	rel="shortcut icon">

<!--		<link rel="stylesheet" media="screen" href="css/common.css">
		<link rel="stylesheet" media="screen" href="css/font-awesome.min.css">
		<link rel="stylesheet" media="screen" href="css/es-icon.css"> -->
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/tcdPageCode.css">

<link href="css/bootstrap.css" rel="stylesheet">
<!-- 		<link rel="stylesheet" type="text/css" href="css/iconfont.css">
 -->
 
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/top.js"></script>
<script type="text/javascript" src="js/joinproject.js"></script>
<script  type="text/javascript" src="js/jquery.page.js"></script>
<style>
.form-group {
	margin-top: 14px;
	margin-left: 30px;
}

.ly-course-img-moreproject {
	height: 147px;
	width: 261px;
	background-size: cover;
}

.login-box .form-group .form-control {
	border-radius: 5px;
	height: 45px;
	padding-left: 65px;
	width: 100%;
}

.modal-content login-modal-reset {
	background-color: #ffc;
	text-align: center;
}

#login-modal .img-responsive {
	margin-left: 120px;
	margin-top: 20px;
}

#login-modal input {
	width: 300px;
	margin-left: 110px;
}

#log {
	width: 300px;
}
</style>

</head>

<body class="course-dashboard-page">

	<c:set value="${users}" var="us" />
	<c:if test="${us==null }">
		<jsp:include page="topf.jsp"></jsp:include>
	</c:if>
	<c:if test="${us!=null }">
		<jsp:include page="topb.jsp"></jsp:include>
	</c:if>

	<section class="course-header-new">
		<div class="container">
			<!-- 面包屑 -->
			<div class="bread_crumb">

				<div class="breadcrumb">
					<a href=""></a> <span> &gt; </span><a href="">
						<span class="in"></span>
					</a>
				</div>

			</div>

			<div class="row hz-course-before clearfix">
				<div class="pic col-md-5 col-xs-12">
					<img class="img-responsive" src="images/160148ccf620140008.jpg" alt="">
				</div>
				<div class="info col-md-7 col-xs-12 pull-right">
					<h1 id="title"></h1>
					<div class="action">
						<div class="share hz-share top pull-right">
							<a href="javascript:;" class=" dropdown-toggle"
								data-toggle="dropdown"> <i class="glyphicon glyphicon-link"
								style="color: rgb(0, 0, 0)"></i>分享
							</a>

							<div class="dropdown-menu  js-social-share-params"
								data-title="人像摄影高级教程"
								data-summary="由摄影师杨最醉主讲的人像摄影高级教程，从人像摄影器材到主题策划、光线捕捉、后期调色、磨皮等各个角度讲..."
								data-message="我发现了一门好课程《人像摄影高级教程》，一起来学习吧！"
								data-url="http://www.howzhi.com/course/9573/"
								data-picture="http://f1.howzhi.com/course/2015/07-09/065523b78450837537.jpg">
								<a href="javascript:;" class="js-social-share weixin"
									data-cmd="weixin" title="分享到微信" data-share="weixin"
									data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com%2Fcourse%2F9573%2F"><i
									class="es-icon es-icon-weixin"></i></a> <a href="javascript:;"
									class="js-social-share weibo" data-cmd="tsina" title="分享到新浪微博"
									data-share="weibo"><i class="es-icon es-icon-weibo"></i></a> <a
									href="javascript:;" class="js-social-share qq" data-cmd="qq"
									title="分享到QQ好友" data-share="qq"><i
									class="es-icon es-icon-qq"></i></a> <a href="javascript:;"
									class="js-social-share qzone" data-cmd="qzone" title="分享到QQ空间"
									data-share="qzone"><i class="es-icon es-icon-qzone"></i></a>

							</div>

						</div>
						<a class="favorite pull-right" href="javascript:"
							id="favorite-btn" data-url="/course/9573/favorite"> <i
							class="glyphicon glyphicon-heart" style="color: rgb(0, 0, 0);"></i>收藏
						</a> <a class="favorite active pull-right" id="unfavorite-btn"
							href="javascript:" data-url="/course/9573/unfavorite"
							style="display: none;"> <i class="glyphicon glyphicon-heart"
							style="color: rgb(0, 0, 0);"></i>已收藏
						</a>
					</div>
					<div class="score">
						<span class="stars-5"> </span> <span id="ass"></span>
						<span id="asscount">（人评价）</span>
					</div>

					<ul class="metas clearfix">
						<li class="bd"><i class="glyphicon glyphicon-book"
							style="color: rgb(0, 0, 0);"></i>
							<p id="c1"></p></li>
						<li class="bd"><i class="glyphicon glyphicon-user"
							style="color: rgb(0, 0, 0);"></i>
							<p id="c2"></p></li>
						<li><i class="glyphicon glyphicon-zoom-in"
							style="color: rgb(0, 0, 0);"></i>
							<p id="c3"></p></li>
						<li class="join"><a class="btn btn-primary"
							data-toggle="modal" href="javascript:void(0);"
							data-url="/course/9573/buy?targetType=course" onclick="join()">加入课程</a>
						</li>

					</ul>
				</div>
			</div>

		</div>
		<input id="isjoin" type="hidden" value="false">
	</section>

	<section class="container">
		<div class="row">
			<div class="col-md-9">

				<div class="alert alert-warning announcements aside-notice"
					role="alert">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a style="color: #ff5e06" class="alert-link"
									href="http://www.howzhi.com/course/9573/#modal"
									data-toggle="modal"
									data-url="/announcement/254/9573/show?targetType=course"> <i
									class="es-icon es-icon-infooutline"></i>
									好知摄影课堂官方讨论群：499012956欢迎各位小伙伴进群讨论。好知摄影课堂会...
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="course-lessons flat" data-widget-cid="widget-1">
					<div class="course-nav clearfix affix-top" id="myScrollspy">
						<ul class="nav" id="nav">

							<li class="active"><a href="javascript:void(0);">简介</a></li>

							<li class=""><a href="javascript:void(0);">课时 <span id="cm"></span>
							</a></li>
							<li class="hz-x-hide "><a href="javascript:void(0);">笔记 <span id="bj"></span>
							</a></li>
							<li class="hz-x-hide "><a href="javascript:void(0);">问答 <span>(23)</span>
							</a></li>
							<li class="hz-x-hide "><a href="javascript:void(0);">学员 <span>(11922)</span></a></li>
							<li class=""><a href="javascript:void(0);">评论 <span>(474)</span></a></li>
							<li class="btnbar pull-right"><a
								class="btn btn-primary joinbtn pull-right mlm"
								data-toggle="modal" href="javascript:void(0);"
								data-url="/course/9573/buy?targetType=course">加入课程</a></li>
						</ul>
					</div>
					<!--  课程详情 --------------------------------------------------- -->
					<div class="hz-overview hzcourse-detail" style="display: block;"id="courseInfo">
						<h3 class="overview-title hz-line-left">课程简介</h3>
						<div class="editor-text ptl">
							<p id="courseinfo"><br>
							</p>
						</div>
						<h3 class="overview-title hz-line-left">课程标签</h3>
						<ul class="tag mtl phl clearfix">
							<li><a href="" id="courseing">人像摄影</a></li>
						</ul>

						<h3 class="overview-title hz-line-left">课程列表</h3>
						<ul class="period-list hz-courselist" id="course-item-list">

					<li class="period lesson-item lesson-item-67383 "style="text-align: center;color:#616161">
						该课程还未添加课时！！！</li>

						</ul>
					</div>
					<!--  课程详情分割线 ------------------------------------ -->

					<!--  课程列表分割线  ---------------------------------------------- -->
					<ul class="period-list hz-courselist" id="courselist" style="display: none;">
						<li class="period lesson-item lesson-item-67383 "style="text-align: center;color:#616161">
						该课程还未添加课时！！！</li>

					</ul>
					<!--  课程列表分割线  ---------------------------------------------- -->
					<!--  笔记 ----------------------------------- -->
					<div class="course-notes course-in" style="display: none;" id="courseNotes">
						<div class="notes-header">
							<a href="http://www.howzhi.com/course/9573/notes"
								class="  active  nn">同学笔记</a> <span><a href="javascript:void(0);">最热</a> 
								<a href="javascript:void(0);" class="active">最新</a></span>
						</div>
						<ul class="notes-list" id="noteslist">
							<li class="clearfix" style="text-align: center;color:#616161">
								该课程还没有笔记！！！
							</li>
						</ul>

					</div>
					<!--  笔记分割线 ----------------------------------  -->
					<!--  w問答分割線 -------------------------------------- -->
					<div class="course-question course-in" style="display: none;" id="courseQuestion">
						<div class="question-header">
							共<span>24</span>个问题
						</div>
						<textarea rows="4" cols="3"></textarea>

						<ul class="course-in-ul" id="questionAndAnswer">
							<li>
								<h4>
									<span class="q-icon"></span><a class="js-nav"
										href="http://www.howzhi.com/question/57595">老师好 麻烦老师解释下</a> <a
										class="link-muted"
										href="http://www.howzhi.com/course/9573/lesson/67389"
										title="风光摄影后期"> <span class="from">来自L7-风光摄影后期</span></a>

								</h4>
								<p>
									by <a class="link-light link-muted"
										href="http://www.howzhi.com/u/2362511/">自选角度</a> • 0 回答 • 14浏览
								</p>
							</li>
							<li>
								<h4>
									<span class="q-icon"></span><a class="js-nav"
										href="http://www.howzhi.com/question/57542">后期修图问题</a> <a
										class="link-muted"
										href="http://www.howzhi.com/course/9573/lesson/67383"
										title="人像器材的选择"> <span class="from">来自L1-人像器材的选择</span></a>

								</h4>
								<p>
									by <a class="link-light link-muted"
										href="http://www.howzhi.com/u/2334840/">王福刚</a> • 0 回答 • 62浏览
								</p>
							</li>

						</ul>
						<div class="tcdPageCode" id="qatcpage"></div>
						<script type="text/javascript">
							$("#qatcpage").createPage({
						        pageCount:6,
						        current:1,
						        backFn:function(p){
						            console.log(p);
						        }
						    });
						</script>
					</div>
					<!--  问答分割线 ----------------------------------- -->
					<!--  学员分割线 --------------------------------- -->
					<div class="course-classmate course-in" style="display: none;" id="courseClassmate">
						<h4>
							<span class="dash-icon"></span>授课老师
						</h4>
						<ul class="course-in-ul clearfix" id="studentsInfo">
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/1687444/"
								data-card-url="/user/1687444/card/show" data-user-id="1687444">
									<img class="avatar-ll" src="images/125522a1b6f0301474.jpg"
									alt="杨最醉">
							</a>

								<p>
									<a href="http://www.howzhi.com/u/1687444/">杨最醉</a>
								</p></li>
						</ul>
						<h4>
							<span class="dash-icon"></span>学员
						</h4>
						<ul class="course-in-ul clearfix">
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/2364232/"
								data-card-url="/user/2364232/card/show" data-user-id="2364232">
									<img class="avatar-ll" src="images/avatar.png" alt="小飞侠灬">
							</a>

								<p>
									<a href="http://www.howzhi.com/u/2364232/">小飞侠灬</a>
								</p></li>
							<li><a class=" js-user-card"
								href="http://www.howzhi.com/u/2364224/"
								data-card-url="/user/2364224/card/show" data-user-id="2364224">
									<img class="avatar-ll" src="images/avatar.png" alt="Vangou">
							</a>

								<p>
									<a href="http://www.howzhi.com/u/2364224/">Vangou</a>
								</p></li>

						</ul>


						
						<div class="tcdPageCode" id="stcpage"></div>
						<script type="text/javascript">
							$("#stcpage").createPage({
						        pageCount:6,
						        current:1,
						        backFn:function(p){
						            console.log(p);
						        }
						    });
						</script>


					</div>
					<!--  学员分割线 ------------------------------ -->
					<!-- 评论分割线 ---------------------------------------- -->
					<div class="course-notes course-in" style="display: none" id="courseAssess">
						<ul class="notes-list" id="commentcontent">
							<li id="item92930">
								<div class="notes-img">
									<a class=" js-user-card"
										href="http://www.howzhi.com/u/1731774/"
										data-card-url="/user/1731774/card/show" data-user-id="1731774">
										<img class="avatar-sm" src="images/avatar.png"
										alt="竹墨涵清">
									</a>

								</div>
								<div class="notes-content">
									<h4>
										发布在课时 <a href="http://www.howzhi.com/course/9573/lesson/67386">人像后期调色</a>
									</h4>
									<div class="body">好好</div>
									<div class="metas">
										<span class="name">by <a href="javascrit:;">竹墨涵清</a></span><span
											class="time">--8天前</span>
									</div>
								</div>
							</li>

							<li id="item92778">
								<div class="notes-img">
									<a class=" js-user-card"
										href="http://www.howzhi.com/u/2359649/"
										data-card-url="/user/2359649/card/show" data-user-id="2359649">
										<img class="avatar-sm" src="images/avatar.png" alt="suiyuang">
									</a>

								</div>
								<div class="notes-content">
									<h4>
										发布在课时<a href="http://www.howzhi.com/course/9573/lesson/67385">光影和动作捕捉</a>
									</h4>
									<div class="body">好好</div>
									<div class="metas">
										<span class="name">by <a href="javascrit:;">suiyuang</a></span><span
											class="time">--13天前</span>
									</div>
								</div>
							</li>

							
						


						</ul>
						<div class="tcdPageCode" id="commenttcpage"></div>
						
					</div>
					<!--  评论分割线 ------------------------------------- -->
					
					
					
					
					
					

				</div>

				<div class="course flat nopad">
					<div class="section-header">
						<h2>你感兴趣的课程</h2>
					</div>
					<div class="section-body">
						<div class="row">
							<div class="col-md-4 col-sm-6 ">

								<div class="course-item">
									<div class="">

										<img src="images/065523b78450837537.jpg" alt="人像摄影入门"
											class="ly-course-img-moreproject"> <a
											href="http://www.howzhi.com/course/106/">
											<div class="mask">
												<span class="btn btn-primary">开始学习</span>
											</div>
										</a>
									</div>
									<div class="course-info">
										<div class="title">
											<span class="label label-p">人像</span> <a class="transition"
												href="http://www.howzhi.com/course/106/">人像摄影入门</a>
										</div>
										<div class="metas">
											<span>12万+浏览</span>/ <span>7064学员</span>/ <span>4.1评分</span>
										</div>
										<div class="teacher text-o-show">
											<a class=" js-user-card" href="http://www.howzhi.com/u/187/"
												data-card-url="/user/187/card/show" data-user-id="187">
												<img class="avatar-ss " src="images/145733d2af26635228.jpg"
												alt="乱流"> 乱流
											</a> <span class="daren-icon-t" title="达人"></span>

											<div class="price free pull-right">
												<span>免费</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6  nobd">

								<div class="course-item">
									<div class="course-img">

										<img src="images/0650262eb443828220.jpg" alt="人像摄影布光入门"
											class="ly-course-img-moreproject"> <a
											href="http://www.howzhi.com/course/157/">
											<div class="mask">
												<span class="btn btn-primary">开始学习</span>
											</div>
										</a>
									</div>
									<div class="course-info">
										<div class="title">
											<span class="label label-p">人像</span> <a class="transition"
												href="http://www.howzhi.com/course/157/">人像摄影布光入门</a>
										</div>
										<div class="metas">
											<span>11万+浏览</span>/ <span>3989学员</span>/ <span>4.3评分</span>
										</div>
										<div class="teacher text-o-show">
											<a class=" js-user-card" href="http://www.howzhi.com/u/187/"
												data-card-url="/user/187/card/show" data-user-id="187">
												<img class="avatar-ss " src="images/145733d2af26635228.jpg"
												　alt="乱流"> 乱流
											</a> <span class="daren-icon-t" title="达人"></span>

											<div class="price free pull-right">
												<span>免费</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6 ">

								<div class="course-item">
									<div class="course-img">

										<img src="images/0646571e86d5209598.jpg" alt="人像摄影课程"
											class="class="ly-course-img-moreproject"> <a
											href="http://www.howzhi.com/course/3559/">
											<div class="mask">
												<span class="btn btn-primary">开始学习</span>
											</div>
										</a>
									</div>
									<div class="course-info">
										<div class="title">
											<span class="label label-p">人像</span> <a class="transition"
												href="http://www.howzhi.com/course/3559/">人像摄影课程</a>
										</div>
										<div class="metas">
											<span>10万+浏览</span>/ <span>9091学员</span>/ <span>4.1评分</span>
										</div>
										<div class="teacher text-o-show">
											<a class=" js-user-card"
												href="http://www.howzhi.com/u/1304328/"
												data-card-url="/user/1304328/card/show"
												data-user-id="1304328"> <img class="avatar-ss "
												src="images/165229dcc0b7462331.jpg" 　alt="维纳斯学院">
												维纳斯学院
											</a>

											<div class="price free pull-right">
												<span>免费</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<aside class="col-md-3 course-sidebar">

				<div class="flat sidebar-teach media">
					<h3>课程教师</h3>
					<div class="media-left">
						<a class=" js-user-card" href="http://www.howzhi.com/u/1687444/"
							data-card-url="/user/1687444/card/show" data-user-id="1687444">
							<img class=" avatar-sm " src="images/125522a1b6f0301474.jpg"
							　alt="${course.user.uname}">
						</a>

					</div>
					<div class="teach-info media-body">
						<p class="text-o-show">
							<a class="link-light " href="http://www.howzhi.com/u/1687444/">${course.user.uname}</a>
						</p>
						<p>
							<a href="http://www.howzhi.com/u/1687444/course/created"><span>1</span>在教</a>
							<a href="http://www.howzhi.com/u/1687444/fans"><span>2</span>粉丝</a>
						</p>
					</div>
					<div class="ta clearfix" data-role="followUser">
						<a class="act first follow-btn" href="javascript:;"
							data-url="/user/1687444/follow"> <i
							class="glyphicon glyphicon-plus""></i> 关注TA
						</a> <a class="act first unfollow-btn" href="javascript:;"
							data-url="/user/1687444/unfollow" style="display: none"> <i
							class="glyphicon glyphicon-ok" style="color: rgb(255, 0, 0);"></i>
							已关注
						</a> <a class="act" href="http://www.howzhi.com/course/9573/"
							data-toggle="modal" data-target="#modal"
							data-url="/message/create/1687444"> <i
							class="glyphicon glyphicon-envelope""></i> 私信
						</a>
					</div>
				</div>

				<div class="hz-ad flat">
					<a href="http://www.howzhi.com/classroom/17" target="_blank"><img
						src="http://f1.howzhi.com/system/block_picture_1460094834.jpg"
						class="img-responsive" alt="牛牛人像摄影班"></a>
				</div>

				<div class="flat sidebar-judge">
					<h3>最新评论</h3>
					<ul>

						<li class="media">
							<div class="media-left">
								<a class=" js-user-card" href="http://www.howzhi.com/u/1559536/"
									data-card-url="/user/1559536/card/show" data-user-id="1559536">
									<img class="avatar-xs " src="images/avatar.png" 　alt="ylzd">
								</a>
							</div>
							<div class="comment-content media-body ">
								<div class="name">
									<a class="link-light " href="http://www.howzhi.com/u/1559536/">ylzd</a>
									<span class="day">12天前</span>
								</div>
								<div class="content">都是干货，赞</div>
							</div>
						</li>

					</ul>
					<div class="more">
						<a href="http://www.howzhi.com/course/9573/comments"><i
							class="glyphicon glyphicon-chevron-right"></i>查看更多</a>
					</div>
				</div>

				<div class="panel panel-default student-dynamic">

					<div class="panel-heading">
						<h3 class="panel-title">
							<i class="es-icon es-icon-recentactors"></i>学员动态
						</h3>
					</div>

					<div class="panel-body">


						<div class="media media-number-o">
							<div class="media-body">
								<a class="link-light " href="http://www.howzhi.com/u/2355584/">白城阿3</a>
								开始学习课时 <a class="link-dark"
									href="http://www.howzhi.com/course/9573/" title="来自《人像摄影高级教程》">人像器材的选择</a>

							</div>
						</div>

					</div>

				</div>

				<div class="flat sidebar-notes">
					<h3>课程最新笔记</h3>
					<ul id="rightNote">
						<li>
							<h4>
								<a href="javascript:void(0);"><i
									class="glyphicon glyphicon-pencil"></i>人像后期调色的笔记</a>
							</h4> 
								<span>呈现出</span>
						</li>

					</ul>
					<div class="more">
						<a href="http://www.howzhi.com/course/9573/notes"><i
							class="glyphicon glyphicon-chevron-right"></i>查看更多</a>
					</div>
				</div>

				<div class="flat sidebar-question">
					<h3>课程最新问题</h3>
					<ul>

						<li><span class="class="glyphiconglyphicon-question-sign""></span><a
							href="http://www.howzhi.com/question/57542">后期修图问题</a></li>



					</ul>
					<div class="more">
						<a href="http://www.howzhi.com/course/9573/questions"><i
							class="glyphicon glyphicon-chevron-right"></i>查看更多</a>
					</div>
				</div>

				<!--新加入学员-->
				<div class="flat sidebar-learner ">
					<h3>
						最新加入学员<span class="count">(11922)</span>
					</h3>
					<ul class="clearfix">

						<li><a class=" js-user-card"
							href="http://www.howzhi.com/u/2359828/"
							data-card-url="/user/2359828/card/show" data-user-id="2359828">
								<img class="avatar-sm" src="images/avatar.png"
								alt="红日211">
						</a> <a href="http://www.howzhi.com/u/2359828/" title="红日211"
							class="name">红日211</a></li>


					</ul>
				</div>

			</aside>
		</div>
	</section>

	<div class="modal fade" aria-hidden="true" style="display: none;"
		data-url="/hzpop/view/0" id="pop-box-show" data-target-id="0"
		data-target-type="course" data-is-show="0"></div>

	<!--  尾部  -->
	<jsp:include page="footer.jsp"></jsp:include>

	<div aria-hidden="false"
		style="display: none; position: absolute; z-index: 20000;"
		id="login-modal" class="modal in" data-url="/login/ajax">
		<div class="modal-dialog ">
			<div class="modal-content login-modal-reset">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title text-center">登录好知</h4>
					<img class="img-responsive" src="images/login-model.png">
				</div>
				<div class="modal-body">
					<div class="login-box reset">

						<form data-widget-cid="widget-5" novalidate="novalidate"
							id="login-ajax-form" class="form-vertical form-vertical-small"
							method="post" action="/login_check">

							<div class="alert alert-danger" style="display: none;"></div>

							<div class="form-group">
								<div class="controls">
									<label class="fa-label"> <i class="fa fa-user"></i>
									</label> <input data-explain="" data-widget-cid="widget-6"
										class="form-control" id="ajax-username" name="_username"
										placeholder="邮箱/手机/昵称" data-display="请输入邮箱/手机/昵称" type="text">
									<div class="help-block" style="display: none;"></div>
								</div>
							</div>

							<div class="form-group">
								<div class="controls">
									<label class="fa-label"> <i class="fa fa-unlock-alt"></i>
									</label> <input data-explain="" data-widget-cid="widget-7"
										class="form-control" id="ajax-password" name="_password"
										placeholder="密码" data-display="密码" type="password">
									<div class="help-block" style="display: none;"></div>
								</div>
							</div>
							<div class="form-group" id="log">
								<div class="controls">
									<span class="checkbox mtm "> <a
										class="pull-right active"
										href="http://www.howzhi.com/password/reset">忘记密码</a>
									</span>
								</div>
								<input class="login-btn btn btn-primary" value="登录"
									type="submit">


							</div>
							<input name="_csrf_token"
								value="e5ba33c2f523f18887afc283816ce0e566e8c07e" type="hidden">
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<div class="toregister">
						<a class="active" href="">如果没有好知账号？立即注册&gt;</a>
						<!--?</div-->
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="loadingDiv"
		style="position: fixed; display: none; z-index: 2000; top: 0px; left: 0px; width: 100%; height: 100%; background-color: #333; opacity: 0.8"></div>
</body>

</html>