<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="">
<style type="text/css" id="30192272684"></style>
<head>
<base href="/newhaozhiwang/"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
  <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta name="baidu-site-verification" content="XN2OVFQdUg">
  <title>  
    课时管理 - 好知网-重拾学习乐趣-Powered By Howzhi  </title>
  <meta name="keywords" content="免费教程 在线教育  在线学习  知识分享 教程 视频教程 视频教学  网络教学  自学教程 摄影教程 折纸教程 编程教程  电脑教程  健身教程  ps教程  公开课">
  <meta name="description" content="好知网是一个综合性在线学习平台。这里有大量的在线课程，课程涵盖计算机知识，企业管理，摄影，photoshop，职业技能，运动、外语、美食，时尚，手工艺，公开课，职业资格考试等。">
  <meta content="38555264a5afeb76b541fe43d1a271cbd6337c60" name="csrf-token">
  <meta content="1" name="is-login">
  <meta content="1" name="is-open"> 
  <link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
  <link href="css/bootstrap.css" rel="stylesheet">
  <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
 <style>.cke{visibility:hidden;}</style>
 <link rel="stylesheet" type="text/css" href="css/editor.css">
 <link rel="stylesheet" type="text/css" href="css/style.css">
 <script type="text/javascript" src="js/addlesson.js"></script>
 <script type="text/javascript" src="js/top.js"></script>
 <style type="text/css">
.webuploader-container {
  position: relative;
}
.webuploader-element-invisible {
  position: absolute !important;
  clip: rect(1px 1px 1px 1px); /* IE6, IE7 */
    clip: rect(1px,1px,1px,1px);
}
.webuploader-pick {
  position: relative;
  display: inline-block;
  cursor: pointer;
  background: #fff;
  padding: 5px 10px;
  color: #333;
  text-align: center;
  border-radius: 3px;
  border: 1px solid #ccc;
  overflow: hidden;
}
.webuploader-pick-hover {
  background: #e6e6e6;
  border-color: #adadad;
}

.webuploader-pick-disable {
  opacity: 0.6;
  pointer-events:none;
}

.balloon-uploader {
  border: 1px solid #ddd;
  border-radius: 4px;
}

.balloon-uploader-heading {
  background-color: #f5f5f5;
  color: #333;
  padding: 10px 15px;
  border-bottom: 1px solid #ddd;
  display: none;
}

.balloon-uploader-footer {
  background-color: #f5f5f5;
  color: #333;
  padding: 10px 15px;
  border-top: 1px solid #ddd;
  text-align: right;
}

.balloon-filelist {
  width: 100%;
}

.balloon-filelist-heading {
  position: relative;
  font-weight: bold;
  border-bottom: 2px solid #ddd;
}

.balloon-uploader-body {
  position: relative;

}

.balloon-filelist .file-name {
  margin-right: 250px;
  padding: 8px;
}

.balloon-filelist .file-size {
  position: absolute;
  top: 0px;
  right: 150px;
  width: 100px;
  text-align: right;
  padding: 8px;
}

.balloon-filelist .file-status {
  position: absolute;
  top: 0px;
  right: 0px;
  width: 120px;
  text-align: left;
  padding: 8px;

}

.balloon-filelist ul {
  list-style: none;
  margin: 0;
  padding: 0;
  min-height: 100px;
  max-height: 300px;
  overflow-y: scroll;
}

.balloon-filelist ul li {
  position: relative;
  border-bottom: 1px solid #ddd;
}

.balloon-dnd {
  visibility: hidden;
}

.balloon-uploader-none .balloon-uploader-footer,
.balloon-uploader-none .balloon-uploader-body {
  visibility: hidden;
}

.balloon-uploader-none .balloon-dnd {
  visibility: visible;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  text-align: center;
  vertical-align: middle;
}

.balloon-nofile {
  position: absolute;
  top: 40px;
  left: 0;
  right: 0;
  bottom: 0;
  line-height: 100px;
  text-align: center;
  color: #999;
}

.balloon-uploader .file-pick-btn {
  display: inline-block;
}

.balloon-uploader .start-upload-btn {
  position: relative;
  display: inline-block;
  cursor: pointer;
  background: #5bc0de;
  padding: 5px 10px;
  color: #fff;
  text-align: center;
  border-radius: 3px;
  border: 1px solid #46b8da;
  overflow: hidden;
}

.balloon-uploader .start-upload-btn:hover {
  background: #31b0d5;
  border-color: #269abc;
}

.balloon-filelist .file-progress {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}

.balloon-filelist .file-progress-bar {
  background: rgba(59, 181, 33, 0.18);
  float: left;
  height: 100%;
}
</style>

 </head>
  <body class="index">
    <jsp:include page="topb.jsp"></jsp:include>  
    
   <div class="container" id="content-container"> 
        
    <div class="course-managehead media manage">
    <div class="pic media-left">
      <a href="http://www.howzhi.com/course/14061/">
        <img src="images/course.png">
      </a>
    </div>
    <div class="info media-body">
        <h1 class="title"><a href="http://www.howzhi.com/course/14061/">we</a></h1>
                            <p class="tipinfo t-gray fsn">
            <i class="hz-icon icon-info t-infowarn"></i>
            请完善基本信息、课程图片和课时后，再<font class="t-infowarn">申请发布</font>课程。<a href="javascript:;" class="active" id="js-info">新手引导</a>
          </p>
                       
    </div>
     <div class="action"> 
      <a class="btn com radius mts" href="http://www.howzhi.com/course/14061/?previewAs=member" target="_blank">返回课程</a>
                          <a data-step="4" data-intro="完善所有信息后，点击&#39;申请发布&#39;，向管理员提交发布请求" data-position="left" class="radius btn disable mtl">申请发布</a>
                
     </div>
  </div>

<section class="create-course course-more">
  <div class="row">
    
    <div class="col-md-3">
      <ul class="list-group affix-top" data-spy="affix" data-offset-top="300">
        <li data-step="1" data-intro="点击&#39;基本信息&#39;，填写完整课程信息，并保存。打绿色勾表示该项完成" data-position="right">
                          <span>
                1
              </span>
                        <a title="请输入标题" href="http://www.howzhi.com/ugc/course/14061/manage">
            基本信息
          </a>
        </li>
        <li data-step="2" data-intro="上传课程图片" data-position="right">
          <span>2</span>          <a class="" href="http://www.howzhi.com/ugc/course/14061/manage/picture">课程图片</a>
        </li>
        
        <li class="active" data-step="3" data-intro="添加课时，完成最后信息的填写" data-position="right">
          <span>3</span>
                    <a class="" href="./page/Howzhi.html">课时管理</a>
        </li>
      </ul>     
    </div>
      <div class="col-md-9">
      
