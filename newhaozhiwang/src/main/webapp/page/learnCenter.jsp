<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html class="">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
		<meta name="renderer" content="webkit">
		<meta name="baidu-site-verification" content="XN2OVFQdUg">
		<title>
			学习中心</title>
		<meta name="keywords" content="免费教程 在线教育  在线学习  知识分享 教程 视频教程 视频教学  网络教学  自学教程 摄影教程 折纸教程 编程教程  电脑教程  健身教程  ps教程  公开课">
		<meta name="description" content="好知网是一个综合性在线学习平台。这里有大量的在线课程，课程涵盖计算机知识，企业管理，摄影，photoshop，职业技能，运动、外语、美食，时尚，手工艺，公开课，职业资格考试等。">
		<meta content="b8f650442b159a7b193f2cbf3d3cef6e67899fc8" name="csrf-token">
		<meta content="1" name="is-login">
		<meta content="1" name="is-open">

		<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
		<link href="../css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="../css/howzhi.css">

		<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.js"></script>
		<script type="text/javascript" src="../js/show.js"></script>

		<!--		<link rel="stylesheet" media="screen" href="/es-icon.css">
		<link rel="stylesheet" media="screen" href="/common.css">
		<link rel="stylesheet" media="screen" href="/font-awesome.css">
		<link rel="stylesheet" media="screen" href="/es-icon.css">
		<link href="/main.css" rel="styesheet">
		<link rel="stylesheet" type="text/css" href="/iconfont.css">-->

		<style>
			.cke {
				visibility: hidden;
			}
		</style>

	</head>

	<body class="hzme">
		<!-------------------------我是头部------------------------------------------->
		<header class="header">
			<div class="container">
				<div class="navbar-header pull-left">
					<a href="http://www.howzhi.com/" class="navbar-brand">
						<img src="/logo.png" class="img-responsive" alt="好知，howzhi.com">
					</a>
					<button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
				</div>
				<nav class="collapse navbar-collapse pull-left">
					<ul class="nav navbar-nav topmenu">
						<li class="visible-xs">
							<a href="http://www.howzhi.com/search?q="><i class="fa fa-search mrm"></i>搜索</a>
						</li>

						<li class="">
							<a href="http://www.howzhi.com/me/">学习中心 </a>
						</li>
						<li class="nav-hover">
							<a href="http://www.howzhi.com/courses">课程  <b class="caret"></b></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="http://www.howzhi.com/channel/photography">摄影课堂</a></li>
								<li><a href="http://www.howzhi.com/channel/creative-design">创意设计</a></li>
								<li><a href="http://www.howzhi.com/channel/music-school">声乐器乐</a></li>
								<li><a href="http://www.howzhi.com/channel/exercise-fitness">运动健身</a></li>
								<li><a href="http://www.howzhi.com/channel/IT-internet">IT互联网</a></li>
								<li><a href="http://www.howzhi.com/channel/interest">兴趣爱好</a></li>
								<li><a href="http://www.howzhi.com/channel/language">语言学习</a></li>
								<li><a href="http://www.howzhi.com/channel/career">职场技能</a></li>
								<li><a href="http://www.howzhi.com/channel/openclass">公开课</a></li>
							</ul>
						</li>
						<li class="">
							<a href="http://www.howzhi.com/classroom/poster/list">班级 </a>
						</li>
						<li class="">
							<a href="http://www.howzhi.com/groups/explore">小组 </a>
						</li>
					</ul>
					<div class="new-tips hz-triangle hidden-xs">
						“我的好知” 正式更名为 “<span class="t-primary">学习中心</span>”
						<div class="colse" id="hz-head-update" data-dismiss="alert">×</div>
						<i class="left"></i>
						<i class="right"></i>
					</div>
				</nav>
				<div class="pull-right user-nav clearfix">

					<ul class="nav pull-right">
						<li class="hidden-xs hidden-sm">
							<a class="btn btn-primary radius" href="http://www.howzhi.com/ugc/course"><i class="fa fa-plus"></i> 创建课程</a>
						</li>
						<li class="dropdown user-nav-dropdown user-img">
							<a href="#" class="dropdown-toggle">
								<img src="%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/100254eae7fc831187.jpg" class="user-avatar" alt="仗剑画江湖">
							</a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="http://www.howzhi.com/me/"><i class="fa fa-university"></i>学习中心</a>
								</li>
								<li><a href="http://www.howzhi.com/u/2358987/"><i class="fa fa-graduation-cap"></i>个人主页</a></li>
								<li><a href="http://www.howzhi.com/settings/"><i class="hz-icon icon-setting"></i>个人设置</a></li>
								<li><a href="http://www.howzhi.com/my/cards"><i class="hz-icon icon-accountbalancewallet"></i>账户中心</a></li>
								<li><a href="http://www.howzhi.com/logout"><i class="fa fa-sign-out"></i>退出登录</a></li>
							</ul>
						</li>
						<li class="user-msg user-nav-dropdown hidden-xs ">
							<a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
								<i class="hz-icon icon-notifications"></i>
							</a>
							<ul class="dropdown-menu text-center" role="menu">
								<li><a href="http://www.howzhi.com/howzhi/notification/Systemnotify"><i class="hz-icon icon-bullhorn"></i>通知</a></li>
								<li><a href="http://www.howzhi.com/message/"><i class="hz-icon icon-mail"></i>私信</a></li>
								<li><a href="http://www.howzhi.com/howzhi/notification/Reply"><i class="hz-icon icon-forum"></i>回复</a></li>
								<li><a href="http://www.howzhi.com/howzhi/notification/Interlocution"><i class="hz-icon icon-livehelp "></i>问答</a></li>
							</ul>
						</li>
						<li class="hidden-xs hzapp hidden-sm">
							<a href="http://www.howzhi.com/mobile?static=index-app-click">
								<small class="badge"> </small>
								<i class="hz-icon icon-smartphone"></i> 好知APP
							</a>
						</li>
					</ul>
					<form class="navbar-form pull-right hz-search hidden-xs" role="search" action="/search">
						<div class="form-group">
							<div id="search-left" class="pull-left search-left">
								<div class="search-type pull-left">
									<div class="choose">课程<i class="hz-icon icon-keyboardarrowdown"></i></div>
									<ul class="text-center">
										<li data-type="course">课程</li>
										<li data-type="discussion">话题</li>
										<li data-type="user">用户</li>
										<li data-type="group">小组</li>
									</ul>
								</div>
								<input class="form-control js-search" name="q" placeholder="输入要查找的内容" autocomplete="off">
							</div>
							<input name="t" value="course" type="hidden">
							<button class="button fa fa-search" type="submit"></button>
						</div>
					</form>
				</div>
			</div>
		</header>
		<!---------------------------------我是头部分隔线--------------------------------------------->

		<section class="p-home">
			<div class="container">
				<div class="personImg">
					<a class=" js-user-card" href="http://www.howzhi.com/u/2358987/" data-card-url="/user/2358987/card/show" data-user-id="2358987">
						<img class="img-responsive" src="../images/avatar.png" alt="仗剑画江湖">
					</a>

					<!---------------------用户信息------------------------>
					<div class="user-info">
						<span class="user-name">仗剑画江湖</span>
						<p>“天气正好 ”</p>
					</div>
				</div>
				<ul class="clearfix">
					<li><span>学分</span><a class="count" href="javascript:void(0)">20</a></li>
					<li class="line"></li>
					<li><span>等级</span><a class="count" title="1级(20学分), 升级还需10学分!" href="javascript:void(0)">1</a></li>
					<li class="line"></li>
					<li><span>金币</span><a class="count" href="javascript:void(0)">0</a></li>
				</ul>
			</div>
		</section>

		<nav class="home-nav">
			<div class="container">
				<ul class="nav nav-mian">
					<li class=" active "><a href="learnCenter.html">首页</a></li>
					<li class=" "><a href="studying.html">在学</a></li>
					<li class=" "><a href="teaching.html"> 在教</a></li>
					<li class=""><a href="mygroups.html">小组</a></li>
					<li class=" "><a href="javascript:void(0)">好友</a></li>
					<li class=" "><a href="javascript:void(0)">笔记</a></li>
					<li class=" "><a href="javascript:void(0)">任务</a></li>
					<!--<li class="more dropdown" id="more-dropdown"> <a href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">更多<b class="caret"></b></a>
						<ul class="dropdown-menu" id="dropdown-menu" role="menu">
							<li class=" "><a href="javascript:void(0)">作业</a></li>
							<li class=" "><a href="javascript:void(0)">笔记</a></li>
							<li class=""><a href="javascript:void(0)">问答</a></li>
							<li class="  "><a href="javascript:void(0)">任务</a></li>
						</ul>
					</li>-->
				</ul>
			</div>
		</nav>
		<section class="container home">
			<div class="row">
				<!-----------------首页------------------>
				<div class="col-md-9" id="shouye">
					<div class="mestudying flat ">
						<h3>正在学习</h3>
						<div class="phl">
							<!--还没有正在学习的课程时的样式-->
							<!--<div class="empty"><i class="es-icon es-icon-locallibrary"></i>数千门有趣的课程正在等你发现，<a href="http://www.howzhi.com/courses">快去看看吧 &gt;&gt;</a></div>-->
							
							<!--有正在学习的课程时的样式-->
							<div class="clearfix studing-item ">
								<div class="study-img">
									<a href="http://www.howzhi.com/course/13339/">
										<img class="img-responsive" src="../images/course01.jpg" alt="【古风人像】牛牛很忙教你打造穿越千年古风美人">
										<!--学习进度百分比-->
										<span class="load" style="width:0%"></span>
										<span class="pere text-center">0%</span>
									</a>
								</div>
								<div class="study-content">
									<h4><a href="http://www.howzhi.com/course/13339/">【古风人像】牛牛很忙教你打造穿越千年古风美人</a></h4>
								
									<p>2016-08-22学习至 <a href="http://www.howzhi.com/course/13339/lesson/83270" class="plm active">L1 【已结束】牛牛很忙教你打造穿越千年的古风美女 </a>
									</p>
								</div>
								<div class="study inter">
									<a href="http://www.howzhi.com/course/13339/">继续学习</a>
								</div>
							</div>
						</div>
					</div>

					<div class="f-movement">
						<h3>最新动态 
				          <a href="javascript:void(0)" class="active" id="studyactive">学习动态</a>
				          <a href="javascript:void(0)" id="friendactive">好友动态</a></h3>

						<!---------------------------------学习中心同学动态，从数据库中获取------------------------------------>
						<div id="studentactive" style="display: block;">
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/2324024/" data-card-url="/user/2324024/card/show" data-user-id="2324024">
										<img class="avatar-mm " src="../images/avatar.png" alt="叶子1975">
									</a>
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/2324024/">叶子1975</a>
									</p>
									<p class="f-time pull-right">06-01</p>
									<p></p>
							
									<p class="f-con ">
										在<a href="http://www.howzhi.com/classroom/14">Adobe Lightroom cc后期基础入门班 </a>发表了话题
									</p>
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="topic-icon"></span><a href="http://www.howzhi.com/classroom/14/thread/485"> 新生报到</a>
							                </h4>
									<ul>
										<li>
											<span class="t-c">新生报到
							                      </span>
										</li>
									</ul>
								</div>
							</div>
							
							<!--------------------------------第二段重复----------------------------------------------->
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1501660/" data-card-url="/user/1501660/card/show" data-user-id="1501660">
										<img class="avatar-mm " src="../images/avatar.png" alt="叉八仰">
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1501660/">叉八仰</a> 在
										<a class=" text-primary" href="http://www.howzhi.com/classroom/6">
							                    互联网营销入门班
							                  </a>回复了话题
									</p>
									<p class="f-time pull-right">05-26</p>
									<p></p>
							
									<p class="f-con f-dark">
										"回复 @小肥羊150： 哈哈，碰到老熟人了。"
									</p>
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="topic-icon"></span><a href="http://www.howzhi.com/classroom/6/thread/190"> advice</a>
							                </h4>
									<ul>
										<li>
											<span class="t-c">不能是无水之源。只有水道没有水是不行的，有水了只有流出也是不行的，要不断的有分支汇入补充。滚滚长江东逝水，浪花淘尽英雄。...
							                    </span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1501660/" data-card-url="/user/1501660/card/show" data-user-id="1501660">
										<img class="avatar-mm " src="../images/avatar.png" alt="叉八仰">
									</a>
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1501660/">叉八仰</a> 在
										<a class=" text-primary" href="http://www.howzhi.com/classroom/6">
							                    互联网营销入门班
							                  </a>回复了话题
									</p>
									<p class="f-time pull-right">12-31</p>
									<p></p>
							
									<p class="f-con f-dark">
										"<img src="../images/avatar.png" title="得意" alt="得意">"
									</p>
							
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="topic-icon"></span><a href="http://www.howzhi.com/classroom/6/thread/190"> advice</a>
							                </h4>
									<ul>
										<li>
											<span class="t-c">不能是无水之源。只有水道没有水是不行的，有水了只有流出也是不行的，要不断的有分支汇入补充。滚滚长江东逝水，浪花淘尽英雄。...
							                    </span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1740750/" data-card-url="/user/1740750/card/show" data-user-id="1740750">
										<img class="avatar-mm " src="../images/avatar.png" alt="就是兔子">
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1740750/">就是兔子</a>
									</p>
									<p class="f-time pull-right">12-24</p>
									<p></p>
							
									<p class="f-con">
										在<a href="http://www.howzhi.com/classroom/14">Adobe Lightroom cc后期基础入门班 </a>回复了活动
									</p>
									要积极提交作业哦^^
							
								</div>
								<div class="f-content ff">
							
									<h4 class="title"><span class="huodong-icon">活</span><a href="http://www.howzhi.com/classroom/14/thread/253"> Lightroom cc课程作业一</a>
							                </h4>
									<ul>
										<li>
											<span class="t-c">同学们运用所学习的污点去除与构图裁切的相关知识对以下风光图片进行修改和处理。去掉画面上多余的人物和路灯，并对畸变进行调整突出建筑主体。...
							                                </span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1350071/" data-card-url="/user/1350071/card/show" data-user-id="1350071">
										<img class="avatar-mm " src="../images/avatar.png" alt="凝创摄影艺术中心">
										<span class="dapinpai-icon" title="达品牌"></span>
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1350071/">凝创摄影艺术中心</a>
									</p>
									<p class="f-time pull-right">12-22</p>
									<p></p>
							
									<p class="f-con">
										在<a href="http://www.howzhi.com/classroom/14">Adobe Lightroom cc后期基础入门班 </a>创建了活动
									</p>
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="huodong-icon">活</span><a href="http://www.howzhi.com/classroom/14/thread/253"> Lightroom cc课程作业一</a>
							                </h4>
							
									<ul>
										<li>
											<span class="t-c">同学们运用所学习的污点去除与构图裁切的相关知识对以下风光图片进行修改和处理。去掉画面上多余的人物和路灯，并对畸变进行调整突出建筑主体。...
							                      </span>
										</li>
									</ul>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/1740750/" data-card-url="/user/1740750/card/show" data-user-id="1740750">
										<img class="avatar-mm " src="../images/avatar.png" alt="就是兔子">
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name"><a href="http://www.howzhi.com/u/1740750/">就是兔子</a>
									</p>
									<p class="f-time pull-right">09-16</p>
									<p></p>
							
									<p class="f-con ">
										在<a href="http://www.howzhi.com/classroom/6">互联网营销入门班</a>发表了话题
									</p>
								</div>
								<div class="f-content ff">
									<h4 class="title"><span class="topic-icon"></span><a href="http://www.howzhi.com/classroom/6/thread/83"> 【使用指南】玩转好知班级</a>
							                </h4>
							
									<ul>
										<li>
											<span class="t-c">福音来啦！为了让每位来到班级的同学都能快速掌握班级课件等相关区域功能的使用，班班把相关问题都整理到下面，方便大家查看学习。1.如何听课（播放课件）？登录好知网（http://www.howzhi.co...
							                      </span>
										</li>
									</ul>
								</div>
							</div>
							
							</div>
						
						
						<!------------------------好友动态------------------------------------------------>
						<div id="friend" style="display:none;">
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="5759">
										<img class="avatar-mm" src="../images/person01.jpg" alt="知了">
										<span class="daren-icon" title="达人"></span>
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name">
										<a href="javascript:;">知了</a>
									</p>
									<p class="f-time pull-right">05-23</p>
									<p></p>
							
									<p class="f-con">开始学习课时 城市中的火山口（2）...</p>
								</div>
								<div class="f-content ff">
									<a href="http://www.howzhi.com/course/2730/" class="c-img">
										<img src="../images/course02.jpg" class="img-responsive">
									</a>
							
									<div class="c-content">
										<a href="http://www.howzhi.com/course/2730/" class="c-title">AK：AE特效教程</a>
										<p>
											国外AE大神Andrew Kramer介绍许多酷炫特效的制作方法。注：17-21课为英文讲解，未翻译。...
										</p>
									</div>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="5759">
										<img class="avatar-mm" src="../images/person01.jpg" alt="知了">
										<span class="daren-icon" title="达人"></span>
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name">
										<a href="javascript:;">知了</a>
									</p>
									<p class="f-time pull-right">05-05</p>
									<p></p>
							
									<p class="f-con">开始学习课时 摄影师风格养成...</p>
								</div>
								<div class="f-content ff">
									<a href="http://www.howzhi.com/course/9573/" class="c-img">
										<img src="../images/course01.jpg" class="img-responsive">
									</a>
							
									<div class="c-content">
										<a href="http://www.howzhi.com/course/9573/" class="c-title">人像摄影高级教程</a>
										<p>
											由摄影师杨最醉主讲的人像摄影高级教程，从人像摄影器材到主题策划、光线捕捉、后期调色、磨皮等各个角度讲解。...
										</p>
									</div>
								</div>
							</div>
							
							<div class="publish-question home-out flat">
								<div class="f-img">
									<a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="5759">
										<img class="avatar-mm" src="../images/person01.jpg" alt="知了">
										<span class="daren-icon" title="达人"></span>
									</a>
							
								</div>
								<div class="f-left">
									<p class="f-name">
										<a href="javascript:;">知了</a>
									</p>
									<p class="f-time pull-right">05-05</p>
									<p></p>
							
									<p class="f-con">开始学习课时 人像氛围</p>
								</div>
								<div class="f-content ff">
									<a href="http://www.howzhi.com/course/9573/" class="c-img">
										<img src="../images/course09.jpg" class="img-responsive">
									</a>
							
									<div class="c-content">
										<a href="http://www.howzhi.com/course/9573/" class="c-title">人像摄影高级教程</a>
										<p>
											由摄影师杨最醉主讲的人像摄影高级教程，从人像摄影器材到主题策划、光线捕捉、后期调色、磨皮等各个角度讲解。...
										</p>
									</div>
								</div>
							</div>
										
						</div>
				
					</div>
							
				</div>
						
				
				
			
				<!-------------------------------右边每日签到,从数据库获取--------------------------------------------->
				<aside class="col-md-3 course-sidebar ss" id="qindao">
					<div class="flat hz-sign-in">
						<h3> 每日一拾</h3>
						
						<!----------------------未签到信息显示---------------------------->
						<div id="sign-no" style="">
							<div class="not-sign text-center ">
								<p class="t-gray">已连续拾到</p>
								<p>
									<font id="keep-nums">0</font>天</p>
							</div>
							<div class="has-sign" style="display:none;">
								<p>已连续拾到
									<font id="keep-num"></font>天</p>
								<p class="sentence"></p>
							</div>
							<div class="more-sign text-center">
								<a href="javascript:void(0);" id="tocheckin"><span class="calendar-icon t-dark mrm">24</span>拾到</a>
								<a href="javascript:void(0);" class="has-data" style="display:none;"><span class="calendar-icon t-dark mrm">24</span>已拾到</a>
							</div>

							<div class="share-out hz-share clearfix t-gray">
								<span class="pull-left">分享到：</span>

								<div class="dropdown-menu  js-social-share-params" data-title="每日一拾" data-summary="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-message="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-url="http://www.howzhi.com" data-picture="http://www.howzhi.com/assets/img/logo.png">
									<a href="javascript:void(0);" class="js-social-share weixin" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com"><i class="es-icon es-icon-weixin"></i></a>
									<a href="javascript:void(0);" class="js-social-share weibo" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
								</div>

							</div>
						</div>
						
						<!----------------------已签到信息显示---------------------------->
						<div id="sign-in" style="display: none;">
							<div style="display: none;" class="not-sign text-center ">
								<p class="t-gray">已连续拾到</p>
								<p>
									<font id="keep-nums">0</font>天</p>
							</div>
							<div class="has-sign" style="">
								<p>已连续拾到
									<font id="keep-num">2</font>天</p>
								<p class="sentence">生活只有在平淡无味的人看来才是空虚而平淡无味的。<br>---车尔尼雪夫斯基</p>
							</div>
							<div class="more-sign text-center">
								<a style="display: none;" href="javascript:;" id="tocheckin"><span class="calendar-icon t-dark mrm">23</span>拾到</a>
								<a href="javascript:void(0);" class="has-data" style=""><span class="calendar-icon t-dark mrm">23</span>已拾到</a>
							</div>
							<div class="share-out hz-share clearfix t-gray">
								<span class="pull-left">分享到：</span>

								<div class="dropdown-menu  js-social-share-params" data-title="每日一拾" data-summary="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-message="#好知每日一拾#生活只有在平淡无味的人看来才是空虚而平淡无味的。---车尔尼雪夫斯基" data-url="http://www.howzhi.com" data-picture="http://www.howzhi.com/assets/img/logo.png">
									<a href="javascript:void(0);" class="js-social-share weixin" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com"><i class="es-icon es-icon-weixin"></i></a>
									<a href="javascript:void(0);" class="js-social-share weibo" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
								</div>

							</div>
						</div>

						
						<div class="hz-ad flat">
							<!--这里插入要显示的班级图片，然后点击跳转到班级信息-->
							<a href="javascript:void(0)" target="_blank"><img src="../images/block_picture.jpg" class="img-responsive" alt="小九入门班"></a>
						</div>
				</div>
