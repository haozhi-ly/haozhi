<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="">

	<head>
		<base href="/newhaozhiwang/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<title>小组 - 好知网-重拾学习乐趣</title>
		<meta name="keywords" content="小组">
		<meta name="description" content="小组首页">
		<meta content="2fbd468350a8348322e8aed780d7f3178511d79d" name="csrf-token">
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
	</head>

	<body class="group-page">
		<!-------------------------我是头部------------------------------------------->
			<jsp:include page="top.jsp"></jsp:include>
		<!-------------------------我是头部分割线------------------------------------------->

		<!--------------------------中间小组内容-------------------------------------->
		<div class="container" id="content-container">
			<div class="row">
				<div class="col-md-8">
					<div class="panel panel-default">

						<div class="panel-heading">
							热门小组<a href="javascript:void(0)" class="pull-right">»更多</a>
						</div>
						<div class="panel-body">
							<div class="row group-grids">

								<!-- -------------------从数据库获取热门小组的数据，重复代码---------------------------->
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4 grid">
									<p>
										<a href="javascript:void(0)" title="好知大本营（教务处）">
											<img src="images/120652c07d78265998.jpg" alt="好知大本营（教务处）" class="group-avatar-sm">
										</a>
									</p>
									<p class="title"><a class="link-light" href="javascript:void(0)" title="好知大本营（教务处）">好知大本营（教务处）</a></p>
								</div>

								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4 grid">
									<p>
										<a href="javascript:void(0)" title="摄影公社">
											<img src="images/111938a63532860008.jpg" alt="摄影公社" class="group-avatar-sm">
										</a>
									</p>
									<p class="title"><a class="link-light" href="javascript:void(0)" title="摄影公社">摄影公社</a></p>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4 grid">
									<p>
										<a href="javascript:void(0)" title="Photoshop照片后期处理学习交流">
											<img src="images/163453d26839163811.jpg" alt="Photoshop照片后期处理学习交流" class="group-avatar-sm">
										</a>
									</p>
									<p class="title"><a class="link-light" href="javascript:void(0)" title="Photoshop照片后期处理学习交流">Photoshop照片后期处理学习交流</a></p>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4 grid">
									<p>
										<a href="href=" javascript:void(0) "" title="我是从零开始学吉他的">
											<img src="images/120652c07d78265998.jpg" alt="我是从零开始学吉他的" class="group-avatar-sm">
										</a>
									</p>
									<p class="title"><a class="link-light" href="javascript:void(0)" title="我是从零开始学吉他的">我是从零开始学吉他的</a></p>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4 grid">
									<p>
										<a href="href=" javascript:void(0) "" title="每月养成一个好习惯">
											<img src="images/1151175e2fc5261920.jpg" alt="每月养成一个好习惯" class="group-avatar-sm">
										</a>
									</p>
									<p class="title"><a class="link-light" href="javascript:void(0)" title="每月养成一个好习惯">每月养成一个好习惯</a></p>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4 grid">
									<p>
										<a href="javascript:void(0)" title="摄影入门学习">
											<img src="images/220322a3adc0705905.jpg" alt="摄影入门学习" class="group-avatar-sm">
										</a>
									</p>
									<p class="title"><a class="link-light" href="javascript:void(0)" title="摄影入门学习">摄影入门学习</a></p>
								</div>

							</div>
						</div>
					</div>

					<!----------------------------从数据库获取热门话题-------------------------------------------->
					<div class="panel panel-default">
						<div class="panel-heading">热门话题</div>

						<div class="panel-body">
							<ul class="media-list thread-list">
								<li class="media">
									<a class="pull-left js-user-card" id="introduce" href="javascript:void(0)" data-card-url="/user/1321903/card/show" data-user-id="1321903">
										<img class="avatar-md " src="images/touxiang.jpg" 　alt="曹佳佳的熊猫眼">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265385">这11张照片讲述了摄影演变史</a>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/1321903/">曹佳佳的熊猫眼</a>

											<span class="divider">•</span> 12-18
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/1946174/">lijingwei03</a> 7天前
										</div>
									</div>
								</li>
								<!---------------------------------------------------->
								<li class="media">
									<a class="pull-left js-user-card" href="http://www.howzhi.com/u/187/" data-card-url="/user/187/card/show" data-user-id="187">
										<img class="avatar-md " src="images/user-images.jpg" 　alt="乱流">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265349">Flickr公布2015年最受欢迎作品和相机</a>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/187/">乱流</a>
											<span class="daren-icon-t" title="达人"></span>

											<span class="divider">•</span> 12-08
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/2325459/">zhujiash</a> 06-02
										</div>
									</div>
								</li>
								<!---------------------------------------------------->
								<li class="media">
									<a class="pull-left js-user-card" href="http://www.howzhi.com/u/1321903/" data-card-url="/user/1321903/card/show" data-user-id="1321903">
										<img class="avatar-md " src="images/touxiang.jpg" 　alt="曹佳佳的熊猫眼">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265268">自然风光摄影之美</a>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/1321903/">曹佳佳的熊猫眼</a>

											<span class="divider">•</span> 11-18
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/1884995/">haohao_a</a> 01-07
										</div>
									</div>
								</li>
								<!---------------------------------------------------->
								<li class="media">
									<a class="pull-left js-user-card" href="http://www.howzhi.com/u/1321903/" data-card-url="/user/1321903/card/show" data-user-id="1321903">
										<img class="avatar-md " src="images/user-images.jpg" 　alt="曹佳佳的熊猫眼">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265245">Elena Shumilova 温情人像摄影 | 记录成长</a>
											<span class="label label-warning">精</span>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/1321903/">曹佳佳的熊猫眼</a>

											<span class="divider">•</span> 11-10
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/1928168/">逸趣闲云</a> 01-07
										</div>
									</div>
								</li>
								<!---------------------------------------------------->
								<li class="media">
									<a class="pull-left js-user-card" id="card01" href="http://www.howzhi.com/u/187/" data-card-url="/user/187/card/show" data-user-id="187">
										<img class="avatar-md " src="images/user-images.jpg" 　alt="乱流">
									</a>

									<div class="media-body">
										<div class="media-heading">
											<a class="title" href="http://www.howzhi.com/group/2/discuss/265229">2015索尼世界摄影奖优秀作品</a>

										</div>

										<div class="metas">
											<a class="link-muted" href="http://www.howzhi.com/group/2/" title="摄影公社">摄影公社</a>
											<span class="divider">•</span>
											<a class="link-light link-muted" href="http://www.howzhi.com/u/187/">乱流</a>
											<span class="daren-icon-t" title="达人"></span>

											<span class="divider">•</span> 11-05
											<span class="divider">•</span> 最后回复 <a class="link-light link-muted" href="http://www.howzhi.com/u/7416/">喜洋洋</a> 3小时前
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<!--------------------------右边的div--------------------------------------------------------->
				<div class="col-md-4">
					<!-----------------------个人介绍------------------->
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="media">
								<div class="media-left">
									<a title="" data-original-title="" class=" js-user-card"  href="javascript:void(0)" data-card-url="/user/2358982/card/show" data-user-id="2358982">
										<img class="avatar-md " src="images/avatar.png" 　alt="珘珘">
									</a>

								</div>
								<div class="media-body">
									<p> <a class="link-light link-light" href="http://www.howzhi.com/u/2358982/">珘珘</a>
									</p>
									<div class="metas">
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--<div id="user-card-2358982" class="js-card-content" data-user-id="2358982" style="display: none; top: 185px;left: 758px; z-index: 1;">
						<div class="card-header media-middle">
							<div class="media">
								<div class="media-left">
									<a class=" " href="http://www.howzhi.com/u/2358982/" data-card-url="/user/2358982/card/show" data-user-id="2358982">
										<img class="avatar-md" src="images/avatar.png" alt="珘珘">
									</a>
								</div>
								<div class="media-body">
									<div class="title">
										<a class="link-light " href="http://www.howzhi.com/u/2358982/">珘珘</a>

									</div>
									<div class="content">
									</div>
								</div>
							</div>
						</div>
						<div class="card-body">
							还没有签名
						</div>

						<div class="card-footer clearfix ">

							<span><a class="link-light" href="http://www.howzhi.com/u/2358982/library">1<br>在学</a></span>
							<span><a class="link-light" href="http://www.howzhi.com/u/2358982/following">1<br>关注</a></span>
							<span><a class="link-light" href="http://www.howzhi.com/u/2358982/fans">1<br>粉丝</a></span>
						</div>

					</div>-->

					<!-----------------------小组搜索-------------------->
					<form class="mbl" action="/group/search_group" method="get">
						<div class="input-group group-search">
							<input name="_csrf_token" value="2fbd468350a8348322e8aed780d7f3178511d79d" type="hidden">
							<input class="form-control" placeholder="小组搜索" name="keyWord" type="text">
							<span class="input-group-btn">
            <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span></button>
							</span>
						</div>
					</form>

					<!-----------------------新晋小组模块----------------------->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">新晋小组</h3></div>
						<div class="panel-body">
							<div class="media-group-list">
								<!------------------新晋小组1----------------->
								<div class="media media-group">
									<div class="media-left">
										<a href="http://www.howzhi.com/group/355/" title="音乐爱好者">
											<img src="images/120652c07d78265998.jpg" alt="音乐爱好者" class="avatar-square-md">
										</a>
									</div>
									<div class="media-body">
										<div class="title">
											<a class="gray-darker" href="http://www.howzhi.com/group/355/" title="音乐爱好者">音乐爱好者</a>
										</div>
										<div class="metas">
											<span><i class="es-icon es-icon-people"></i>64</span>
											<span><i class="es-icon es-icon-textsms"></i>1433</span>
										</div>
									</div>
								</div>

								<!------------------新晋小组2----------------->
								<div class="media media-group">
									<div class="media-left">
										<a href="http://www.howzhi.com/group/349/" title="科学学英语">
											<img src="images/01460088969f639218.jpg" alt="科学学英语" class="avatar-square-md">
										</a>
									</div>
									<div class="media-body">
										<div class="title">
											<a class="gray-darker" href="http://www.howzhi.com/group/349/" title="科学学英语">科学学英语</a>
										</div>
										<div class="metas">
											<span><i class="es-icon es-icon-people"></i>148</span>
											<span><i class="es-icon es-icon-textsms"></i>1362</span>
										</div>
									</div>
								</div>

								<!------------------新晋小组3----------------->
								<div class="media media-group">
									<div class="media-left">
										<a href="http://www.howzhi.com/group/344/" title="三维动画">
											<img src="images/220322a3adc0705905.jpg" alt="三维动画" class="avatar-square-md">
										</a>
									</div>
									<div class="media-body">
										<div class="title">
											<a class="gray-darker" href="http://www.howzhi.com/group/344/" title="三维动画">三维动画</a>
										</div>
										<div class="metas">
											<span><i class="es-icon es-icon-people"></i>71</span>
											<span><i class="es-icon es-icon-textsms"></i>1341</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!---------------------------------------我是顶部分割线------------------------------------------------------>
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 ">
						<a href="http://www.howzhi.com/"><img src="%E5%B0%8F%E7%BB%84%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/foot-logo.png" alt="好知，知识分享新社区"></a>
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

		<!--<script src="%E5%B0%8F%E7%BB%84%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/sea.js"></script>
		<script src="%E5%B0%8F%E7%BB%84%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/seajs-style.js"></script>
		<script src="%E5%B0%8F%E7%BB%84%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/seajs-global-config.js"></script>
		<script>
			seajs.use(app.mainScript);
		</script>-->
	

		<!--<div id="user-card-store" class="hidden">
				<div id="user-card-2358982" class="js-card-content" data-user-id="2358982">
					<div class="card-header media-middle">
						<div class="media">
							<div class="media-left">
								<a class=" " data-user-id="2358982" data-card-url="/user/2358982/card/show" href="/u/2358982/">
									<img class="avatar-md" alt="珘珘" src="/assets/img/default/avatar.png?2.6.17.2.3">
								</a>
							</div>
							<div class="media-body">
								<div class="title">
									<a class="link-light " href="/u/2358982/">珘珘</a>
								</div>
								<div class="content"> </div>
							</div>
						</div>
					</div>
					<div class="card-body"> 还没有签名 </div>
					<div class="card-footer clearfix ">
						<span><a class="link-light" href="/u/2358982/library">1<br>在学</a></span>
						<span><a class="link-light" href="/u/2358982/following">1<br>关注</a></span>
						<span><a class="link-light" href="/u/2358982/fans">1<br>粉丝</a></span>
					</div>
				</div>
				
				<div id="user-card-1321903" class="js-card-content" data-user-id="1321903" style="display: none;">
				<div class="card-header media-middle">
					<div class="media">
						<div class="media-left">
							<a class=" " href="http://www.howzhi.com/u/1321903/" data-card-url="/user/1321903/card/show" data-user-id="1321903">
								<img class="avatar-md" src="%E5%B0%8F%E7%BB%84%20-%20%E5%A5%BD%E7%9F%A5%E7%BD%91-%E9%87%8D%E6%8B%BE%E5%AD%A6%E4%B9%A0%E4%B9%90%E8%B6%A3-Powered%20By%20Howzhi_files/1359131e28a9803288.jpg" alt="曹佳佳的熊猫眼">
							</a>

						</div>
						<div class="media-body">
							<div class="title">
								<a class="link-light " href="http://www.howzhi.com/u/1321903/">曹佳佳的熊猫眼</a>

							</div>
							<div class="content">
								助教
							</div>
						</div>
					</div>
					<div class="metas">
						<a class="btn btn-primary btn-high btn-xs follow-btn" href="javascript:;" data-url="/user/1321903/follow" data-loggedin="1">关注</a>
						<a class="btn btn-default btn-high btn-xs unfollow-btn" href="javascript:;" data-url="/user/1321903/unfollow" style="display:none;">已关注</a>
						<a class="btn btn-default btn-xs direct-message-btn" herf="javascript:;" data-toggle="modal" data-target="#modal" data-url="/message/create/1321903">私信</a>
					</div>
				</div>
				<div class="card-body">
					兴趣分享搬运工，微博@曹佳佳的熊猫眼...
				</div>

				<div class="card-footer clearfix card-footers">

					<span><a class="link-light" href="http://www.howzhi.com/u/1321903/course/created">16<br>在教</a></span>
					<span><a class="link-light" href="http://www.howzhi.com/u/1321903/library">84<br>在学</a></span>
					<span><a class="link-light" href="http://www.howzhi.com/u/1321903/following">53<br>关注</a></span>
					<span><a class="link-light" href="http://www.howzhi.com/u/1321903/fans">129<br>粉丝</a></span>
				</div>

			</div>
			</div>-->
		
		<!--<div class="popover es-card fade bottom in" style="top: 185px;left: 758px;display: block;">
			<div class="arrow"></div>
			<div class="popover-content" style="display:none">
				<div id="user-card-2358982" class="js-card-content" data-user-id="2358982">
					<div class="card-header media-middle">
						<div class="media">
							<div class="media-left">
								<a class=" " href="http://www.howzhi.com/u/2358982/" data-card-url="/user/2358982/card/show" data-user-id="2358982">
									<img class="avatar-md" src="images/avatar.png" alt="珘珘">
								</a>

							</div>
							<div class="media-body">
								<div class="title">
									<a class="link-light " href="http://www.howzhi.com/u/2358982/">珘珘</a>

								</div>
								<div class="content">
								</div>
							</div>
						</div>
					</div>
					<div class="card-body">
						还没有签名
					</div>

					<div class="card-footer clearfix ">

						<span><a class="link-light" href="http://www.howzhi.com/u/2358982/library">1<br>在学</a></span>
						<span><a class="link-light" href="http://www.howzhi.com/u/2358982/following">1<br>关注</a></span>
						<span><a class="link-light" href="http://www.howzhi.com/u/2358982/fans">1<br>粉丝</a></span>
					</div>

				</div>
			</div>

		</div>-->
	</body>

</html>