<div class="main">
	<h1>课时管理<span>COURSE MANAGE</span>
		<div class="pull-right">

			<button class="btn btn-primary" id="lesson-create-btn" 
			data-toggle="modal" data-target="#modal" data-backdrop="static" 
			data-keyboard="false">
			<i class="glyphicon glyphicon-plus"></i> 课时</button>
            
	
		</div>
	</h1>

	
	 <div class="empty">当前没有课时,不能发布！</div>

	 
	<div class="panel-body">
		<ul class="lesson-list sortable-list" id="course-item-list" data-sort-url="/course/14061/manage/lesson/sort">

						
		</ul>
	</div>
</div>

    </div>
  </div>
</section> 
<input type="hidden" value="draft" id="course_status">    
      </div>
    
          <footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-4 ">
      <a href="http://www.howzhi.com/"><img src="images/foot-logo.png" alt="好知，知识分享新社区"></a>
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
        Powered by <a href="http://www.edusoho.com/" target="_blank">EduSoho v6.17.2</a>
  ©2014-2016 <a class="mlm" href="http://www.howzhi.com/" target="_blank">好知网</a>               
  </div>
</div>
<!-- Piwik -->
<noscript>&lt;p&gt;&lt;img src="//piwik.edusoho.cn/piwik.php?idsite=3" style="border:0;" alt="" /&gt;&lt;/p&gt;</noscript>
<!-- End Piwik Code -->
  
    
       <section class="serch-enginne-course visible-lg" role="alert">
      </section>
        <div id="login-modal" class="modal is-login" data-url="/login/ajax"></div>
    <div id="modal" class="modal" tabindex="-1" aria-hidden="true" style="display: none;"><div class="modal-dialog  modal-lg">
  <div class="modal-content">
    <div class="modal-header">
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title">  添加课时</h4>
           </div>
    <div class="modal-body">
<form id="course-lesson-form" data-course-id="14061" class="form-horizontal lesson-form lesson-form-video" method="post" data-parentid="" novalidate="novalidate" data-widget-cid="widget-96">

  <div id="form-group" class="form-group">
    <div class="col-md-2 control-label"><label>类型</label></div>
    <div class="col-md-9 controls">
      <div class="radios">
                    <label><input id="addvideo"type="radio" name="type" value="video" checked="checked"> 视频</label>
                    <label><input id="addtext" type="radio" name="type" value="text" > 图文</label>
              </div>
    </div>
  </div>

  <div class="form-group for-text-type for-video-type for-audio-type for-ppt-type for-document-type for-flash-type">
    <div class="col-md-2 control-label"><label for="lesson-title-field">标题</label></div>
    <div class="col-md-9 controls">
      <div class="row">
        <div class="col-md-10">
          <input id="lesson-title-field" class="form-control" type="text" name="title" value="" data-widget-cid="widget-98" data-explain="">
        </div>
        <div class="col-md-2">
          <div class="checkbox">
            <label><input type="checkbox" name="free" value="1"> 免费课时</label>
          </div>
        </div>
      </div>
    <div class="help-block" style="display:none;"></div></div>
  </div>
  <!-- ---------------图文界面所用到的div------------------------>
  	<div id="textarea"class="textarea01">
    <div class="col-md-2 control-label"><label for="lesson-title-field">标题</label></div>
    <div class="col-md-9 controls">
      <div class="row">
        <div class="col-md-10">
          <input id="lesson-title-field" class="form-control" type="text" name="title" value="" data-widget-cid="widget-98" data-explain="">
        </div>
        <div class="col-md-2">
          <div class="checkbox">
            <label><input type="checkbox" name="free" value="1"> 免费课时</label>
          </div>
        </div>
      </div>
    <div class="help-block" style="display:none;"></div></div>
  </div>
  
 	<div id="jieshao01">
    <div class="col-md-2 control-label"><label for="lesson-summary-field" style="margin-top:30px;">简介</label></div>
    <div class="col-md-9 controls" style="margin-top:30px;"><textarea class="form-control" id="lesson-summary-field" name="summary"></textarea>
    </div>
  </div>
