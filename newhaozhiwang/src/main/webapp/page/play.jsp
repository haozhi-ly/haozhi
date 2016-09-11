<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="">
<head>
<base href="/newhaozhiwang/"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta name="renderer" content="webkit">
	<meta name="baidu-site-verification" content="XN2OVFQdUg">
	<title>好知网 播放</title>
	<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/tcdPageCode.css">
	<link rel="stylesheet" type="text/css" href="css/howzhi.css">
	<link href="css/smohan.face.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js/smohan.face.js" charset="utf-8"></script> 
	<script type="text/javascript" src="js/play.js"></script>
	<script  type="text/javascript" src="js/jquery.page.js"></script>
	
	<style>
		
</style>
	<script type="text/javascript">
			var scroll = function(event,scroller){
				alert("gjeighikh");
    		var k = event.wheelDelta? event.wheelDelta:-event.detail*10;
    		scroller.scrollTop = scroller.scrollTop - k;
    		return false;
			};
			
            var flag= "${(empty users)? false : true}";
            var uname='${users.uname}';
            
        
          
   		$(function (){
   			//点击回复
   			$('#revert').bind("click",function(){
   				alert("dgkah");
   				alert(this.parent().parent().children().get(0).children().get(0).text());
   			});
   		});
 		function revert(){
 			alert("dgkah");
				alert(this.parent().parent().children().get(0).children().get(0).text());
 		}
   	
   		
 </script> 
</head>


