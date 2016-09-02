<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="">
<head>
<base href="/newhaozhiwang/"/>
<meta charset="UTF-8">

<link href="css/bootstrap.css" rel="stylesheet">

 <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery-1.11.1.min.js"></script> 
<script type="text/javascript" src="js/cropbox.js"></script>
<script type="text/javascript"src="js/top.js"></script>
<link href="css/main.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
  <body class="index">
  <jsp:include page="topb.jsp"></jsp:include>
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
        <li data-step="1" data-intro="点击&#39;基本信息&#39;，填写完整课程信息，并保存。打绿色勾表示该项完成" data-position="right">
          <span>1</span>
       <a title="请输入标题" href="http://www.howzhi.com/ugc/course/14023/manage">基本信息
          </a>
        </li>
        <li class="active" data-step="2" data-intro="上传课程图片" data-position="right">
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
  <h1>课程图片<span>COURSE PICTURE</span></h1>
  <div class="panel-body">
            <div class="form-group clearfix">
        <div class="col-md-offset-2 col-md-8 controls">
         <img  id="headphoto" src="./images/course.png" class="headphoto"/>
      <!--  <div class="imageBox" style="background-image: url(images/course.png); background-size: 658px 851px; background-position: -129px -225.5px; background-repeat: no-repeat;">
			    <div class="thumbBox"></div>
			    <div class="spinner" style="display: none;">Loading...</div>
  			</div> -->
        </div>
      </div>

      <div class="form-group clearfix">
        <div class="col-md-offset-2 col-md-8 controls">
          <p class="help-block">你可以上传jpg, gif, png格式的文件, 图片建议尺寸至少为480x270。<br>文件大小不能超过<strong>2M</strong>。没有课程图片的课程不能发布！</p>
        </div>
      </div>
      
	<!-- 这是控制图片上传的按钮 -->
	 <div class="action"> 
	 
    <!-- <input type="file" id="file" style=" width: 200px">-->
    <div class="new-contentarea tc"> <a href="javascript:void(0)" class="upload-img">
      <label for="upload-file">上传图像</label>
      </a>
      <input type="file" class="" name="upload-file" id="upload-file">
    </div>
    <input type="button" id="btnCrop" class="Btnsty_peyton" value="保存">
    
  </div>
	 	
  </div>
</div>

    </div>
  </div>
</section> 
<input type="hidden" value="draft" id="course_status">    
      </div>
    
<script type="text/javascript">

$(window).load(function() {
	var options =
	{
		thumbBox: '.thumbBox',
		spinner: '.spinner',
		imgSrc: 'images/avatar.jpg'
	}
	/* var cropper = $('.imageBox').cropbox(options); */
	
	$('#upload-file').on('change', function(){
		var reader = new FileReader();
		reader.onload = function(e) {
			//options.imgSrc = e.target.result;
			document.getElementById("headphoto").src=e.target.result;
		}
		reader.readAsDataURL(this.files[0]);
		//this.files = [];
	})
	/* $('#btnCrop').on('click', function(){
		var img = cropper.getDataURL();
		$('.cropped').html('');
		$('.cropped').append('<img src="'+img+'" align="absmiddle" style="width:64px;margin-top:4px;border-radius:64px;box-shadow:0px 0px 12px #7E7E7E;" ><p>64px*64px</p>');
		$('.cropped').append('<img src="'+img+'" align="absmiddle" style="width:128px;margin-top:4px;border-radius:128px;box-shadow:0px 0px 12px #7E7E7E;"><p>128px*128px</p>');
		$('.cropped').append('<img src="'+img+'" align="absmiddle" style="width:180px;margin-top:4px;border-radius:180px;box-shadow:0px 0px 12px #7E7E7E;"><p>180px*180px</p>');
	})
	$('#btnZoomIn').on('click', function(){
		cropper.zoomIn();
	})
	$('#btnZoomOut').on('click', function(){
		cropper.zoomOut();
	}) */
});
</script>        
</body>
</html>