<!-- ---------------图文------------------------>



  <div class="form-group for-text-type for-video-type for-audio-type for-ppt-type for-document-type for-flash-type">
    <div class="col-md-2 control-label"><label for="lesson-summary-field">简介</label></div>
    <div class="col-md-9 controls"><textarea class="form-control" id="lesson-summary-field" name="summary"></textarea>

    </div>
  </div>
     <!-- ---------------------------------图文的编辑器位置--------------------- -->
  <div  id="form-group0011" class="form-group for-text-type">

    <div class="col-md-2 control-label"><label for="lesson-content-field" class="style1">内容</label></div>
    <div class="col-md-9 controls">

      
     <textarea class="form-control" id="lesson-content-field" name="content" data-image-upload-url="/editor/upload?token=MjM2MDg3NHxjb3Vyc2V8aW1hZ2V8MTQ3MjU2NTM5N3wyNGQzNmViMTI5YzE1NmY2NzEyMmVjYTg5NzhlMjkwMg" data-flash-upload-url="/editor/upload?token=MjM2MDg3NHxjb3Vyc2V8Zmxhc2h8MTQ3MjU2NTM5N3xjN2Q2YjBkZWVmM2E3YjgzZDk3ZTM2OGFhMTVhMzdmMA" data-image-download-url="/editor/download?token=MjM2MDg3NHxjb3Vyc2V8aW1hZ2V8MTQ3MjU2NTM5N3wyNGQzNmViMTI5YzE1NmY2NzEyMmVjYTg5NzhlMjkwMg" style="visibility: hidden; display: none;"></textarea><div id="cke_lesson-content-field" class="cke_509 cke cke_reset cke_chrome cke_editor_lesson-content-field cke_ltr cke_browser_webkit" dir="ltr" lang="zh-cn" role="application"><div class="cke_inner cke_reset" role="presentation"><span id="cke_509_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; -webkit-user-select: none;"><span id="cke_516" class="cke_voice_label">工具栏</span><span id="cke_509_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_516" onmousedown="return false;"><span id="cke_519" class="cke_toolbar" role="toolbar"><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_520" class="cke_button cke_button__bold  cke_button_off" href="javascript:void('加粗')" title="加粗" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_520_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(317,event);" onfocus="return CKEDITOR.tools.callFunction(318,event);" onclick="CKEDITOR.tools.callFunction(319,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -24px;background-size:auto;">&nbsp;</span><span id="cke_520_label" class="cke_button_label cke_button__bold_label" aria-hidden="false">加粗</span></a><a id="cke_521" class="cke_button cke_button__italic  cke_button_off" href="javascript:void('倾斜')" title="倾斜" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_521_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(320,event);" onfocus="return CKEDITOR.tools.callFunction(321,event);" onclick="CKEDITOR.tools.callFunction(322,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -48px;background-size:auto;">&nbsp;</span><span id="cke_521_label" class="cke_button_label cke_button__italic_label" aria-hidden="false">倾斜</span></a><a id="cke_522" class="cke_button cke_button__underline  cke_button_off" href="javascript:void('下划线')" title="下划线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_522_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(323,event);" onfocus="return CKEDITOR.tools.callFunction(324,event);" onclick="CKEDITOR.tools.callFunction(325,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -144px;background-size:auto;">&nbsp;</span><span id="cke_522_label" class="cke_button_label cke_button__underline_label" aria-hidden="false">下划线</span></a><a id="cke_523" class="cke_button cke_button__strike  cke_button_off" href="javascript:void('删除线')" title="删除线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_523_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(326,event);" onfocus="return CKEDITOR.tools.callFunction(327,event);" onclick="CKEDITOR.tools.callFunction(328,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -72px;background-size:auto;">&nbsp;</span><span id="cke_523_label" class="cke_button_label cke_button__strike_label" aria-hidden="false">删除线</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_524" class="cke_button cke_button__removeformat  cke_button_off" href="javascript:void('清除格式')" title="清除格式" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_524_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(329,event);" onfocus="return CKEDITOR.tools.callFunction(330,event);" onclick="CKEDITOR.tools.callFunction(331,this);return false;"><span class="cke_button_icon cke_button__removeformat_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1728px;background-size:auto;">&nbsp;</span><span id="cke_524_label" class="cke_button_label cke_button__removeformat_label" aria-hidden="false">清除格式</span></a></span><span id="cke_517" class="cke_combo cke_combo__format  cke_combo_off" role="presentation"><span id="cke_517_label" class="cke_combo_label">格式</span><a class="cke_combo_button" title="格式" tabindex="-1" href="javascript:void('格式')" hidefocus="true" role="button" aria-labelledby="cke_517_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(333,event,this);" onfocus="return CKEDITOR.tools.callFunction(334,event);" onclick="CKEDITOR.tools.callFunction(332,this);return false;"><span id="cke_517_text" class="cke_combo_text cke_combo_inlinelabel">格式</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_525" class="cke_toolbar" role="toolbar"><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_526" class="cke_button cke_button__link  cke_button_off" href="javascript:void('插入/编辑超链接')" title="插入/编辑超链接" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_526_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(335,event);" onfocus="return CKEDITOR.tools.callFunction(336,event);" onclick="CKEDITOR.tools.callFunction(337,this);return false;"><span class="cke_button_icon cke_button__link_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1248px;background-size:auto;">&nbsp;</span><span id="cke_526_label" class="cke_button_label cke_button__link_label" aria-hidden="false">插入/编辑超链接</span></a><a id="cke_527" class="cke_button cke_button__unlink cke_button_disabled " href="javascript:void('取消超链接')" title="取消超链接" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_527_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(338,event);" onfocus="return CKEDITOR.tools.callFunction(339,event);" onclick="CKEDITOR.tools.callFunction(340,this);return false;"><span class="cke_button_icon cke_button__unlink_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1272px;background-size:auto;">&nbsp;</span><span id="cke_527_label" class="cke_button_label cke_button__unlink_label" aria-hidden="false">取消超链接</span></a><a id="cke_528" class="cke_button cke_button__smiley  cke_button_off" href="javascript:void('表情符')" title="表情符" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_528_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(341,event);" onfocus="return CKEDITOR.tools.callFunction(342,event);" onclick="CKEDITOR.tools.callFunction(343,this);return false;"><span class="cke_button_icon cke_button__smiley_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1848px;background-size:auto;">&nbsp;</span><span id="cke_528_label" class="cke_button_label cke_button__smiley_label" aria-hidden="false">表情符</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_529" class="cke_toolbar" role="toolbar"><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_530" class="cke_button cke_button__numberedlist  cke_button_off" href="javascript:void('编号列表')" title="编号列表" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_530_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(344,event);" onfocus="return CKEDITOR.tools.callFunction(345,event);" onclick="CKEDITOR.tools.callFunction(346,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1368px;background-size:auto;">&nbsp;</span><span id="cke_530_label" class="cke_button_label cke_button__numberedlist_label" aria-hidden="false">编号列表</span></a><a id="cke_531" class="cke_button cke_button__bulletedlist  cke_button_off" href="javascript:void('项目列表')" title="项目列表" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_531_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(347,event);" onfocus="return CKEDITOR.tools.callFunction(348,event);" onclick="CKEDITOR.tools.callFunction(349,this);return false;"><span class="cke_button_icon cke_button__bulletedlist_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1320px;background-size:auto;">&nbsp;</span><span id="cke_531_label" class="cke_button_label cke_button__bulletedlist_label" aria-hidden="false">项目列表</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_532" class="cke_button cke_button__outdent cke_button_disabled " href="javascript:void('减少缩进量')" title="减少缩进量" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_532_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(350,event);" onfocus="return CKEDITOR.tools.callFunction(351,event);" onclick="CKEDITOR.tools.callFunction(352,this);return false;"><span class="cke_button_icon cke_button__outdent_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1056px;background-size:auto;">&nbsp;</span><span id="cke_532_label" class="cke_button_label cke_button__outdent_label" aria-hidden="false">减少缩进量</span></a><a id="cke_533" class="cke_button cke_button__indent  cke_button_off" href="javascript:void('增加缩进量')" title="增加缩进量" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_533_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(353,event);" onfocus="return CKEDITOR.tools.callFunction(354,event);" onclick="CKEDITOR.tools.callFunction(355,this);return false;"><span class="cke_button_icon cke_button__indent_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1008px;background-size:auto;">&nbsp;</span><span id="cke_533_label" class="cke_button_label cke_button__indent_label" aria-hidden="false">增加缩进量</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_534" class="cke_button cke_button__blockquote  cke_button_off" href="javascript:void('块引用')" title="块引用" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_534_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(356,event);" onfocus="return CKEDITOR.tools.callFunction(357,event);" onclick="CKEDITOR.tools.callFunction(358,this);return false;"><span class="cke_button_icon cke_button__blockquote_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -216px;background-size:auto;">&nbsp;</span><span id="cke_534_label" class="cke_button_label cke_button__blockquote_label" aria-hidden="false">块引用</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_535" class="cke_button cke_button__justifyleft  cke_button_off" href="javascript:void('左对齐')" title="左对齐" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_535_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(359,event);" onfocus="return CKEDITOR.tools.callFunction(360,event);" onclick="CKEDITOR.tools.callFunction(361,this);return false;"><span class="cke_button_icon cke_button__justifyleft_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1128px;background-size:auto;">&nbsp;</span><span id="cke_535_label" class="cke_button_label cke_button__justifyleft_label" aria-hidden="false">左对齐</span></a><a id="cke_536" class="cke_button cke_button__justifycenter  cke_button_off" href="javascript:void('居中')" title="居中" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_536_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(362,event);" onfocus="return CKEDITOR.tools.callFunction(363,event);" onclick="CKEDITOR.tools.callFunction(364,this);return false;"><span class="cke_button_icon cke_button__justifycenter_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1104px;background-size:auto;">&nbsp;</span><span id="cke_536_label" class="cke_button_label cke_button__justifycenter_label" aria-hidden="false">居中</span></a><a id="cke_537" class="cke_button cke_button__justifyright  cke_button_off" href="javascript:void('右对齐')" title="右对齐" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_537_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(365,event);" onfocus="return CKEDITOR.tools.callFunction(366,event);" onclick="CKEDITOR.tools.callFunction(367,this);return false;"><span class="cke_button_icon cke_button__justifyright_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1152px;background-size:auto;">&nbsp;</span><span id="cke_537_label" class="cke_button_label cke_button__justifyright_label" aria-hidden="false">右对齐</span></a><a id="cke_538" class="cke_button cke_button__justifyblock  cke_button_off" href="javascript:void('两端对齐')" title="两端对齐" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_538_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(368,event);" onfocus="return CKEDITOR.tools.callFunction(369,event);" onclick="CKEDITOR.tools.callFunction(370,this);return false;"><span class="cke_button_icon cke_button__justifyblock_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1080px;background-size:auto;">&nbsp;</span><span id="cke_538_label" class="cke_button_label cke_button__justifyblock_label" aria-hidden="false">两端对齐</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_539" class="cke_toolbar" role="toolbar"><span class="cke_toolbar_start"></span><span id="cke_518" class="cke_combo cke_combo__fontsize  cke_combo_off" role="presentation"><span id="cke_518_label" class="cke_combo_label">大小</span><a class="cke_combo_button" title="大小" tabindex="-1" href="javascript:void('大小')" hidefocus="true" role="button" aria-labelledby="cke_518_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(372,event,this);" onfocus="return CKEDITOR.tools.callFunction(373,event);" onclick="CKEDITOR.tools.callFunction(371,this);return false;"><span id="cke_518_text" class="cke_combo_text cke_combo_inlinelabel">大小</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span class="cke_toolgroup" role="presentation"><a id="cke_540" class="cke_button cke_button__textcolor cke_button_off " href="javascript:void('文本颜色')" title="文本颜色" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_540_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(374,event);" onfocus="return CKEDITOR.tools.callFunction(375,event);" onclick="CKEDITOR.tools.callFunction(376,this);return false;"><span class="cke_button_icon cke_button__textcolor_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -432px;background-size:auto;">&nbsp;</span><span id="cke_540_label" class="cke_button_label cke_button__textcolor_label" aria-hidden="false">文本颜色</span><span class="cke_button_arrow"></span></a><a id="cke_541" class="cke_button cke_button__bgcolor cke_button_off " href="javascript:void('背景颜色')" title="背景颜色" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_541_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(377,event);" onfocus="return CKEDITOR.tools.callFunction(378,event);" onclick="CKEDITOR.tools.callFunction(379,this);return false;"><span class="cke_button_icon cke_button__bgcolor_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -408px;background-size:auto;">&nbsp;</span><span id="cke_541_label" class="cke_button_label cke_button__bgcolor_label" aria-hidden="false">背景颜色</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_542" class="cke_toolbar" role="toolbar"><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_543" class="cke_button cke_button__uploadpictures  cke_button_off" href="javascript:void('批量图片上传')" title="批量图片上传" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_543_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(380,event);" onfocus="return CKEDITOR.tools.callFunction(381,event);" onclick="CKEDITOR.tools.callFunction(382,this);return false;"><span class="cke_button_icon cke_button__uploadpictures_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/uploadpictures/icons/uploadpictures.png?t=F0UE1.1);background-position:0 0px;background-size:16px;">&nbsp;</span><span id="cke_543_label" class="cke_button_label cke_button__uploadpictures_label" aria-hidden="false">批量图片上传</span></a><a id="cke_544" class="cke_button cke_button__codesnippet  cke_button_off" href="javascript:void('插入代码段')" title="插入代码段" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_544_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(383,event);" onfocus="return CKEDITOR.tools.callFunction(384,event);" onclick="CKEDITOR.tools.callFunction(385,this);return false;"><span class="cke_button_icon cke_button__codesnippet_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -384px;background-size:auto;">&nbsp;</span><span id="cke_544_label" class="cke_button_label cke_button__codesnippet_label" aria-hidden="false">插入代码段</span></a><a id="cke_545" class="cke_button cke_button__flash  cke_button_off" href="javascript:void('Flash')" title="Flash" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_545_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(386,event);" onfocus="return CKEDITOR.tools.callFunction(387,event);" onclick="CKEDITOR.tools.callFunction(388,this);return false;"><span class="cke_button_icon cke_button__flash_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -600px;background-size:auto;">&nbsp;</span><span id="cke_545_label" class="cke_button_label cke_button__flash_label" aria-hidden="false">Flash</span></a><a id="cke_546" class="cke_button cke_button__table  cke_button_off" href="javascript:void('表格')" title="表格" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_546_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(389,event);" onfocus="return CKEDITOR.tools.callFunction(390,event);" onclick="CKEDITOR.tools.callFunction(391,this);return false;"><span class="cke_button_icon cke_button__table_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1992px;background-size:auto;">&nbsp;</span><span id="cke_546_label" class="cke_button_label cke_button__table_label" aria-hidden="false">表格</span></a><a id="cke_547" class="cke_button cke_button__horizontalrule  cke_button_off" href="javascript:void('插入水平线')" title="插入水平线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_547_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(392,event);" onfocus="return CKEDITOR.tools.callFunction(393,event);" onclick="CKEDITOR.tools.callFunction(394,this);return false;"><span class="cke_button_icon cke_button__horizontalrule_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -912px;background-size:auto;">&nbsp;</span><span id="cke_547_label" class="cke_button_label cke_button__horizontalrule_label" aria-hidden="false">插入水平线</span></a><a id="cke_548" class="cke_button cke_button__specialchar  cke_button_off" href="javascript:void('插入特殊符号')" title="插入特殊符号" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_548_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(395,event);" onfocus="return CKEDITOR.tools.callFunction(396,event);" onclick="CKEDITOR.tools.callFunction(397,this);return false;"><span class="cke_button_icon cke_button__specialchar_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1968px;background-size:auto;">&nbsp;</span><span id="cke_548_label" class="cke_button_label cke_button__specialchar_label" aria-hidden="false">插入特殊符号</span></a><a id="cke_549" class="cke_button cke_button__iframe  cke_button_off" href="javascript:void('IFrame')" title="IFrame" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_549_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(398,event);" onfocus="return CKEDITOR.tools.callFunction(399,event);" onclick="CKEDITOR.tools.callFunction(400,this);return false;"><span class="cke_button_icon cke_button__iframe_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -936px;background-size:auto;">&nbsp;</span><span id="cke_549_label" class="cke_button_label cke_button__iframe_label" aria-hidden="false">IFrame</span></a><a id="cke_550" class="cke_button cke_button__kityformula  cke_button_off" href="javascript:void('公式编辑器')" title="公式编辑器" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_550_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(401,event);" onfocus="return CKEDITOR.tools.callFunction(402,event);" onclick="CKEDITOR.tools.callFunction(403,this);return false;"><span class="cke_button_icon cke_button__kityformula_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/kityformula/icons/kityformula.png?t=F0UE1.1);background-position:0 undefinedpx;background-size:16px;">&nbsp;</span><span id="cke_550_label" class="cke_button_label cke_button__kityformula_label" aria-hidden="false">公式编辑器</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_551" class="cke_toolbar" role="toolbar"><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_552" class="cke_button cke_button__pastetext  cke_button_off" href="javascript:void('粘贴为无格式文本')" title="粘贴为无格式文本" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_552_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(404,event);" onfocus="return CKEDITOR.tools.callFunction(405,event);" onclick="CKEDITOR.tools.callFunction(406,this);return false;"><span class="cke_button_icon cke_button__pastetext_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1608px;background-size:auto;">&nbsp;</span><span id="cke_552_label" class="cke_button_label cke_button__pastetext_label" aria-hidden="false">粘贴为无格式文本</span></a><a id="cke_553" class="cke_button cke_button__pastefromword  cke_button_off" href="javascript:void('从 MS Word 粘贴')" title="从 MS Word 粘贴" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_553_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(407,event);" onfocus="return CKEDITOR.tools.callFunction(408,event);" onclick="CKEDITOR.tools.callFunction(409,this);return false;"><span class="cke_button_icon cke_button__pastefromword_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1560px;background-size:auto;">&nbsp;</span><span id="cke_553_label" class="cke_button_label cke_button__pastefromword_label" aria-hidden="false">从 MS Word 粘贴</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_554" class="cke_toolbar" role="toolbar"><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_555" class="cke_button cke_button__find  cke_button_off" href="javascript:void('查找')" title="查找" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_555_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(410,event);" onfocus="return CKEDITOR.tools.callFunction(411,event);" onclick="CKEDITOR.tools.callFunction(412,this);return false;"><span class="cke_button_icon cke_button__find_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -552px;background-size:auto;">&nbsp;</span><span id="cke_555_label" class="cke_button_label cke_button__find_label" aria-hidden="false">查找</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_556" class="cke_button cke_button__source  cke_button_off" href="javascript:void('源码')" title="源码" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_556_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(413,event);" onfocus="return CKEDITOR.tools.callFunction(414,event);" onclick="CKEDITOR.tools.callFunction(415,this);return false;"><span class="cke_button_icon cke_button__source_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1896px;background-size:auto;">&nbsp;</span><span id="cke_556_label" class="cke_button_label cke_button__source_label" aria-hidden="false">源码</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_557" class="cke_button cke_button__maximize  cke_button_off" href="javascript:void('全屏')" title="全屏" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_557_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(416,event);" onfocus="return CKEDITOR.tools.callFunction(417,event);" onclick="CKEDITOR.tools.callFunction(418,this);return false;"><span class="cke_button_icon cke_button__maximize_icon" style="background-image:url(http://www.howzhi.com/assets/libs/ckeditor/4.6.7/plugins/icons.png?t=F0UE1.1);background-position:0 -1416px;background-size:auto;">&nbsp;</span><span id="cke_557_label" class="cke_button_label cke_button__maximize_label" aria-hidden="false">全屏</span></a></span><span class="cke_toolbar_end"></span></span></span></span><div id="cke_509_contents" class="cke_contents cke_reset" role="presentation" style="height: 300px;"><iframe src="" frameborder="0" class="cke_wysiwyg_frame cke_reset" tabindex="0" allowtransparency="true" style="width: 0px; height: 100%;"></iframe></div><span id="cke_509_bottom" class="cke_bottom cke_reset_all" role="presentation" style="-webkit-user-select: none;"><span id="cke_509_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="拖拽以改变大小" onmousedown="CKEDITOR.tools.callFunction(316, event)">◢</span></span></div></div>
    </div>
  </div>

  <div class="form-group for-video-type for-audio-type for-ppt-type for-document-type for-flash-type ">
    <div id="shipin02" class="col-md-2 control-label for-video-type"><label>视频</label></div>&nbsp;&nbsp;
    <input id="clickradio01" type="radio" name="radio" checked="checked">&nbsp;<label>网络视频</label>&nbsp;&nbsp;
    <input id="clickradio02" type="radio" name="radio">&nbsp;<label>本地视频</label>
    <div class="col-md-2 control-label for-audio-type"><label>音频</label></div>
    <div class="col-md-2 control-label for-ppt-type"><label>PPT</label></div>
    <div class="col-md-2 control-label for-document-type"><label>文档</label></div>
    <div class="col-md-2 control-label for-flash-type"><label>Flash</label></div>
    <div class="col-md-9 controls">

<div id="media-choosers">

  <div class="file-chooser" id="video-chooser" style="" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-81">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
      <div class="alert alert-warning" data-role="waiting-tip" style="display:none;">正在转换视频格式，转换需要一定的时间，期间将不能播放该视频。<br>转换完成后将以站内消息通知您。</div>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs hidden">
        <li class="active"><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#video-chooser-import-pane" data-toggle="tab">导入网络视频</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane" id="video-chooser-upload-pane">

          <div class="file-chooser-uploader">
            <div class="video-quality-switcher" data-widget-cid="widget-80">
  <div>
    <label>视频转码类型：</label>
    <span class="quality-switcher-bar">
      <span class="text-muted quality-switcher-name">(高品画质 / 标准音质)</span> <a href="javascript:;" class="edit-btn text-info"><span class="glyphicon glyphicon-cog"></span> 设置</a>
    </span>
  </div>

  <div class="quality-switcher-control">
    <div class="video-quality radios">
      画质：
        <label><input type="radio" name="video_quality" value="low"> 流畅 <span class="text-muted">(适合PPT讲解)</span></label><label><input type="radio" name="video_quality" value="normal"> 标准 <span class="text-muted">(适合屏幕录制、摄像头拍摄)</span></label><label><input type="radio" name="video_quality" value="high" checked="checked"> 精细 <span class="text-muted">(适合动态电影)</span></label>
    </div>

    <div class="audio-quality radios">
      音质：
        <label><input type="radio" name="video_audio_quality" value="low"> 流畅</label><label><input type="radio" name="video_audio_quality" value="normal" checked="checked"> 标准</label><label><input type="radio" name="video_audio_quality" value="high"> 高品</label>
    </div>

    <div class="quality-actions">
      <a href="javascript:;" class="btn btn-default btn-sm confrim-btn">确定</a>
      <a href="javascript:;" class="btn btn-link btn-sm cancel-btn">取消</a>
    </div>
  </div>
</div>


   <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;mp4&quot;,&quot;avi&quot;,&quot;flv&quot;,&quot;f4v&quot;,&quot;mpg&quot;,&quot;wmv&quot;,&quot;mov&quot;,&quot;vob&quot;,&quot;rmvb&quot;,&quot;mkv&quot;,&quot;m4v&quot;],&quot;mimeTypes&quot;:[&quot;video\/*&quot;]}" data-process="auto" data-widget-cid="widget-97"><div class="balloon-uploader-heading">上传文件</div><div class="balloon-uploader-body">  <div class="balloon-nofile">请将文件拖到这里，或点击添加文件按钮</div>  <div class="balloon-filelist">    <div class="balloon-filelist-heading">    <div class="file-name">文件名</div>    <div class="file-size">大小</div>    <div class="file-status">状态</div>  </div>  <ul></ul></div><div class="balloon-uploader-footer">  <div class="file-pick-btn"><div class=""><i class="glyphicon glyphicon-plus"></i> 添加文件</div></div></div></div></div>


            <div class="alert alert-info">
              <ul>
                                  <li>支持<strong>mp4, avi, flv, f4v, wmv, mov, rmvb, mkv, m4v</strong>格式的视频文件上传，文件大小不能超过<strong>2 GB</strong>。</li>
                  <li>支持<strong>断点续传</strong>（仅支持HTML5浏览器）。</li>
                  <li>视频将上传到<strong>云视频服务器</strong>，上传之后会对视频进行格式转换，转换过程需要一定的时间，在这个过程中视频将无法播放。</li>
                              </ul>
            </div>

          </div>

        </div>
        <div class="tab-pane" id="video-chooser-disk-pane">
            <div id="file-browser-video" data-role="file-browser" data-base-url="/uploadfile/browser?type=video" 
            data-default-url="/uploadfile/browser?type=video&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" 
            data-empty="暂无视频文件，请先上传。" data-widget-cid="widget-82" class="file-browser">
            <div class="file-browser-filter mvs"> 				
            <div class="radios">资料来源：         			
            <label>
            <input type="radio" name="file-browser-video-source" value="upload" checked="">来自上传</label>
            <label><input type="radio" name="file-browser-video-source" value="shared">来自分享</label> 
            <label><input type="radio" name="file-browser-video-source" value="public">公共资料</label>
            <label><input type="radio" name="file-browser-video-source" value="collection">我的收藏</label></div> 	        	
            <div class="row"><div class="col-xs-5"> 			      	
            <span class="input-group"> 				    
            <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    
            <span class="input-group-btn"> 				      
            <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button></span></span></div> 			      
            <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	
            <select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large">
            <option value="">请选择老师</option></select></span></div></div>
              <div class="file-browser-list-container"></div>
            </div>
        </div>

        <div class="tab-pane" id="video-chooser-course-file">
            <div id="file-browser-video" data-role="course-file-browser" data-url="/uploadfile/browsers?targetType=courselesson&amp;targetId=14061&amp;type=video" data-empty="暂无视频文件，请先上传。" data-widget-cid="widget-83" class="file-browser">
            </div>
        </div>
		
		<span></span>
        <div class="tab-pane active" id="video-chooser-import-pane">
          <div class="input-group">
            <input class="form-control" type="text" placeholder="支持优酷、土豆、腾讯、网易公开课的视频页面地址导入" data-role="import-url">
            <span class="input-group-btn">
              <button type="button" class="btn btn-default" data-role="import" data-url="/course/14061/manage/media/import" data-loading-text="正在导入，请稍等">导入</button>
            </span>
          </div>
        </div>
      </div>
    </div>

  </div>


  <div class="file-chooser" id="audio-chooser" style="display:none;" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-84">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs">
        <li><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#audio-chooser-upload-pane" data-toggle="tab">上传音频</a></li>
        <li><a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#audio-chooser-disk-pane" data-toggle="tab">
              从资料库中选择
        </a></li>

        <li>
          <a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#audio-chooser-course-file" data-toggle="tab">
            从课程文件中选择
          </a>
        </li>

      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="audio-chooser-upload-pane">

          <div class="file-chooser-uploader">
                        <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;mp3&quot;],&quot;mimeTypes&quot;:[&quot;audio\/*&quot;]}" data-process="auto">
            </div>

            <div class="alert alert-info">
              <ul>
                <li>支持<strong>mp3</strong>格式的音频文件上传，且文件大小不能超过<strong>
                                  500M
                                </strong>。</li>
                                  <li>支持<strong>断点续传</strong>（仅支持HTML5浏览器）。</li>
                  <li>音频将上传到<strong>云服务器</strong></li>
                              </ul>
            </div>
          </div>

        </div>
        <div class="tab-pane" id="audio-chooser-disk-pane">
          <div id="file-browser-audio" data-role="file-browser" data-base-url="/uploadfile/browser?type=audio" data-default-url="/uploadfile/browser?type=audio&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" data-empty="暂无音频文件，请先上传。" data-widget-cid="widget-85" class="file-browser"><div class="file-browser-filter mvs"> 				<div class="radios">资料来源：         			<label><input type="radio" name="file-browser-audio-source" value="upload" checked="">来自上传</label>         			<label><input type="radio" name="file-browser-audio-source" value="shared">来自分享</label>               <label><input type="radio" name="file-browser-audio-source" value="public">公共资料</label>               <label><input type="radio" name="file-browser-audio-source" value="collection">我的收藏</label>           </div> 	        	<div class="row">         			<div class="col-xs-5"> 			      	<span class="input-group"> 				    <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    <span class="input-group-btn"> 				      <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button> 				    </span> 				  </span>         			</div> 			      <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	<select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large"> 				    		<option value="">请选择老师</option> 				    </select> 			      </span> 			     </div>         		</div> 
              <div class="file-browser-list-container"></div>
          </div>
        </div>

        <div class="tab-pane" id="audio-chooser-course-file">
          <div id="file-browser-audio" data-role="course-file-browser" data-url="/uploadfile/browsers?targetType=courselesson&amp;targetId=14061&amp;type=audio" data-empty="暂无音频文件，请先上传。" data-widget-cid="widget-86" class="file-browser"></div>
        </div>

      </div>
    </div>

  </div>




  <div class="file-chooser" id="ppt-chooser" style="display:none;" data-params-url="/uploadfile/params?storage=cloud&amp;targetType=courselesson&amp;targetId=14061&amp;convertor=ppt&amp;lazyConvert=1" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-87">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs">
        <li><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#ppt-chooser-upload-pane" data-toggle="tab">上传PPT</a></li>
        <li><a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#ppt-chooser-disk-pane" data-toggle="tab">
              从资料库中选择
        </a></li>

         <li>
          <a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#ppt-chooser-course-file" data-toggle="tab">
            从课程文件中选择
          </a>
        </li>

      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="ppt-chooser-upload-pane">

          <div class="file-chooser-uploader">
                        <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;ppt&quot;,&quot;pptx&quot;],&quot;mimeTypes&quot;:[&quot;application\/vnd.ms-powerpoint&quot;,&quot;application\/vnd.openxmlformats-officedocument.presentationml.presentation&quot;]}" data-process="auto">
            </div>

            <div class="alert alert-info">
              <ul>
                <li>支持<strong>ppt, pptx</strong>格式的PPT文件上传，且文件大小不能超过<strong>100 MB</strong>。</li>
                <li>PPT将上传到<strong>云服务器</strong></li>
              </ul>
            </div>
          </div>

        </div>
        <div class="tab-pane" id="ppt-chooser-disk-pane">
          <div id="file-browser-ppt" data-role="file-browser" data-base-url="/uploadfile/browser?type=ppt" data-default-url="/uploadfile/browser?type=ppt&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" data-empty="暂无PPT文件，请先上传。" data-widget-cid="widget-88" class="file-browser"><div class="file-browser-filter mvs"> 				<div class="radios">资料来源：         			<label><input type="radio" name="file-browser-ppt-source" value="upload" checked="">来自上传</label>         			<label><input type="radio" name="file-browser-ppt-source" value="shared">来自分享</label>               <label><input type="radio" name="file-browser-ppt-source" value="public">公共资料</label>               <label><input type="radio" name="file-browser-ppt-source" value="collection">我的收藏</label>           </div> 	        	<div class="row">         			<div class="col-xs-5"> 			      	<span class="input-group"> 				    <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    <span class="input-group-btn"> 				      <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button> 				    </span> 				  </span>         			</div> 			      <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	<select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large"> 				    		<option value="">请选择老师</option> 				    </select> 			      </span> 			     </div>         		</div> 
            <div class="file-browser-list-container"></div>
          </div>
        </div>

        <div class="tab-pane" id="ppt-chooser-course-file">
            <div id="file-browser-ppt" data-role="course-file-browser" data-url="/uploadfile/browsers?targetType=courselesson&amp;targetId=14061&amp;type=ppt" data-empty="暂无PPT文件，请先上传。" data-widget-cid="widget-89" class="file-browser"></div>
        </div>

      </div>
    </div>

  </div>



 <div class="file-chooser" id="document-chooser" style="display:none;" data-params-url="/uploadfile/params?storage=cloud&amp;targetType=courselesson&amp;targetId=14061&amp;convertor=document" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-90">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs">
        <li><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#document-chooser-upload-pane" data-toggle="tab">上传文档</a></li>
        <li><a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#document-chooser-disk-pane" data-toggle="tab">
              从资料库中选择
        </a></li>

         <li>
          <a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#document-chooser-course-file" data-toggle="tab">
            从课程文件中选择
          </a>
        </li>

      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="document-chooser-upload-pane">

          <div class="file-chooser-uploader">

                        <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;doc&quot;,&quot;docx&quot;,&quot;pdf&quot;],&quot;mimeTypes&quot;:[&quot;application\/msword&quot;,&quot;application\/vnd.openxmlformats-officedocument.wordprocessingml.document&quot;,&quot;application\/pdf&quot;]}" data-process="auto"></div>

            <div class="alert alert-info">
              <ul>
                <li>支持<strong>pdf,doc,docx</strong>格式的文档上传，且文件大小不能超过<strong>100 MB</strong>。</li>
                <li>文档将上传到<strong>云服务器</strong></li>
              </ul>
            </div>
          </div>

        </div>
        <div class="tab-pane" id="document-chooser-disk-pane">
          <div id="file-browser-document" data-role="file-browser" data-base-url="/uploadfile/browser?type=document" data-default-url="/uploadfile/browser?type=document&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" data-empty="暂无文档，请先上传。" data-widget-cid="widget-91" class="file-browser"><div class="file-browser-filter mvs"> 				<div class="radios">资料来源：         			<label><input type="radio" name="file-browser-document-source" value="upload" checked="">来自上传</label>         			<label><input type="radio" name="file-browser-document-source" value="shared">来自分享</label>               <label><input type="radio" name="file-browser-document-source" value="public">公共资料</label>               <label><input type="radio" name="file-browser-document-source" value="collection">我的收藏</label>           </div> 	        	<div class="row">         			<div class="col-xs-5"> 			      	<span class="input-group"> 				    <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    <span class="input-group-btn"> 				      <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button> 				    </span> 				  </span>         			</div> 			      <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	<select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large"> 				    		<option value="">请选择老师</option> 				    </select> 			      </span> 			     </div>         		</div> 
            <div class="file-browser-list-container"></div>
          </div>
        </div>

        <div class="tab-pane" id="document-chooser-course-file">
            <div id="file-browser-document" data-role="course-file-browser" data-url="/uploadfile/browser?targetType=courselesson&amp;targetId=14061&amp;type=document" data-empty="暂无文档，请先上传。" data-widget-cid="widget-92" class="file-browser"></div>
        </div>

      </div>
    </div>

  </div>



   <div class="file-chooser" id="flash-chooser" style="display:none;" data-params-url="/uploadfile/params?storage=cloud&amp;targetType=courselesson&amp;targetId=14061&amp;convertor=" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-93">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs">
        <li><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#flash-chooser-upload-pane" data-toggle="tab">上传Flash</a></li>
        <li><a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#flash-chooser-disk-pane" data-toggle="tab">
              从资料库中选择
        </a></li>

         <li>
          <a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#flash-chooser-course-file" data-toggle="tab">
            从课程文件中选择
          </a>
        </li>

      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="flash-chooser-upload-pane">

          <div class="file-chooser-uploader">
                        <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;swf&quot;],&quot;mimeTypes&quot;:[&quot;application\/x-shockwave-flash&quot;]}" data-process="auto"></div>


            <div class="alert alert-info">
              <ul>
                <li>支持<strong>swf</strong>格式的文件上传，且文件大小不能超过<strong>100 MB</strong>。</li>
                <li>Flash将上传到<strong>云服务器</strong></li>
              </ul>
            </div>
          </div>

        </div>
        <div class="tab-pane" id="flash-chooser-disk-pane">
          <div id="file-browser-flash" data-role="file-browser" data-base-url="/uploadfile/browser?type=flash" data-default-url="/uploadfile/browser?type=flash&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" data-empty="暂无Flash，请先上传。" data-widget-cid="widget-94" class="file-browser"><div class="file-browser-filter mvs"> 				<div class="radios">资料来源：         			<label><input type="radio" name="file-browser-flash-source" value="upload" checked="checked">来自上传</label>         			<label><input type="radio" name="file-browser-flash-source" value="shared">来自分享</label>               <label><input type="radio" name="file-browser-flash-source" value="public">公共资料</label>               <label><input type="radio" name="file-browser-flash-source" value="collection">我的收藏</label>           </div> 	        	<div class="row">         			<div class="col-xs-5"> 			      	<span class="input-group"> 				    <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    <span class="input-group-btn"> 				      <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button> 				    </span> 				  </span>         			</div> 			      <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	<select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large"> 				    		<option value="">请选择老师</option> 				    </select> 			      </span> 			     </div>         		</div> 
            <div class="file-browser-list-container"></div>
          </div>
        </div>

        <div class="tab-pane" id="flash-chooser-course-file">
            <div id="file-browser-flash" data-role="course-file-browser" data-url="/uploadfile/browser?targetType=courselesson&amp;targetId=14061&amp;type=flash" data-empty="暂无Flash，请先上传。" data-widget-cid="widget-95" class="file-browser"></div>
        </div>

      </div>
    </div>

  </div>


</div>
        
      <input id="lesson-media-field" type="hidden" name="media" value="&quot;&quot;" data-widget-cid="widget-99" data-explain="">
    <div class="help-block" style="display:none;"></div></div>
  </div>
	<!-- 本地视频的上传 -->
	<input id="wangluovideo" type="file" style="width:100px;margin-left:150px;margin-bottom:20px;background:none">
  
  <!-- <div id="yincangyu" class="form-group for-none-type ">
    <div class="col-md-offset-2 col-md-9">
      <div class="alert alert-info">
        <p>PPT课时需要开通EduSoho云文档服务才能使用,
          点击<a href="http://open.edusoho.com/show/cloud/doc" target="_blank">这里</a>了解详情。</p>
      </div>
    </div>
  </div>

  <div id="yincangyu" class="form-group for-none-type ">
    <div class="col-md-offset-2 col-md-9">
      <div class="alert alert-info">
        <p>文档课时需要开通EduSoho云文档服务才能使用,
          点击<a href="http://open.edusoho.com/show/cloud/doc" target="_blank">这里</a>了解详情。</p>
      </div>
    </div>
  </div>

  <div id="yincangyu" class="form-group for-none-type ">
    <div class="col-md-offset-2 col-md-9">
      <div class="alert alert-info">
        <p>Flash课时需要开通EduSoho云视频服务才能使用,
          点击<a href="http://open.edusoho.com/show/cloud/video" target="_blank">这里</a>了解详情。</p>
      </div>
    </div>
  </div>
 -->
  <div class="form-group for-video-type for-audio-type" id="lesson-length-form-group">
      <div id="shipin03" class="col-md-2 control-label for-video-type"><label>视频时长</label></div>
      <div class="hide"><label for="lesson-length-field">视频时长或</label></div>
      <div class="col-md-2 control-label for-audio-type"><label for="lesson-length-field">音频时长</label></div>
    <div class="col-md-9 controls">
      <input class="form-control width-input width-input-small" id="lesson-minute-field" type="text" name="minute" value="" data-widget-cid="widget-100" data-explain="时长必须为整数。">分
      <input class="form-control width-input width-input-small" id="lesson-second-field" type="text" name="second" value="" data-widget-cid="widget-101" data-explain="时长必须为整数。">秒
      <div class="help-block">时长必须为整数。</div>
    </div>
  </div>

  

  <div class="form-group">
    <div class="col-md-2 control-label"><label>建议学习时长</label></div>
    <div class="col-md-9 controls">
      <input class="form-control width-input width-input-small" id="lesson-suggest-period-field" type="text" name="suggestHours" value="1.0" data-widget-cid="widget-102" data-explain="">小时
      <span class="for-video-type">（如未设置，则默认学习时长为视频时长3倍取整。）</span>
      <span class="for-audio-type">（如未设置，则默认学习时长为音频时长3倍取整。）</span><br>
      <span id="texttime" class="for-flash-type for-text-type for-ppt-type for-document-type">（如未设置，则默认学习时长1小时。）</span>
      <div class="help-block"></div>
    </div>
  </div>

  <input type="hidden" name="_csrf_token" value="38555264a5afeb76b541fe43d1a271cbd6337c60">


</form>

</div>
          <div class="modal-footer">    <button type="button" class="btn btn-link" data-dismiss="modal" id="cancel-btn">取消</button>
    <button id="course-lesson-btn" data-submiting-text="正在提交" type="submit" class="btn btn-primary" data-toggle="form-submit" data-target="#course-lesson-form">添加</button>
</div>
          </div>
</div>
</div>
    <div id="upload-image-modal" class="modal" tabindex="-1" aria-hidden="true" style="display: none;"></div>
         <ul class="fixed-bar">
  <li class="hz-app">
    <a class="active btn btn-primary" target="_blank" href="http://www.edusoho.com/download/mobile?client=android&code=howzhi">
      APP
    </a>         
  </li>
  <li class="hz-weixin">
    <a class="fixed-bar-icon" href="javascript:;">
      <i class="hz-icon icon-erweima "></i>
    </a> 
    <div class="weixin">
    	<p class="text-center mvs t-primary hidden-xs hidden-sm">扫一扫 关注好知微信</p>
    	<img src="images/wenxin-qrcode.jpg" class="img-responsive" alt="好知网微信">
    </div>        
  </li>
  <li class="hz-feedback">
    <a class="fixed-bar-icon" href="http://www.howzhi.com/feedback/user/list">
      <i class="hz-icon icon-question "></i>
    </a> 
    <a href="http://www.howzhi.com/feedback/user/list?feedurl=http://www.howzhi.com/ugc/course/14061/manage/lesson" target="_blank" class="js-feedback fixed-bar-text">
      问题反馈
    </a>        
  </li>
  <li class="go-top" style="display: none;">
    <a class="fixed-bar-icon" href="javascript:;">
      <i class="hz-icon icon-keyboardarrowup"></i>
    </a>
    <a class="fixed-bar-text" href="javascript:;">
      回到顶部
    </a>        
  </li>
</ul>    
</body>
</html>