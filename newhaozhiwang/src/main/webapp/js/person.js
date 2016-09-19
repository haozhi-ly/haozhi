$(function(){
	var userid=$('#toggle img').attr("id");
	$.post("studyCourse/personCourse",{"_method":"POST","userid":userid},function(data){
		var listStr="";
		for(var i=0;i<data.length;i++){
			listStr+='<div class="col-md-4 col-sm-6 " >';
			listStr+='<div class="course-item">';
			listStr+='<div class="course-img">';
			listStr+='<img src="images/160148ccf620140008.jpg" alt="'+data[i].ctitle+'" class="">';
			listStr+='<div class="mask"><a href="javaScript:void(0);"> <span class="btn btn-primary">开始学习</span></a></div></div>';
			listStr+='<div class="course-info">';
			listStr+='<div class="title">';
			listStr+='<span class="label label-p">'+data[i].typename+'</span> <a class="transition" href="javaScript:void(0);">'+data[i].ctitle+'</a></div>';
			listStr+='<div class="metas"><span>'+data[i].cview+'浏览</span>/ <span>'+data[i].memberCount+'学员</span>/ <span>'+data[i].assessAvg+'评分</span></div>';
			listStr+='<div class="teacher text-o-show">';
			listStr+='<a class=" js-user-card" href="javaScript:void(0);"';
			listStr+='data-card-url="/user/1931873/card/show" data-user-id="'+data[i].user.userid+'">';
			listStr+='<img class="avatar-ss " src="images/105454e6cdc9246475.jpg" alt="'+data[i].user.uname+'"> '+data[i].user.uname+'</a>';
			listStr+='<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
		}
		$("#course-item").html(listStr);
	},"json");
	
	
	$.post("studyCourse/personNote",{"_method":"POST","userid":userid},function(data){
		var listStr="";
		if(data){
			listStr+='<div class="classroom-item row">';
			for(var i=0;i<data.length;i++){
				
				listStr+='<div class="col-md-6">';
				listStr+='<div class=" home-out under-line">';
				listStr+='<h4><i class="fa fa-pencil"></i> 来自 <a class="first"';
				listStr+='href="/note/43180">'+data[i].courseManage.title+'</a> <a class="pull-right last"';
				listStr+='href="javascript:;"> <i class="fa fa-heart-o"></i> (0)</a></h4>';
				listStr+='<div class="f-content notes-style">'+data[i].noteContent+'</div></div></div>';
			}
			listStr+='</div>';
		}else{
			listStr+='<div class="empty">ta没有公开的笔记</div>';
		}
		$("#personNote").html(listStr);
	},"json");
	
	
	$.post("attention/attentionInfo",{"_method":"POST","userid":userid},function(data){
		var listStr="";
		for(var i=0;i<data.length;i++){
			listStr+='<li><a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="'+data[i].user.userid+'">';
			listStr+='<img class="avatar-sm" src="images/1453371e5503236335.jpg" alt="'+data[i].user.uname+'">';
			listStr+='</a> <a href="http://www.howzhi.com/u/5759/" class="name">'+data[i].user.uname+'</a></li>';
		}
		$("#home-attent").html(listStr);
	},"json");
	
	$.post("studyCourse/courseCount",{"_method":"POST","userid":userid},function(data){
		$("#courseCount").html(data);
	},"json");
	
	$.post("studyCourse/noteCount",{"_method":"POST","userid":userid},function(data){
		$("#noteCount").html(data);
	},"json");
	
	$.post("attention/attentionCount",{"_method":"POST","userid":userid},function(data){
		$("#attentionCount").html("关注（"+data+"）");
	},"json");
	
	$.post("attention/fansCount",{"_method":"POST","userid":userid},function(data){
		$("#fansCount").html("粉丝（"+data+"）");
	},"json");
	
	$("#fansCount").bind("mouseover",function(){
		$("#attentionCount").removeClass("first active");
		$("#attentionCount").addClass("first");
		$(this).addClass("pull-right active");
		$.post("attention/fansInfo",{"_method":"POST","userid":userid},function(data){
			var listStr="";
			for(var i=0;i<data.length;i++){
				listStr+='<li><a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="'+data[i].user.userid+'">';
				listStr+='<img class="avatar-sm" src="images/1453371e5503236335.jpg" alt="'+data[i].user.uname+'">';
				listStr+='</a> <a href="http://www.howzhi.com/u/5759/" class="name">'+data[i].user.uname+'</a></li>';
			}
			$("#home-attent").html(listStr);
		},"json");
	});
	
	
	$("#attentionCount").bind("mouseover",function(){
		$("#fansCount").removeClass("pull-right active");
		$("#fansCount").addClass("pull-right");
		$(this).removeClass("first");
		$(this).addClass("first active");
		$.post("attention/attentionInfo",{"_method":"POST","userid":userid},function(data){
			var listStr="";
			for(var i=0;i<data.length;i++){
				listStr+='<li><a class=" js-user-card" href="http://www.howzhi.com/u/5759/" data-card-url="/user/5759/card/show" data-user-id="'+data[i].user.userid+'">';
				listStr+='<img class="avatar-sm" src="images/1453371e5503236335.jpg" alt="'+data[i].user.uname+'">';
				listStr+='</a> <a href="http://www.howzhi.com/u/5759/" class="name">'+data[i].user.uname+'</a></li>';
			}
			$("#home-attent").html(listStr);
		},"json");
	});
	
	
	//获取用户在教的课程
	$("#teaching").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		$.post("studyCourse/teachingCourse",{"_method":"POST","userid":userid},function(data){
			var listStr="";
			listStr+='<div class="flat myhz-course"> '; 
			listStr+='<h3>我的在教课程</h3>';
			listStr+='<div class="course phPublic-course">';
			listStr+=' <div class="section-body">';
			listStr+='<div class="row">';
				if(data.length!=0){
					for(var i=0;i<data.length;i++){
						listStr+='<div class="col-md-4 col-sm-6">';
						listStr+='<div class="course-item">';
						listStr+='<div class="course-img">';
						listStr+='<a href="http://www.howzhi.com/course/153/">';
						listStr+='<img src="images/160148ccf620140008.jpg" class="img-responsive" alt="'+data[i].ctitle+'">';
						listStr+='<span class="load" style="width:0%"></span>';
						listStr+='<div class="image-overlay"></div></a>';
						listStr+='<span class="pere">0%</span></div>';
						listStr+='<div class="course-info">';
						listStr+='<div class="title"><span class="label label-p">'+data[i].typename+'</span>';
						listStr+='<a class="transition" href="http://www.howzhi.com/course/153/">'+data[i].ctitle+'</a></div>';
						listStr+='<div class="metas"><span><a>'+data[i].cview+'</a>浏览</span>/<span><a>'+data[i].memberCount+'</a>学员</span>/<span><a>'+data[i].assessAvg+'</a>评分</span></div>';
						listStr+='<div class="teacher"><a class=" js-user-card" href="http://www.howzhi.com/u/1400247/" data-card-url="/user/1400247/card/show" data-user-id="'+data[i].user.userid+'">';
						listStr+='<img class="avatar-ss " src="images/1453371e5503236335.jpg" 　alt="'+data[i].user.uname+'">'+data[i].user.uname+'</a></div></div></div></div>';
					}
				}else{
					listStr+='<div class="empty"><i class="es-icon es-icon-locallibrary"></i>ta还没有教授任何课程</div>';
				}
			listStr+='</div></div></div>';
			$("#replaceable").html(listStr);
	},"json");
	});
	
	
	//获取用户在学的课程
	$("#studying").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		$.post("studyCourse/personCourse",{"_method":"POST","userid":userid},function(data){
			var listStr="";
			listStr+='<div class="flat myhz-course">'; 
			listStr+='<h3>我的在学课程';
			listStr+='<a href="javaScript:void(0);" class="active">学习中 </a>';
			listStr+='<a href="javaScript:void(0);">已学完 </a></h3>';
			listStr+='<div class="course phPublic-course">';
			listStr+='<div class="section-body">';
			listStr+='<div class="row">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					listStr+='<div class="col-md-4 col-sm-6">';
					listStr+='<div class="course-item">';
					listStr+='<div class="course-img">';
					listStr+='<a href="http://www.howzhi.com/course/153/">';
					listStr+='<img src="images/160148ccf620140008.jpg" class="img-responsive" alt="'+data[i].ctitle+'">';
					listStr+='<span class="load" style="width:0%"></span>';
					listStr+='<div class="image-overlay"></div></a>';
					listStr+='<span class="pere">0%</span></div>';
					listStr+='<div class="course-info">';
					listStr+='<div class="title"><span class="label label-p">'+data[i].typename+'</span>';
					listStr+='<a class="transition" href="http://www.howzhi.com/course/153/">'+data[i].ctitle+'</a></div>';
					listStr+='<div class="metas"><span><a>'+data[i].cview+'</a>浏览</span>/<span><a>'+data[i].memberCount+'</a>学员</span>/<span><a>'+data[i].assessAvg+'</a>评分</span></div>';
					listStr+='<div class="teacher"><a class=" js-user-card" href="http://www.howzhi.com/u/1400247/" data-card-url="/user/1400247/card/show" data-user-id="'+data[i].user.userid+'">';
					listStr+='<img class="avatar-ss " src="images/1453371e5503236335.jpg" 　alt="'+data[i].user.uname+'">'+data[i].user.uname+'</a></div></div></div></div>';
				}
			}else{
				listStr+='<div class="empty"><i class="es-icon es-icon-locallibrary"></i>ta还没有参加任何课程</div>';
			}
			listStr+='</div></div></div>';
		$("#replaceable").html(listStr);
	},"json");
	});
	
	//参加的小组
	/*$("#group").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		$.post("groups/getAllGroup",{"_method":"POST","userid":userid},function(data){
			var listStr="";
			listStr+='<div class="myhz-group flat">'; 
			listStr+='<h3>参加的小组</h3>';
			listStr+='<div class="group-item course-in">';
			listStr+='<ul class="course-in-ul clearfix">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					listStr+='<li>';
					listStr+='<a href="http://www.howzhi.com/group/221/"><img src=""></a>';
					listStr+='<p> <a href="http://www.howzhi.com/group/31/">名校公开课</a></p></li>';
				}
			}else{
				listStr+=' <li class="empty"><i class="es-icon es-icon-forum"></i>TA没有参加任何小组！</li>';
			}
			listStr+='</ul></div></div>';
		$("#replaceable").html(listStr);
	},"json");
	});*/
	
	
	//我的笔记
	$("#notes").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		$.post("studyCourse/personNote",{"_method":"POST","userid":userid},function(data){
			var listStr="";
			listStr+='<div class="notes flat">'; 
			listStr+='<div class="section-header"><h2>The_free的笔记</h2></div>';
			listStr+='<div class="section-body">';
			listStr+='<div class="classroom-item row">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					listStr+='<div class="col-md-6">';
					listStr+='<div class=" home-out under-line">';
					listStr+='<h4><i class="fa fa-pencil"></i> 来自 <a class="first"';
					listStr+='href="/note/43180">'+data[i].courseManage.title+'</a> <a class="pull-right last"';
					listStr+='href="javascript:;"> <i class="fa fa-heart-o"></i> (0)</a></h4>';
					listStr+='<div class="f-content notes-style">'+data[i].noteContent+'</div></div></div>';
				}
			}else{
				listStr+=' <li class="empty"><i class="es-icon es-icon-forum"></i>TA没有参加任何小组！</li>';
			}
			listStr+='</div></div></div></div>';
		$("#replaceable").html(listStr);
	},"json");
	});
});
	