<!--------------------------------任务信息------------------------------------------>
						<div class="flat task">
							<h3>今日任务</h3>
							<div class="empty">暂无新任务</div>
							<div class="more"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> >&nbsp;&nbsp;查看更多</a></div>
						</div>
						
<!--------------------------------访客信息------------------------------------------>
						<div class="flat person-visitor">
							<h3>最新来访<span class="count"></span></h3>
							<div class="empty">暂无访客！</div>
						</div>

				</aside>
			</div>
		</section>


<!----------------------------------------我是底部分割线------------------------------------------------>
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 ">
						<a href="http://www.howzhi.com/"><img src="%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/foot-logo.png" alt="好知，知识分享新社区"></a>
					</div>
					<div class="col-md-4 about">
						<span><a href="http://www.howzhi.com/info/about">关于我们</a></span>|
						<span><a href="http://www.howzhi.com/join/us" target="_blank">加入我们</a></span>|
						<span><a href="http://www.howzhi.com/daren/" target="_blank">合作申请</a></span>|
						<span><a href="http://www.howzhi.com/group/feedback">意见反馈</a></span><br>
						<a class="con" href="http://www.miibeian.gov.cn/" target="_blank">
             浙ICP备13006852号-3
          </a>
					</div>
					<div class="col-md-4">
						关注我们：
						<a href="http://weibo.com/howzhicom"><i class="hz-icon icon-weibo"></i></a>
						<a class="icon-sns"><i class="hz-icon icon-weixin"></i>
          <div class="sns-popover" style="background:url(&quot;/assets/img/howzhi/weichat.png?2.6.17.2.3&quot;)">
            
          </div>
        </a>
						<a href="http://user.qzone.qq.com/2485597828/"><i class="hz-icon icon-qq"></i></a>

						<a href="http://site.douban.com/124522/"><i class="hz-icon icon-gongnengyedouban"></i></a>
					</div>
				</div>
			</div>
		</footer>
		<div class="friendlinks">
			<div class="container">
				<div class="content">
					<font>友情链接:</font>
					<a href="http://www.edusoho.com/" target="_blank" class="white">EduSoho开源网络课堂</a>
					<span>|</span>
					<a href="http://www.qiqiuyu.com/" target="_blank" class="white">气球鱼学院</a>
					<span>|</span>
					<a href="http://hao.360.cn/" target="_blank" class="white">360安全网址导航</a>
					<span>|</span>
					<a href="http://www.hao123.com/" target="_blank" class="white">hao123</a>
					<span>|</span>
					<a href="http://www.lvse.com/" target="_blank" class="white">绿色网</a>
					<span>|</span>
					<a href="http://www.chinaz.com/" target="_blank" class="white">站长之家</a>
					<span>|</span>
					<a href="http://www.xker.com/" target="_blank" class="white">新客网</a>
					<span>|</span>
					<a href="http://www.talang100.com/" target="_blank" class="white">踏浪100</a>
					<span>|</span>
					<a href="http://www.maiziedu.com/" target="_blank" class="white">麦子学院</a>
					<br>
				</div>
				Powered by <a href="http://www.edusoho.com/" target="_blank">EduSoho v6.17.2</a> ©2014-2016 <a class="mlm" href="http://www.howzhi.com/" target="_blank">好知网</a>
			</div>
		</div>
		<!--<script src="%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/piwik.js" defer="defer" async="" type="text/javascript"></script>
		<script src="%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/analytics.js" async=""></script>
		<script src="%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/hm.js"></script>-->
		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "//hm.baidu.com/hm.js?4d17172b485f74c1bd66be85d5fe26cc";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>
		<script>
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o),
					m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

			ga('create', 'UA-23840922-1', 'auto');
			ga('send', 'pageview');
		</script>

		<!-- Piwik -->
		<script type="text/javascript">
			var _paq = _paq || [];
			_paq.push(['trackPageView']);
			_paq.push(['enableLinkTracking']);
			(function() {
				var u = "//piwik.edusoho.cn/";
				_paq.push(['setTrackerUrl', u + 'piwik.php']);
				_paq.push(['setSiteId', 3]);
				var d = document,
					g = d.createElement('script'),
					s = d.getElementsByTagName('script')[0];
				g.type = 'text/javascript';
				g.async = true;
				g.defer = true;
				g.src = u + 'piwik.js';
				s.parentNode.insertBefore(g, s);
			})();
		</script>
		<noscript><p><img src="//piwik.edusoho.cn/piwik.php?idsite=3" style="border:0;" alt="" /></p></noscript>
		<!-- End Piwik Code -->

		<section class="serch-enginne-course visible-lg" role="alert">
		</section>
		<div id="login-modal" class="modal is-login" data-url="/login/ajax"></div>
		<div id="modal" class="modal" tabindex="-1"></div>
		<div id="upload-image-modal" class="modal" tabindex="-1" aria-hidden="true" style="display: none;"></div>
		<ul class="fixed-bar">
			<li class="hz-app">
				<a class="active btn btn-primary" target="_blank" href="http://www.edusoho.com/download/mobile?client=android&amp;code=howzhi">
      APP
    </a>
			</li>
			<li class="hz-weixin">
				<a class="fixed-bar-icon" href="javascript:;">
					<i class="hz-icon icon-erweima "></i>
				</a>
				<div class="weixin">
					<p class="text-center mvs t-primary hidden-xs hidden-sm">扫一扫 关注好知微信</p>
					<img src="%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/wenxin-qrcode.jpg" class="img-responsive" alt="好知网微信">
				</div>
			</li>
			<li class="hz-feedback">
				<a class="fixed-bar-icon" href="http://www.howzhi.com/feedback/user/list">
					<i class="hz-icon icon-question "></i>
				</a>
				<a href="http://www.howzhi.com/feedback/user/list?feedurl=http://www.howzhi.com/me/" target="_blank" class="js-feedback fixed-bar-text">
      问题反馈
    </a>
			</li>
			<li style="display: none;" class="go-top">
				<a class="fixed-bar-icon" href="javascript:;">
					<i class="hz-icon icon-keyboardarrowup"></i>
				</a>
				<a class="fixed-bar-text" href="javascript:;">
      回到顶部
    </a>
			</li>
		</ul>
		
		<!--<script src="%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/sea.js"></script>
		<script src="%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/seajs-style.js"></script>
		<script src="%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/seajs-global-config.js"></script>
		<script>
			seajs.use(app.mainScript);
		</script>-->

	</body>

</html>