<body class="hz-learning">
	<div class="learn-dashboard-header breadcrumb ">
		<a data-step="1" data-intro="点此回到课程首页" data-position="right" href="http://www.howzhi.com/course/2155/" class=""> Mark Crilley漫画教程合集</a>
		<span class="phm"> &gt; </span> 
	</div>
	<div class="learn-dashboard toolbarhide" id="lesson-dashboard" data-course-id="2155" data-course-uri="/course/2155/" data-dashboard-uri="/course/2155/learn" data-watch-limit="" data-hide-media-lesson-learn-btn="" data-lesson-id="33117" data-hzsource="UGC"
		data-lesson-type="video" style="height: 563px;" data-widget-cid="widget-7">
		<div class="dashboard-content">
			<div class="dashboard-body">
				<div class="hz-noflash" style="display: none;">
					<span>您的浏览器Flash插件被禁用，或没有安装，<a class="active" href="https://get.adobe.com/cn/flashplayer/" target="_blank">点击下载</a></span>
				</div>
				<div id="learn-loading" class="learn-load text-center" style="display: none;">正在加载请稍候...</div>
				<div class="lesson-content" id="lesson-video-content" data-role="lesson-content" style="display:none;" data-watermark="http://f1.howzhi.com/system/watermark_1438736692.png" data-user-id="2358982" data-balloon-player="1"></div>
				<div class="watermarkEmbedded"><input type="hidden" id="videoWatermarkEmbedded" value="0"></div>
				<div class="lesson-content lesson-content-audio" id="lesson-audio-content" data-role="lesson-content" style="display:none;"></div>
				<div class="lesson-content" id="lesson-swf-content" data-role="lesson-content" style="display:none; text-align: center">
						<h1 style="color:#fff;margin-top:200px;">抱歉!该课程还未添加课时内容!!!</h1></div>
				<div class="lesson-content" id="lesson-iframe-content" data-role="lesson-content"  style="display:none;">
					<iframe scrolling="no" style="position:absolute; left:0; top:0; height:100%; width:100%; border:0px;" src="http://player.youku.com/embed/XNDY2NTYwMjI4">
						<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
						<html>
						<head>
						<body>
						<div id="youku-playerBox" style="width:100%;height:100%;">
						<object id="youku-player" width="100%" height="100%" data="" type="application/x-shockwave-flash">
						</div>
						<script id="_youkujs_" type="text/javascript" src="http://player.youku.com/jsapi"></script>
						</body>
						</html>
						</iframe>
					</div> 
				<div class="lesson-content lesson-content-text" id="lesson-text-content"   style="display:none;">
					<div class="lesson-content-text-body" id="lesson-text" onmousewheel="return scroll(event,this)" style="overflow-y:auto; overflow-x:auto; width:880px; height:500px;">					
					</div>
				</div>

				<div class="lesson-content lesson-content-document" id="lesson-document-content" data-role="lesson-content" style="display:none;">
					<div class="lesson-content-document-body"></div>
				</div>

				<div class="lesson-content lesson-content-text" id="lesson-live-content" data-role="lesson-content" style="display:none;">
					<div class="lesson-content-text-body"></div>
				</div>
				<div class="lesson-content lesson-content-text" id="lesson-unpublished-content" data-role="lesson-content" style="display:none;">
					<div class="lesson-content-text-body">当前课时正在编辑中，暂时无法观看。</div>
				</div>

				<div class="lesson-content lesson-content-text" id="lesson-testpaper-content" data-role="lesson-content" style="display:none;">
					<div class="lesson-content-text-body"></div>
				</div>
				<div class="lesson-content lesson-content-text" id="lesson-ppt-content" data-role="lesson-content" style="display:none;">
					<div class="lesson-content-text-body"></div>
				</div>
			</div>
		</div>

	<!--  右侧视频旁的div 课程列表  笔记  问答 等----------------------------------------------------------- -->
		<div class="dashboard-toolbar pull-right">
			<ul class="options clearfix">
				<li class="active" data-step="2" data-intro="点击查看当前课程所有课时列表，想学哪里点哪里" data-position="left">
					<a data-toggle="tab" href="javascript:void(0)"><i class="hz-icon icon-formatlistbulleted"></i><span>课时</span></a>
				</li>
				<li data-step="3" data-intro="好记性不如烂笔头，点击添加新笔记吧" data-position="left">
					<a data-toggle="tab" href="javascript:void(0)"><i class="hz-icon icon-edit"></i><span>笔记</span></a>
				</li>
				<li data-step="4" data-intro="学习中碰到问题？点击这里添加新提问吧" data-position="left">
					<a data-toggle="tab" href="javascript:void(0)"><i class="hz-icon icon-forum"></i><span>问答</span></a>
				</li>
			</ul>
			<div class="tab-content">
				<div id="toolbar-1" class="tab-pane courselist active">
					<div class="tab-title">
						<i class="hz-icon icon-formatlistbulleted mrm"></i>课时列表
					</div>
				<!-- 课程列表------------------------------------------------------------------------------ -->
					<ul class="period-list hz-courselist" id="course-item-list">
						<li class="period lesson-item lesson-item-33117  item-active" data-id="33117" data-num="1">
							<a href="http://www.howzhi.com/course/2155/lesson/33117" title="Mark Crilley漫画教程:头发的画法">
								<i class="es-icon es-icon-undone status-icon"></i>

								<span class="title">L1：Mark Crilley漫画教程:头发的画法</span>
								<!-- 紧跟标题 -->

								<!-- 右边图标 -->
								<span class="course-type">
      <i class="hz-icon icon-play-nobg" data-toggle="tooltip" data-placement="top" title="" data-original-title="视频课程"></i>
    </span>

								<span class="learning">学习中</span></a>

						</li>

					</ul>
			<!-- ---------------------------------------------------------------------------------------------------- -->
				</div>
			<!-- 写笔记  插件--------------------------------------------------------------------------------- -->
				<div id="toolbar-2" class="tab-pane tab-notes">
					<div class="tab-title">
						<i class="hz-icon icon-edit mrm"></i>笔记
					</div>
					<div class="course-notes phl pbl">
						<ul class="notes-header clearfix options">
							<li class="active"><a href="http://www.howzhi.com/course/2155/lesson/33117#tab-notes-1" data-toggle="tab">我的笔记</a></li>
							<li><a href="http://www.howzhi.com/course/2155/lesson/33117#tab-notes-2" data-toggle="tab">同学笔记</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tab-notes-1">
								<form class="form  " method="post" action="http://www.howzhi.com/lesson/note/save" id="course_lesson-note-form" novalidate="novalidate" data-widget-cid="widget-2">
									<div class="form-group">
										<label class="control-label hidden" for="note_content">笔记</label>
										<div class="controls">
											<textarea id="note_content" rows="3" name="content" class="form-control note-content" data-url="/sensitive/check/lesson-note" style="visibility: hidden; display: none;" data-widget-cid="widget-3" data-explain=""></textarea>
											<div id="cke_note_content" class="cke_1 cke cke_reset cke_chrome cke_editor_note_content cke_ltr cke_browser_webkit" dir="ltr" lang="zh-cn" role="application">
												<div class="cke_inner cke_reset" role="presentation"><span id="cke_1_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; -webkit-user-select: none;"><span id="cke_12" class="cke_voice_label">工具栏</span><span id="cke_1_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_12"
														onmousedown="return false;"><span id="cke_13" class="cke_toolbar" role="toolbar"><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_14" class="cke_button cke_button__bold  cke_button_off" href="javascript:void(&#39;加粗&#39;)" title="加粗" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_14_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(2,event);" onfocus="return CKEDITOR.tools.callFunction(3,event);" onclick="CKEDITOR.tools.callFunction(4,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -24px;background-size:auto;">&nbsp;</span>
													<span id="cke_14_label" class="cke_button_label cke_button__bold_label" aria-hidden="false">加粗</span>
													</a><a id="cke_15" class="cke_button cke_button__italic  cke_button_off" href="javascript:void(&#39;倾斜&#39;)" title="倾斜" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_15_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(5,event);"
														onfocus="return CKEDITOR.tools.callFunction(6,event);" onclick="CKEDITOR.tools.callFunction(7,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -48px;background-size:auto;">&nbsp;</span><span id="cke_15_label" class="cke_button_label cke_button__italic_label" aria-hidden="false">倾斜</span></a>
													<a id="cke_16" class="cke_button cke_button__underline  cke_button_off" href="javascript:void(&#39;下划线&#39;)" title="下划线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_16_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(8,event);"
														onfocus="return CKEDITOR.tools.callFunction(9,event);" onclick="CKEDITOR.tools.callFunction(10,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -144px;background-size:auto;">&nbsp;</span><span id="cke_16_label"
																	class="cke_button_label cke_button__underline_label" aria-hidden="false">下划线</span></a>
													<a id="cke_17" class="cke_button cke_button__strike  cke_button_off" href="javascript:void(&#39;删除线&#39;)" title="删除线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_17_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(11,event);"
														onfocus="return CKEDITOR.tools.callFunction(12,event);" onclick="CKEDITOR.tools.callFunction(13,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -72px;background-size:auto;">&nbsp;</span><span id="cke_17_label"
																		class="cke_button_label cke_button__strike_label" aria-hidden="false">删除线</span></a>
													<a id="cke_18" class="cke_button cke_button__numberedlist  cke_button_off" href="javascript:void(&#39;编号列表&#39;)" title="编号列表" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_18_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(14,event);"
														onfocus="return CKEDITOR.tools.callFunction(15,event);" onclick="CKEDITOR.tools.callFunction(16,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1368px;background-size:auto;">&nbsp;</span>
																	<span
																		id="cke_18_label" class="cke_button_label cke_button__numberedlist_label" aria-hidden="false">编号列表</span>
																</a>
													</span><span class="cke_toolbar_end"></span></span>
													</span>
													</span>
													<div id="cke_1_contents" class="cke_contents cke_reset" role="presentation" style="height: 200px;"><iframe src="" frameborder="0" class="cke_wysiwyg_frame cke_reset" tabindex="0" allowtransparency="true" style="width: 0px; height: 100%;"></iframe></div><span id="cke_1_bottom" class="cke_bottom cke_reset_all"
														role="presentation" style="-webkit-user-select: none;"><span id="cke_1_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="拖拽以改变大小" onmousedown="CKEDITOR.tools.callFunction(1, event)">◢</span></span>
												</div>
											</div>
											<div class="help-block" style="display:none;"></div>
										</div>
									</div>
									<input type="hidden" id="note_id" name="id" value="">
									<input type="hidden" id="note_courseId" name="courseId" value="2155">
									<input type="hidden" id="note_lessonId" name="lessonId" value="33117">
									<div class="btns clearfix">
										<label><input type="checkbox" name="status" checked=""> 分享笔记</label>
										<span class="text-muted" data-role="saved-message" style="display: none;">正在保存...</span>
										<input type="hidden" name="_csrf_token" value="cfe9b96f569703f379d055687bf9a957774ae94c">
										<button class="btn submit pull-right" data-status="false" data-id="2155" type="submit" id="course_lesson-note-form-btn">保存</button>
									</div>
									<div class="hz-login-editor"></div>
								</form>

							</div>
				<!-- 写笔记 --------------------------------------------------------------------------------- -->
				<!-- -------成员的笔记--------------------------------------------------------------------------- -->
							<div class="tab-pane" id="tab-notes-2">
								<ul class="notes-list ">
									<li>
										<div class="notes-img">
											<a class=" js-user-card" href="http://www.howzhi.com/u/1254499/" data-card-url="/user/1254499/card/show" data-user-id="1254499">
												<img class="avatar-mm" src="images/18220084d310400588.jpg" alt="lucky7day">
											</a>

										</div>
										<div class="notes-content">
											<span class="name"><a href="javascrit:;">lucky7day</a></span>
											<div class="content">
												<div class="short-content">2B铅笔起稿，头发离头顶有一段距离确定漩涡把头发分为几个大部分，注意与脸型的融合加几缕头发增显自然，注意头发走向黑色笔勾线，粗细深浅，注意立体感2B铅笔打调，注意不同位置高光卷发S型，上S指向发根，S...</div>
												<div class="full-content" style="display:none;">
													<ol>
														<li>2B铅笔起稿，头发离头顶有一段距离确定漩涡</li><br>
														<li>把头发分为几个大部分，注意与脸型的融合</li><br>
														<li>加几缕头发增显自然，注意头发走向</li><br>
														<li>黑色笔勾线，粗细深浅，注意立体感</li><br>
														<li>2B铅笔打调，注意不同位置高光</li><br>
														<li>卷发S型，上S指向发根，S下指向发尾</li><br>
													</ol>
													<p><span style="text-decoration:underline;"><strong>PS: &nbsp; 熟能生巧</strong></span></p><br>
													<p><br><br><br></p><br>
													<p><br><br></p><br>
													<p>&nbsp;</p>
												</div>
											</div>
											<div class="actions">
												<a href="javascript:;" class="show-full-btn">[展开全文]</a>
												<a href="javascript:;" class="show-short-btn" style="display:none;">[收起全文]</a>
											</div>
										</div>

									</li>
									
								</ul>

							</div>
					<!-- -------成员的笔记--------------------------------------------------------------------------- -->
						</div>
					</div>

				</div>
				<!-- 问答----------------------------------------------------------------------- -->
				<div id="toolbar-3" class="tab-pane tab-question">
					<div class="tab-title">
						<i class="hz-icon icon-forum mrm"></i>问答
					</div>
					<form class="form " id="lesson_qustion_form" method="post" action="http://www.howzhi.com/course/2155/lesson/33117/questions/create" novalidate="novalidate" data-widget-cid="widget-4">
						<div class="form-group">
							<div class="controls">
								<textarea id="question_title" class="form-control question_title" data-url="/sensitive/check/course-question" placeholder="问题标题" name="title" data-widget-cid="widget-5" data-explain=""></textarea>
								<div class="help-block" style="display:none;"></div>
							</div>
						</div>
						<!-- -----插件--------------------------------------------------------------- -->
						<div class="form-group">
							<div class="controls">
								<textarea id="question_content" class="form-control question_content" data-url="/sensitive/check" placeholder="详细描述（非必填）" name="content" style="visibility: hidden; display: none;" data-widget-cid="widget-6" data-explain=""> </textarea>
								<div id="cke_question_content" class="cke_2 cke cke_reset cke_chrome cke_editor_question_content cke_ltr cke_browser_webkit" dir="ltr" lang="zh-cn" role="application">
									<div class="cke_inner cke_reset" role="presentation"><span id="cke_2_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; -webkit-user-select: none;"><span id="cke_37" class="cke_voice_label">工具栏</span><span id="cke_2_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_37"
											onmousedown="return false;"><span id="cke_38" class="cke_toolbar" role="toolbar"><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_39" class="cke_button cke_button__bold  cke_button_off" href="javascript:void(&#39;加粗&#39;)" title="加粗" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_39_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(20,event);" onfocus="return CKEDITOR.tools.callFunction(21,event);" onclick="CKEDITOR.tools.callFunction(22,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -24px;background-size:auto;">&nbsp;</span>
										<span id="cke_39_label" class="cke_button_label cke_button__bold_label" aria-hidden="false">加粗</span>
										</a><a id="cke_40" class="cke_button cke_button__italic  cke_button_off" href="javascript:void(&#39;倾斜&#39;)" title="倾斜" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_40_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(23,event);"
											onfocus="return CKEDITOR.tools.callFunction(24,event);" onclick="CKEDITOR.tools.callFunction(25,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -48px;background-size:auto;">&nbsp;</span><span id="cke_40_label" class="cke_button_label cke_button__italic_label" aria-hidden="false">倾斜</span></a>
										<a id="cke_41" class="cke_button cke_button__underline  cke_button_off" href="javascript:void(&#39;下划线&#39;)" title="下划线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_41_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(26,event);"
											onfocus="return CKEDITOR.tools.callFunction(27,event);" onclick="CKEDITOR.tools.callFunction(28,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -144px;background-size:auto;">&nbsp;</span><span id="cke_41_label"
														class="cke_button_label cke_button__underline_label" aria-hidden="false">下划线</span></a>
										<a id="cke_42" class="cke_button cke_button__strike  cke_button_off" href="javascript:void(&#39;删除线&#39;)" title="删除线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_42_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(29,event);"
											onfocus="return CKEDITOR.tools.callFunction(30,event);" onclick="CKEDITOR.tools.callFunction(31,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -72px;background-size:auto;">&nbsp;</span><span id="cke_42_label"
													class="cke_button_label cke_button__strike_label" aria-hidden="false">删除线</span></a>
										<a id="cke_43" class="cke_button cke_button__numberedlist  cke_button_off" href="javascript:void(&#39;编号列表&#39;)" title="编号列表" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_43_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(32,event);"
											onfocus="return CKEDITOR.tools.callFunction(33,event);" onclick="CKEDITOR.tools.callFunction(34,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1368px;background-size:auto;">&nbsp;</span>
														<span
															id="cke_43_label" class="cke_button_label cke_button__numberedlist_label" aria-hidden="false">编号列表</span>
															</a>
										</span><span class="cke_toolbar_end"></span></span>
										</span>
										</span>
										<div id="cke_2_contents" class="cke_contents cke_reset" role="presentation" style="height: 200px;"><iframe src="" frameborder="0" class="cke_wysiwyg_frame cke_reset" tabindex="0" allowtransparency="true" style="width: 0px; height: 100%;"></iframe></div><span id="cke_2_bottom" class="cke_bottom cke_reset_all"
											role="presentation" style="-webkit-user-select: none;"><span id="cke_2_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="拖拽以改变大小" onmousedown="CKEDITOR.tools.callFunction(19, event)">◢</span></span>
									</div>
								</div>
								<div class="help-block" style="display:none;"></div>
							</div>
						</div>
						<!-- -----插件--------------------------------------------------------------- -->
						<input type="hidden" name="type" value="question">
						<input type="hidden" name="_csrf_token" value="cfe9b96f569703f379d055687bf9a957774ae94c">

						<div class="btns clearfix">
							<button class="btn submit pull-right" type="submit" data-status="false" data-id="2155" id="lesson_qustion_form_btn">提交</button>
						</div>
						<div class="hz-login-editor"></div>
					</form>

					<ul id="questionList">
						<li><span>0回答</span><a href="http://www.howzhi.com/question/57359" target="_black">高光怎样去找</a></li>
					</ul>

				</div>
				<!-- 问答----------------------------------------------------------------------- -->
			</div>
		</div>
		
		
		<div class="learn-dashboard-foot">
			<div data-step="5" data-intro="觉得课程内容好，那就分享给更多人来一起学习吧" data-position="right" class="share-out hz-share pull-left hidden-xs">
				<span class="pull-left">分享到：</span>

				<div class="dropdown-menu  js-social-share-params" data-title="Mark Crilley漫画教程合集-Mark Crilley漫画教程:头发的画法" data-summary="我正在好知网学习Mark Crilley漫画教程合集第1课Mark Crilley漫画教程:头发的画法，老师讲得太棒了，好东西要分享，别说我没告诉你们哦！" data-message="我正在好知网学习Mark Crilley漫画教程合集第1课Mark Crilley漫画教程:头发的画法，老师讲得太棒了，好东西要分享，别说我没告诉你们哦！"
					data-url="http://www.howzhi.com/course/2155/lesson/33117" data-picture="http://f1.howzhi.com/course/2015/07-09/0649139ae9ae494339.jpg">
					<a href="javascript:;" class="js-social-share weixin" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A%2F%2Fwww.howzhi.com%2Fcourse%2F2155%2Flesson%2F33117"><i class="es-icon es-icon-weixin"></i></a>
					<a href="javascript:;" class="js-social-share weibo" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
					<a href="javascript:;" class="js-social-share qq" data-cmd="qq" title="分享到QQ好友" data-share="qq"><i class="es-icon es-icon-qq"></i></a>
					<a href="javascript:;" class="js-social-share qzone" data-cmd="qzone" title="分享到QQ空间" data-share="qzone"><i class="es-icon es-icon-qzone"></i></a>

				</div>

			</div>
			<a data-step="6" data-intro="看不到视频怎么办？点击查看解决办法" data-position="right" href="http://www.howzhi.com/feedback/user/list?feedurl=http://www.howzhi.com/course/2155/lesson/33117" class="mlm t-gray">
				<i class="hz-icon icon-question"></i> 看不到视频
			</a>
			<div class="right">
				<a data-step="7" data-intro="为了更好地记录自己的学习进度，学完课程记得点击“学过了”按钮哦" data-position="right" class="btn btn-primary mrs" data-role="finish-lesson" data-id="2155" id="learned"><i class="glyphicon glyphicon-unchecked mrs"></i>学过了</a>
				<a href="http://www.howzhi.com/course/2155/lesson/33118" data-role="next-lesson" data-placement="right" title="下一课时" class="course-title t-gray"> 下一课: Sophie-chan漫画教程:黑执事 塞巴斯蒂安

                  </a>

			</div>
		</div>
	</div>

	<div class="container" id="content-container">
		<div class="row">
			<div class="col-md-9">
				<div class="person-comment course-in flat">
					<h2 class="nopadding">学员评论</h2>
				<!-- 发评论 ----------------- -->	
					<div id="Smohan_FaceBox">
					   <textarea name="text" id="Smohan_text" class="smohan_text"></textarea>
					   <p>
					   <a href="javascript:void(0)" class="face" title="表情"></a>
					   <button class="btn btn-primary pull-right" id="comment-btn" type="button">发布</button>
					   </p>
					</div>
					
				<!--  评论 --------------------------------- -->	
					<ul class=" comment-item-list" id="commentList">
						<li id="item92627">
							<div class="userimg">
								<a class=" js-user-card" href="#" data-card-url="/user/2357277/card/show" data-user-id="2357277">
									<img class="img-responsive" src="images/21584339cab2094074.jpg" alt="楚嫣然">
								</a>
							</div>
							<div class="userInfo">
								<p class="head"><a href="#">楚嫣然</a><span>7天前</span></p>
								<div class="body">老师用的橡皮是哪种、？</div>
								<div class="pull-right  ">
									<a class="con" id="revert" href="javascript:;" data-role="revert" data-url="/comment/92627/post" data-revertto="楚嫣然" onclick="revert()">回复</a>
								</div>
							</div>
						</li>						
					</ul>
					<!-- 分页 ---------------------------------------------------------------------------------  -->
						<div class="tcdPageCode" id="commenttcpage"></div>
						<!-- 分页  ---------------------------------------------------------------------------------  -->
				</div>

				<div class="course flat nopad">
					<div class="section-header">
						<h2>你感兴趣的课程</h2>
					</div>
					<div class="section-body">
						<div class="row" id="recommedCourse">
				   <!--  --- 推荐课程 ------------------------------------------------------------------------- -->			
							<div class="col-md-4 col-sm-6 ">
								<div class="course-item">
									<div class="course-img">
										<img src="images/0650251c4120932070.jpg" alt="sai基础教程" class="">
										<a href="javaScript:void(0);">
											<div class="mask">
												<span class="btn btn-primary">开始学习</span>
											</div>
										</a>
									</div>
									<div class="course-info">
										<div class="title">
											<span class="label label-p">动漫插画</span>
											<a class="transition" href="javaScript:void(0);">sai基础教程</a>
										</div>
										<div class="metas">
											<span>69万+浏览</span>/
											<span>19361学员</span>/
											<span>4.7评分</span>
										</div>
										<div class="teacher text-o-show">
											<a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/1282433/card/show" data-user-id="1282433">
												<img class="avatar-ss " src="images/2001255a2bbc776915.jpg" alt="木桃"> 木桃
											</a>
											<div class="price free pull-right"><span>免费</span></div>
										</div>
									</div>
								</div>
							</div>
				   <!--  --- 推荐课程 ------------------------------------------------------------------------- -->	
							
						</div>
					</div>
				</div>

			</div>
			<aside class="col-md-3 course-sidebar">
				<div class="flat ">
					<h3>课时简介</h3>
					<div class="words">
						<i class="fa fa-flag pull-left"></i>对motion v2脚本进行全面介绍，通过一下简单的小案例让你轻松掌握。
					</div>
				</div>
				<div class="flat sidebar-teach media">
					<h3>课程教师</h3>
					<div class="media-left">
						<a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/8441/card/show" data-user-id="8441">
							<img class="avatar-sm" id="teachImg" src="images/062247776d46161023.jpg" alt="Orchid">
						</a>

					</div>
					<div class="teach-info media-body">
						<p class="text-o-show"> <a class="link-light " href="javaScript:void(0);">Orchid</a>
							<span class="daren-icon-t" title="达人"></span>
						</p>
						<p><a href="javaScript:void(0);"><span id="teach" >20</span>在教</a> <a href="javaScript:void(0);"><span id="fans">3285</span>粉丝</a></p>
					</div>
					<div class="info">
						没什么
					</div>
					<div class="ta clearfix" data-role="followUser">
						<a class="act first follow-btn" href="javascript:;" data-url="/user/8441/follow" id="attion">
							<i class="fa fa-plus"></i> 关注TA
						</a>
						<a class="act first unfollow-btn" href="javascript:;" data-url="/user/8441/unfollow" style="display:none">
							<i class="fa fa-check"></i> 已关注
						</a>
						<a class="act" href="javaScript:void(0);" data-toggle="modal" data-target="#modal" data-url="/message/create/8441">
							<i class="fa fa-envelope"></i> 私信
						</a>
					</div>
				</div>

				<div class="flat sidebar-learner ">
					<h3>
            最新加入学员<span class="count">()</span>
          </h3>
					<ul class="clearfix" id="member">
				<!-- 最新加入学员   显示9个就好 ---------------------------------------------------------------------------------- -->
						<li>
							<a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/2359723/card/show" data-user-id="2359723">
								<img class="avatar-sm" src="images/avatar.png" alt="solo怪兽">
							</a>
							<a href="javaScript:void(0);" title="solo怪兽" class="name">solo怪兽</a>
						</li>
				<!-- 最新加入学员   显示9个就好 ---------------------------------------------------------------------------------- -->
						
					</ul>
				</div>

			</aside>
		</div>
		<input id="isjoin" type="hidden" value="false">
	</div>

<!-- 尾部 --------------------------------------------------------------------------------------------  -->
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- 为登录就弹出框 ---------------------------------------------- -->
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