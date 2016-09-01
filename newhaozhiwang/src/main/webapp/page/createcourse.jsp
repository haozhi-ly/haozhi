<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="">
<head>
<base href="/newhaozhiwang/"/>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="baidu-site-verification" content="XN2OVFQdUg">
<title>创建课程 - 好知网-重拾学习乐趣-Powered By Howzhi</title>
<meta name="keywords"
	content="免费教程 在线教育  在线学习  知识分享 教程 视频教程 视频教学  网络教学  自学教程 摄影教程 折纸教程 编程教程  电脑教程  健身教程  ps教程  公开课">
<meta name="description"
	content="好知网是一个综合性在线学习平台。这里有大量的在线课程，课程涵盖计算机知识，企业管理，摄影，photoshop，职业技能，运动、外语、美食，时尚，手工艺，公开课，职业资格考试等。">
<meta content="07a4f60e59a06d6a2bb50653922d7fcc9d0a9ea5"
	name="csrf-token">
<meta content="1" name="is-login">
<meta content="1" name="is-open">

<link
	href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/top.js"></script>

</head>
<body class="index">
	<jsp:include page="topb.jsp"></jsp:include>

	<div class="container" id="content-container">

		<section class="container flat create-course">
			<h1>
				创建课程<span>CREATE A COURSE</span>
			</h1>
			<div class="create-index clearfix one">
				<div class="col-md-6 left">
					<form id="course-create-form" class="form-horizontal" method="post" action="page/manage.jsp" novalidate="novalidate"
						data-widget-cid="widget-0">
						<div class="form-group create-title">
							<div class="control-label">
								<label class="required title" for="course_title">课程标题</label>
							</div>
							<div class="controls">
								<input id="course_title" class="form-control" type="text"
									data-explain="" placeholder="请填写课程标题"
									data-widget-cid="widget-1" required="required" name="title">
								<a class="text-muted" target="_blank"
									href="http://www.howzhi.com/course/11662/"> <i
									class="glyphicon glyphicon-question-sign"
									style="font-size: 12px;"></i>如何创建课程
								</a>
							</div>
						</div>
						<div class="form-group">
							<input id="course-create-btn"
								class="btn active btn-primary pull-right" type="submit"
								value="创建课程" data-submiting-text="正在创建">
						</div>

						<input type="hidden" name="_csrf_token"
							value="07a4f60e59a06d6a2bb50653922d7fcc9d0a9ea5"> <input
							type="hidden" value="UGC" name="howzhi_course_source">
					</form>
				</div>
				<div class="col-md-6">
					<div class="import-title">
						<i class="glyphicon glyphicon-file" style="font-size: 16px;"></i>
						从视频专辑导入课程
					</div>
					<p class="inport_info">
						已支持优酷、腾讯视频、网易公开课、爱奇艺教育<br>的视频专辑导入。
					</p>
					<p class="inport_info">
						<a class="active"
							href="http://www.howzhi.com/ugc/course/import/index">» 立即使用</a>
					</p>
				</div>
			</div>
		</section>
	</div>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 ">
					<a href="http://www.howzhi.com/"><img
						src="./images/foot-logo.png" alt="好知，知识分享新社区"></a>
				</div>
				<div class="col-md-4 about">
					<span><a href="http://www.howzhi.com/info/about">关于我们</a></span>| <span><a
						href="http://www.howzhi.com/join/us" target="_blank">加入我们</a></span>| <span><a
						href="http://www.howzhi.com/daren/" target="_blank">合作申请</a></span>| <span><a
						href="http://www.howzhi.com/group/feedback">意见反馈</a></span><br> <a
						class="con" href="http://www.miibeian.gov.cn/" target="_blank">
						浙ICP备13006852号-3 </a>
				</div>
				<div class="col-md-4">
					关注我们： <a href="http://weibo.com/howzhicom"><i
						class="hz-icon icon-weibo"></i></a> <a class="icon-sns"><i
						class="hz-icon icon-weixin"></i>
						<div class="sns-popover" style="background:url(&amp;quot;/assets/img/howzhi/weichat.png?2.6.17.2.3&amp;quot;)">
						</div> </a> <a href="http://user.qzone.qq.com/2485597828/"><i
						class="hz-icon icon-qq"></i></a> <a
						href="http://site.douban.com/124522/"><i
						class="hz-icon icon-gongnengyedouban"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<div class="friendlinks">
		<div class="container">
			<div class="content">
				<font>友情链接:</font> <a href="http://www.edusoho.com/" target="_blank"
					class="white">EduSoho开源网络课堂</a> <span>|</span> <a
					href="http://www.qiqiuyu.com/" target="_blank" class="white">气球鱼学院</a>
				<span>|</span> <a href="http://hao.360.cn/" target="_blank"
					class="white">360安全网址导航</a> <span>|</span> <a
					href="http://www.hao123.com/" target="_blank" class="white">hao123</a>
				<span>|</span> <a href="http://www.lvse.com/" target="_blank"
					class="white">绿色网</a> <span>|</span> <a
					href="http://www.chinaz.com/" target="_blank" class="white">站长之家</a>
				<span>|</span> <a href="http://www.xker.com/" target="_blank"
					class="white">新客网</a> <span>|</span> <a
					href="http://www.talang100.com/" target="_blank" class="white">踏浪100</a>
				<span>|</span> <a href="http://www.maiziedu.com/" target="_blank"
					class="white">麦子学院</a> <br>
			</div>
			Powered by <a href="http://www.edusoho.com/" target="_blank">EduSoho
				v6.17.2</a> ©2014-2016 <a class="mlm" href="http://www.howzhi.com/"
				target="_blank">好知网</a>
		</div>
	</div>
	<!-- End Piwik Code -->
	<section class="serch-enginne-course visible-lg" role="alert">
	</section>
	<div id="login-modal" class="modal is-login" data-url="/login/ajax"></div>
	<div id="modal" class="modal" tabindex="-1"></div>
	<div id="upload-image-modal" class="modal" tabindex="-1"
		aria-hidden="true" style="display: none;"></div>
	<ul class="fixed-bar">
		<li class="hz-app"><a class="active btn btn-primary"
			target="_blank"
			href="http://www.edusoho.com/download/mobile?client=android&amp;code=howzhi">
				APP </a></li>
		<li class="hz-weixin"><a class="fixed-bar-icon"
			href="javascript:;"> <i class="hz-icon icon-erweima "></i>
		</a>
			<div class="weixin">
				<p class="text-center mvs t-primary hidden-xs hidden-sm">扫一扫
					关注好知微信</p>
				<img src="./images/wenxin-qrcode.jpg" class="img-responsive"
					alt="好知网微信">
			</div></li>
		<li class="hz-feedback"><a class="fixed-bar-icon"
			href="http://www.howzhi.com/feedback/user/list"> <i
				class="hz-icon icon-question "></i>
		</a> <a
			href="http://www.howzhi.com/feedback/user/list?feedurl=http://www.howzhi.com/ugc/course"
			target="_blank" class="js-feedback fixed-bar-text"> 问题反馈 </a></li>
		<li class="go-top"><a class="fixed-bar-icon" href="javascript:;">
				<i class="hz-icon icon-keyboardarrowup"></i>
		</a> <a class="fixed-bar-text" href="javascript:;"> 回到顶部 </a></li>
	</ul>
</body>
</html>