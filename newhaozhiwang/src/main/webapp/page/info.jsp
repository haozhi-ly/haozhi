<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html >
<head>
<base href="/Haozhi/"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta name="renderer" content="webkit">
	<meta name="baidu-site-verification" content="XN2OVFQdUg">
	<title>基础信息 - 个人设置 - 好知网-重拾学习乐趣-Powered By Howzhi </title>

	<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
	<link href="css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/howzhi.css">
	<link href="css/main.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript"  src="js/top.js"></script>

	<style type="text/css">
		#profile-save-btn {
			margin-top: 20px;
			margin-left: 10px;
		}
					
					#unload {
						background: #15c288 none repeat scroll 0 0;
						border: 1px solid #15c288;
						color: #fff !important;
					}
				</style>
				<script type="text/javascript">
					$(function() {
						$(".list-group-item a").bind("click", function() {
							var str = this.innerText;
							if (str.trim() == "基础信息") {
								$("#baseinfo")[0].style.display = "block";
								$("#touxiang")[0].style.display = "none";
								$("#update")[0].style.display = "none";
							} else if (str.trim() == 　"头像设置") {
								$("#touxiang")[0].style.display = "block";
								$("#baseinfo")[0].style.display = "none";
								$("#update")[0].style.display = "none";
							} else if (str.trim() == 　"安全设置") {
								$("#update")[0].style.display = "block";
								$("#baseinfo")[0].style.display = "none";
								$("#touxiang")[0].style.display = "none";
							}
						});
					});
				</script>

		</head>

		<body class="index">
		<!-- 头部 -------------------------------------------------------------------  -->		
			
			<!-- 头部 -------------------------------------------------------------------  -->		

			<div class="container" id="content-container">
				<div class="row">
					<div class="col-md-3">
						<div class="sidenav">
							<ul class="list-group">
								<li class="list-group-heading">个人设置</li>

								<li class="list-group-item">
									<a href="javascript:void(0)" id="cc"><i class="glyphicon glyphicon-user"></i> 基础信息</a>
								</li>
								<li class="list-group-item ">
									<a href="javascript:void(0)"><i class="glyphicon glyphicon-picture"></i> 头像设置</a>
								</li>
								<li class="list-group-item ">
									<a href="javascript:void(0)"><i class="glyphicon glyphicon-lock"></i> 安全设置</a>
								</li>
								<li class="list-group-item ">
									<a href="javascript:void(0)"><i class="glyphicon glyphicon-envelope"></i> 邮箱设置</a>
								</li>
							</ul>
						</div>
					</div>
					<!--  --------------基础信息-------------------------------------------------------------------- -->
					<div class="col-md-9" id="baseinfo" style="display: block;">

						<div class="panel panel-default panel-col">
							<div class="panel-heading">基础信息</div>
							<div class="panel-body">

								<form id="user-profile-form" class="form-horizontal" method="post" novalidate="novalidate" data-widget-cid="widget-0">

									<div class="form-group">
										<label class="col-md-2 control-label">昵称</label>
										<div class="col-md-7 controls">
											<div class="control-text">
												珘珘 </div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-2 control-label" for="profile_truename">姓名</label>
										<div class="col-md-7 controls">
											<input type="text" id="profile_truename" name="profile[truename]" class="form-control" data-widget-cid="widget-4" data-explain="" value="">
											<div class="help-block" style="display:none;"> </div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-2 control-label">性别</label>
										<div class="col-md-7 controls radios">
											<div id="profile_gender">
												<input type="radio" id="profile_gender_0" name="profile[gender]" required="required" value="male">
												<label for="profile_gender_0" class="required">男</label>
												<input type="radio" id="profile_gender_1" name="profile[gender]" required="required" value="female">
												<label for="profile_gender_1" class="required">女</label>
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-2 control-label" for="profile_idcard">身份证号</label>
										<div class="col-md-7 controls radios">
											<input type="text" id="profile_idcard" name="profile[idcard]" class="form-control" value="" data-widget-cid="widget-8" data-explain="">
											<div class="help-block" style="display:none;"></div>
										</div>
									</div>

									<div class="form-group">
										<label for="profile_mobile" class="col-md-2 control-label">手机号码</label>
										<div class="col-md-7 controls">
											<div class="control-text">
												<input type="text" id="profile_idcard" name="profile[idcard]" class="form-control" value="" data-widget-cid="widget-8" data-explain="">
												<div class="help-block" style="display:none;"></div>
											</div>
										</div>
									</div>

									<div class="form-group form-forIam-group form-notStudent-group">
										<label class="col-md-2 control-label">城市</label>
										<div class="col-md-7 controls">
											<input type="text" id="profile_company" name="profile[city]" class="form-control" value="">
											<div class="help-block" style="display:none;"></div>
										</div>
									</div>

									<div class="form-group form-forIam-group form-notStudent-group">
										<label class="col-md-2 control-label">公司</label>
										<div class="col-md-7 controls">
											<input type="text" id="profile_company" name="profile[company]" class="form-control" value="">
											<div class="help-block" style="display:none;"></div>
										</div>
									</div>

									<div class="form-group form-forIam-group form-notStudent-group">
										<label class="col-md-2 control-label">职业</label>
										<div class="col-md-7 controls">
											<input type="text" id="profile_job" name="profile[job]" class="form-control" value="">
											<div class="help-block" style="display:none;"></div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-2 control-label" for="profile_signature">个人签名</label>
										<div class="col-md-7 controls">
											<input type="text" id="profile_signature" name="profile[signature]" data-url="/sensitive/check" class="form-control" value="" data-widget-cid="widget-1" data-explain="">
											<div class="help-block" style="display:none;"></div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-2 control-label" for="profile_about">自我介绍</label>
										<div class="col-md-7 controls">
											<textarea rows="10" id="profile_about" class="form-control" data-url="/sensitive/check"></textarea>
										</div><br>

										<div class="row">
											<div class="col-md-7 col-md-offset-2">
												<button id="profile-save-btn" data-submiting-text="正在保存" type="submit" class="btn btn-primary">保存</button>
											</div>
										</div>

										<input type="hidden" name="_csrf_token" value="cfe9b96f569703f379d055687bf9a957774ae94c">
								</form>

								</div>
							</div>
						</div>

					</div>
					<!--  --------------基础信息-------------------------------------------------------------------- -->

					<!--  --------------更换头像-------------------------------------------------------------------- -->
					<div class="col-md-9" id="touxiang" style="display:none">
						<div class="panel panel-default panel-col">
							<div class="panel-heading">头像</div>
							<div class="panel-body">

								<form id="settings-avatar-form" class="form-horizontal" method="post">

									<div class="form-group">
										<div class="col-md-2 control-label"><b>当前头像</b></div>
										<div class="controls col-md-8 controls">
											<img src="images/avatar.png">
										</div>
									</div>

									<div class="form-group">
										<div class="col-md-2 control-label">
										</div>
										<div class="controls col-md-8 controls">
											<p class="help-block">你可以上传JPG、GIF或PNG格式的文件，文件大小不能超过<strong>2M</strong>。</p>
										</div>
									</div>

									<div class="form-group">
										<div class="col-md-2 control-label"></div>
										<div class="controls col-md-8 controls">
											<input type="file" accept="image/*" class="webuploader-element-invisible" name="file" id="unload" style="border: none;">
											<button class="btn btn-primary" type="submit" id="profile-save-btn">取消</button>
										</div>
									</div>

								</form>

							</div>
						</div>
					</div>

					<!--  --------------更改头像------------------------------------------------------------------- -->

					<!--  --------------安全设置------------------------------------------------------------------ -->
					<div class="col-md-9" id="update" style="display: none;">

						<div class="panel panel-default panel-col">
							<div class="panel-heading">安全设置</div>
							<div class="panel-body">

								<form id="user-profile-form" class="form-horizontal" method="post" novalidate="novalidate" data-widget-cid="widget-0">

									<div class="form-group">
										<label class="col-md-2 control-label">昵称</label>
										<div class="col-md-7 controls">
											<div class="control-text">
												珘珘 </div>
										</div>
									</div>

									<div class="form-group form-forIam-group form-notStudent-group">
										<label class="col-md-2 control-label">旧密码</label>
										<div class="col-md-7 controls">
											<input type="text" id="profile_company" name="profile[city]" class="form-control" value="">
											<div class="help-block" style="display:none;"></div>
										</div>
									</div>

									<div class="form-group form-forIam-group form-notStudent-group">
										<label class="col-md-2 control-label">新密码</label>
										<div class="col-md-7 controls">
											<input type="text" id="profile_company" name="profile[company]" class="form-control" value="">
											<div class="help-block" style="display:none;"></div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-7 col-md-offset-2">
											<button id="profile-save-btn" data-submiting-text="正在保存" type="submit" class="btn btn-primary">保存</button>
										</div>
									</div>

									<input type="hidden" name="_csrf_token" value="cfe9b96f569703f379d055687bf9a957774ae94c"></form>

							</div>
						</div>
					</div>
					<!--  --------------安全设置------------------------------------------------------------------ -->
				</div>
			</div>
			<!-- 尾部 -------------------------------------------------------------------  -->		
			

		</body>

</html>