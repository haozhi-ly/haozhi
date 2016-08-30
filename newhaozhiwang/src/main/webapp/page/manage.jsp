<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!-- saved from url=(0045)http://www.howzhi.com/ugc/course/14023/manage -->
<html class=""><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <base href="/newhaozhiwang/"/>
  <title>  
    好知网-重拾学习乐趣-Powered By Howzhi  </title>
    
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" media="screen" href="css/common.css">
<link rel="stylesheet" media="screen" href="css/font-awesome.min.css">
<link rel="stylesheet" media="screen" href="css/es-icon.css">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link rel="stylesheet" type="text/css" href="css/iconfont.css">
<link charset="utf-8" rel="stylesheet" href="css/select2.css">
<link charset="utf-8" rel="stylesheet" href="css/introjs.min.css">
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script> 
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>  
    <script type="text/javascript" src="ckeditor/config.js"></script>  
   	<script type="text/javascript">
   		var myckeditor;
	    	$(document).ready(function(){  
	    	 myckeditor=CKEDITOR.replace('myckeditor'); 
	    });  
	</script>  
<style>.cke{visibility:hidden;}</style>
</head>

<body class="index">   
   
    
    <jsp:include page="topf.jsp"></jsp:include>
    <div class="container" id="content-container"> 
    <div class="course-managehead media manage">
    <div class="pic media-left">
      <a href="http://www.howzhi.com/course/14023/">
        <img src="./images/course.png">
      </a>
    </div>
    <div class="info media-body">
        <h1 class="title"><a href="http://www.howzhi.com/course/14023/">asd</a></h1>
                            <p class="tipinfo t-gray fsn">
            <i class="glyphicon glyphicon-info-sign" style="color: rgb(255, 140, 60); font-size: 14px;"></i>
            请完善基本信息、课程图片和课时后，再<font class="t-infowarn">申请发布</font>课程。<a href="javascript:;" class="active" id="js-info">新手引导</a>
          </p>
                       
    </div>
     <div class="action"> 
      <a class="btn com radius mts" href="http://www.howzhi.com/course/14023/?previewAs=member" target="_blank">返回课程</a>
                          <a data-step="4" data-intro="完善所有信息后，点击&#39;申请发布&#39;，向管理员提交发布请求" data-position="left" class="radius btn disable mtl">申请发布</a>
                
     </div>
  </div>

