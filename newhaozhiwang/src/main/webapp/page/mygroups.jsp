<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html class="">


	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
		<meta name="renderer" content="webkit">
		<meta name="baidu-site-verification" content="XN2OVFQdUg">
		<title>小组 </title>
		<meta name="keywords" content="免费教程 在线教育  在线学习  知识分享 教程 视频教程 视频教学  网络教学  自学教程 摄影教程 折纸教程 编程教程  电脑教程  健身教程  ps教程  公开课">
		<meta name="description" content="好知网是一个综合性在线学习平台。这里有大量的在线课程，课程涵盖计算机知识，企业管理，摄影，photoshop，职业技能，运动、外语、美食，时尚，手工艺，公开课，职业资格考试等。">
		<meta content="0726602168a166f6c80004c6b5a9453f2f080c56" name="csrf-token">
		<meta content="1" name="is-login">
		<meta content="1" name="is-open">

		<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">

		<link href="../css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="../css/howzhi.css">
		
		<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.js"></script>
		<script type="text/javascript" src="../js/show.js"></script>
		<!--[if lt IE 9]>
    <script src="/assets/libs/html5shiv.js?2.6.17.2.3"></script>
  <![endif]-->
		<!--[if IE 8]>
    <script src="/assets/libs/respond.min.js?2.6.17.2.3"></script>
  <![endif]-->

		<style>
			.cke {
				visibility: hidden;
			}
		</style>
	</head>

	<body class="hzme">
		<!---------------我是头部分隔线-------------------------------------------------------------->
		<header class="header">
			<div class="container">
				<div class="navbar-header pull-left">
					<a href="http://www.howzhi.com/" class="navbar-brand">
						<img src="logo.png" class="img-responsive" alt="好知，howzhi.com">
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
		
				</nav>
				<div class="pull-right user-nav clearfix">
		
					<ul class="nav pull-right">
						<li class="hidden-xs hidden-sm">
							<a class="btn btn-primary radius" href="http://www.howzhi.com/ugc/course"><i class="fa fa-plus"></i> 创建课程</a>
						</li>
						<li class="dropdown user-nav-dropdown user-img">
							<a href="#" class="dropdown-toggle">
								<img src="../images/avatar.png" class="user-avatar" alt="The_free">
							</a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="http://www.howzhi.com/me/"><i class="fa fa-university"></i>学习中心</a>
								</li>
								<li><a href="http://www.howzhi.com/u/2358985/"><i class="fa fa-graduation-cap"></i>个人主页</a></li>
								<li><a href="http://www.howzhi.com/settings/"><i class="hz-icon icon-setting"></i>个人设置</a></li>
								<li><a href="http://www.howzhi.com/my/cards"><i class="hz-icon icon-accountbalancewallet"></i>账户中心</a></li>
								<li><a href="http://www.howzhi.com/logout"><i class="fa fa-sign-out"></i>退出登录</a></li>
							</ul>
						</li>
						<li class="user-msg user-nav-dropdown hidden-xs ">
							<a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
								<i class="hz-icon icon-notifications"></i>
								<small class="badge"> </small>
							</a>
							<ul class="dropdown-menu text-center" role="menu">
								<li><a href="http://www.howzhi.com/howzhi/notification/Systemnotify"><i class="hz-icon icon-bullhorn"></i>通知<span>1</span></a></li>
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
									<ul style="display: none;" class="text-center">
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
		
		
			
		<!---------------中间部分内容------------------------------------------------------------------->
		<!---------------个人信息------------------------------------------>
		<section class="p-home">
			<div class="container">
				<div class="personImg">
					<a class=" js-user-card" href="http://www.howzhi.com/u/2358985/" data-card-url="/user/2358985/card/show" data-user-id="2358985">
						<img class="img-responsive" src="../images/avatar.png" alt="The_free">
					</a>

					<div class="user-info">
						<span class="user-name">The_free</span>
						<p>“<a href="http://www.howzhi.com/settings">您还未设置签名哦</a> ”</p>
					</div>
				</div>
				<ul class="clearfix">
					<li><span>学分</span><a class="count" href="http://www.howzhi.com/me/point">30</a></li>
					<li class="line"></li>
					<li><span>等级</span><a class="count" title="2级(30学分), 升级还需50学分!" href="http://www.howzhi.com/help/">2</a></li>
					<li class="line"></li>
					<li><span>金币</span><a class="count" href="http://www.howzhi.com/me/coin">0</a></li>
				</ul>
			</div>
		</section>
		
		<!-----------------菜单导航栏------------------------------------------>
		<nav class="home-nav">
			<div class="container">
				<ul class="nav nav-mian">
					<li class=""><a href="learnCenter.html">首页</a></li>
					<li class=""><a href="studying.html">在学</a></li>
					<li class=""><a href="teaching.html"> 在教</a></li>
					<li class=" active  "><a href="mygroups.html">小组</a></li>
					<li class=" "><a href="http://www.howzhi.com/me/following">好友</a></li>
					<li class=" "><a href="http://www.howzhi.com/me/favorite/course">收藏夹</a></li>
					<li class="more dropdown"><a href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">更多<b class="caret"></b></a>
						<ul class="dropdown-menu" role="menu">
							<li class=" "><a href="http://www.howzhi.com/my/homework/list">作业</a></li>
							<li class=" "><a href="http://www.howzhi.com/me/note">笔记</a></li>
							<li class=""><a href="http://www.howzhi.com/me/question/created">问答</a></li>
							<li class="  "><a href="http://www.howzhi.com/task/">任务</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		
		<!---------------小组部分-------------------------------------------------->
		<section class="container home">
			<div class="row">
				<div class="col-md-9">
		
					<div class="myhz-group flat">
						<h3>
							<a href="http://www.howzhi.com/me/group/newthreads" class="active">我的小组最新话题</a>
							<a href="http://www.howzhi.com/my/group/threads" class="">我发起的话题</a>
							<a href="http://www.howzhi.com/my/group/posts" class="">我回应的话题</a>
							<a href="http://www.howzhi.com/my/group/join" class="">我的小组</a>
						</h3>
						<ul class="group-new">
							<li class="empty"><i class="es-icon es-icon-forum"></i>先加入小组才能看到相关话题，<a href="http://www.howzhi.com/groups/explore">去发现</a>小组和话题</li>
						</ul>
						<ul class="pagination ">
							<li class="active"><a href="http://www.howzhi.com/me/group?page=1">1</a></li>
							<li><a href="http://www.howzhi.com/me/group?page=2">2</a></li>
							<li><a href="http://www.howzhi.com/me/group?page=3">3</a></li>
							<li><a href="http://www.howzhi.com/me/group?page=4">4</a></li>
							<li><a href="http://www.howzhi.com/me/group?page=5">5</a></li>
		
							<li><a href="http://www.howzhi.com/me/group?page=2">>></a></li>
							<li><a href="http://www.howzhi.com/me/group?page=849">尾</a></li>
						</ul>
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

		<!--------------------------尾部--------------------------------------------->
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 ">
						<a href="http://www.howzhi.com/"><img src="%E5%AD%A6%E4%B9%A0%E4%B8%AD%20-%20%E6%88%91%E7%9A%84%E5%A5%BD%E7%9F%A5%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/foot-logo.png" alt="好知，知识分享新社区"></a>
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
		<!--<script src="piwik.js" defer="defer" async="" type="text/javascript"></script>
		<script src="analytics.js" async=""></script>
		<script src="hm.js"></script>
		<script src="/sea.js"></script>
		<script src="/seajs-style.js"></script>
		<script src="/seajs-global-config.js"></script>
		<script>
		  seajs.use(app.mainScript);
		</script> -->
		
	</body>

</html>