<section class="create-course course-more">
  <div class="row">
    
    <div class="col-md-3">
      <ul class="list-group affix-top" data-spy="affix" data-offset-top="300">
        <li class="active" data-step="1" data-intro="点击&#39;基本信息&#39;，填写完整课程信息，并保存。打绿色勾表示该项完成" data-position="right">
                          <span>
                1
              </span>
                        <a title="请输入标题" href="http://www.howzhi.com/ugc/course/14023/manage">
            基本信息
          </a>
        </li>
        <li data-step="2" data-intro="上传课程图片" data-position="right">
          <span>2</span>          <a class="" href="http://www.howzhi.com/ugc/course/14023/manage/picture">课程图片</a>
        </li>
        
        <li data-step="3" data-intro="添加课时，完成最后信息的填写" data-position="right">
          <span>3</span>
                    <a class="" href="http://www.howzhi.com/ugc/course/14023/manage/lesson">课时管理</a>
        </li>
      </ul>     
    </div>
      <div class="col-md-9">
            <div class="main">
        <h1>基本信息<span>CREATE INFORMATION</span></h1>      
        <form id="course-form" class="form-horizontal" action="http://www.howzhi.com/ugc/course/14023/manage" method="post" novalidate="novalidate" data-widget-cid="widget-0">
                    <div class="form-group">
            <label class="col-md-2 control-label" for="course_title">标题</label>
            <div class="col-md-8 controls">
              <input id="course_title" class="form-control" type="text" value="asd" required="required" name="title" data-explain="" placeholder="给你课程一个吸引人的标题" data-widget-cid="widget-1">
              <div class="help-block" style="display:none;"></div>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-2 control-label" for="course-about-field">课程简介</label>
           			<div style="width:560px;height: 300px;float:right;margin-right: 130px;"> <textarea name="myckeditor"></textarea></div>
          </div>
          
          
          <div class="form-group">
          <label class="col-md-2 control-label">分类</label>
          <div class="col-md-8 controls">
            <select id="course_categoryId" name="categoryId" required="required" class="form-control width-input" data-widget-cid="widget-4" data-explain="">
              <option value="">分类</option><option value="1">摄影课堂</option><option value="101">　基础</option><option value="198">　人像</option><option value="199">　风光</option><option value="201">　产品</option><option value="200">　旅行</option><option value="202">　手机</option><option value="103">　后期</option><option value="203">　其他</option><option value="204">创意设计</option><option value="163">　平面设计</option><option value="211">　UI设计</option><option value="208">　影视设计</option><option value="209">　动漫插画</option><option value="210">　网页设计</option><option value="212">　室内设计</option><option value="213">　其他</option><option value="205">声乐器乐</option><option value="207">　音乐理论</option><option value="214">　唱歌技巧</option><option value="215">　乐器演奏</option><option value="216">　音乐创作</option><option value="206">运动健身</option><option value="217">　减肥瘦身</option><option value="218">　健身塑形</option><option value="219">　养生保健</option><option value="220">　户外运动</option><option value="221">　其他运动</option><option value="222">IT互联网</option><option value="223">　理论基础</option><option value="224">　编程开发</option><option value="152">　移动开发</option><option value="226">　互联网产品</option><option value="225">　系统运维</option><option value="227">　其他</option><option value="9">兴趣爱好</option><option value="2">　手工</option><option value="104">　　纸艺</option><option value="105">　　布艺</option><option value="106">　　编织</option><option value="107">　　其他</option><option value="142">　书画</option><option value="141">　舞蹈</option><option value="6">　美食</option><option value="121">　　菜肴</option><option value="122">　　主食</option><option value="123">　　点心</option><option value="130">　　饮料</option><option value="131">　　营养</option><option value="144">　棋艺</option><option value="145">　其他</option><option value="10">语言学习</option><option value="146">　英语</option><option value="196">　法语</option><option value="149">　汉语</option><option value="148">　韩语</option><option value="147">　日语</option><option value="150">　其他语种</option><option value="178">职场技能</option><option value="161">　办公软件</option><option value="197">　求职</option><option value="180">　营销</option><option value="182">　人际</option><option value="179">　管理</option><option value="181">　财务</option><option value="183">　其他</option><option value="4">公开课</option><option value="118">　文学</option><option value="188">　理学</option><option value="189">　工学</option><option value="120">　社会</option><option value="187">　哲学</option><option value="185">　历史</option><option value="186">　经济</option><option value="194">　国内大学</option><option value="191">　其他</option>
            </select>
            <div class="help-block" style="display:none;"></div>
          </div>
          </div>
          <div class="form-group">
                <label class="col-md-2 control-label" for="howzhi_tags">标签</label>
                <div class="col-md-8 controls">
                  <input type="text" id="howzhi_tags" name="howzhi_customTags" required="required" class="form-control" value="" data-explain="将会应用于按标签搜索课程、相关课程的提取等" data-widget-cid="widget-3">
                  <div class="help-block">将会应用于按标签搜索课程、相关课程的提取等</div>
                </div>
          </div>
          
          <div class="form-group">
            <div class="col-md-offset-2 col-md-8 controls">            
              <a href="javascript:;" id="save_button" class="btn btn-blue pull-right mrl">保存</a> 
            </div>
          </div>
            <input type="hidden" name="_csrf_token" value="02f330084b3045f3d695afbb5708ecb5d28133c5">
            <input type="hidden" name="type" id="submit_type">
        </form> 

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
      <a href="http://www.howzhi.com/"><img src="./images/foot-logo.png" alt="好知，知识分享新社区"></a>
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
</body></html>