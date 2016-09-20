$(function(){
	var userid=$('#toggle img').attr("id");
	/*var userid=window.location.href.split('=')[1];
	if(userid != null || userid != undefined || userid != ''){
		userid=window.location.href.split('=')[1];
	}else{
		userid=$('#toggle img').attr("id");
	}*/
	
	$.post("studyCourse/personCourse",{"_method":"POST","userid":userid},function(data){
		var listStr="";
		if(data.length!=0){
			for(var i=0;i<data.length;i++){
				listStr+='<div class="col-md-4 col-sm-6 " >';
				listStr+='<div class="course-item">';
				listStr+='<div class="course-img">';
				listStr+='<img src="images/160148ccf620140008.jpg" alt="'+data[i].ctitle+'" class="">';
				listStr+='<div class="mask"><a href="page/joinproject.jsp?courseid='+data[i].courseid+'"> <span class="btn btn-primary">开始学习</span></a></div></div>';
				listStr+='<div class="course-info">';
				listStr+='<div class="title">';
				listStr+='<span class="label label-p">'+data[i].typename+'</span> <a class="transition" href="page/joinproject.jsp?courseid='+data[i].courseid+'">'+data[i].ctitle+'</a></div>';
				listStr+='<div class="metas"><span>'+data[i].cview+'浏览</span>/ <span>'+data[i].memberCount+'学员</span>/ <span>'+data[i].assessAvg+'评分</span></div>';
				listStr+='<div class="teacher text-o-show">';
				listStr+='<a class=" js-user-card" href="javaScript:void(0);"';
				listStr+='data-card-url="/user/1931873/card/show" data-user-id="'+data[i].user.userid+'">';
				listStr+='<img class="avatar-ss " src="images/105454e6cdc9246475.jpg" alt="'+data[i].user.uname+'"> '+data[i].user.uname+'</a>';
				listStr+='<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
			}
		}else{
			listStr+='<div class="empty"><i class="es-icon es-icon-locallibrary"></i>ta还没有参加任何课程</div>';
		}
		
		$("#course-item").html(listStr);
	},"json");
	
	
	$.post("studyCourse/personNote",{"_method":"POST","userid":userid},function(data){
		var listStr="";
		if(data.length!=0){
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
						listStr+='<a href="javaScript:void(0);">';
						listStr+='<img src="images/160148ccf620140008.jpg" class="img-responsive" alt="'+data[i].ctitle+'">';
						listStr+='<span class="load" style="width:0%"></span>';
						listStr+='<div class="image-overlay"></div></a>';
						listStr+='<span class="pere">0%</span></div>';
						listStr+='<div class="course-info">';
						listStr+='<div class="title"><span class="label label-p">'+data[i].typename+'</span>';
						listStr+='<a class="transition" href="javaScript:void(0);">'+data[i].ctitle+'</a></div>';
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
					listStr+='<a href="page/joinproject.jsp?courseid='+data[i].courseid+'">';					listStr+='<img src="images/160148ccf620140008.jpg" class="img-responsive" alt="'+data[i].ctitle+'">';
					listStr+='<span class="load" style="width:0%"></span>';
					listStr+='<div class="image-overlay"></div></a>';
					//console.info(data[i].studyPeriodcount/data[i].totalCm);
					if(data[i].totalCm==0){
						data[i].totalCm=1;
					}
					listStr+='<span class="pere">'+(data[i].studyPeriodcount/data[i].totalCm).toFixed(2)*100+'%</span></div>';
					listStr+='<div class="course-info">';
					listStr+='<div class="title"><span class="label label-p">'+data[i].typename+'</span>';
					listStr+='<a class="transition" href="page/joinproject.jsp?courseid='+data[i].courseid+'">'+data[i].ctitle+'</a></div>';
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
	$("#group").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		var userid=$('#toggle img').attr("id");
		$.post("groups/getAllGroup",{"_method":"POST"},function(data){
			var listStr="";
			listStr+='<div class="myhz-group flat">'; 
			listStr+='<h3>参加的小组</h3>';
			listStr+='<div class="group-item course-in">';
			listStr+='<ul class="course-in-ul clearfix">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					var strs= new Array(); 
					var groupnumber=data[i].groupnumber;
					strs=groupnumber.split(",")
					for(var j=0;j<strs.length;j++){
						if(strs[j]==userid){
							listStr+='<li>';
							listStr+='<a href="page/groupIntroduce.jsp?groupname='+data[i].groupname+'&userid='+userid+'"><img src=""></a>';
							listStr+='<p><a href="page/groupIntroduce.jsp?groupname='+data[i].groupname+'&userid='+userid+'">'+data[i].groupname+'</a></p></li>';
						}
					}
					
				}
			}else{
				listStr+=' <li class="empty"><i class="es-icon es-icon-forum"></i>TA没有参加任何小组！</li>';
			}
			listStr+='</ul></div></div>';
		$("#replaceable").html(listStr);
	},"json");
	});
	
	
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
					listStr+='href="page/joinproject.jsp?courseid='+data[i].courseManage.courseid+'">'+data[i].courseManage.title+'</a> <a class="pull-right last"';
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
	
	//我的问题
	$("#question").bind("click",function(){
		$("#nav-mian").children().removeClass("active");
		$(this).addClass("active");
		$.post("courseQuestion/myQuestion",{"_method":"POST","userid":userid},function(data){
			var listStr="";
			listStr+='<div class="flat myhz-question"> ';
			listStr+='<h3>The_free的提问';
			listStr+='<a href="javaScript:void(0);" class="active">提问</a></h3>';
			listStr+='<ul class="course-in-ul">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					listStr+='<li><div class="user-Img">';
					listStr+='<a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/2358985/card/show" data-user-id="'+data[i].user.userid+'">';
					listStr+='<img class="avatar-mm" src="images/1453371e5503236335.jpg" alt="'+data[i].user.uname+'"></a></div>';
					listStr+='<div class="user-content"><h4><a href="http://www.howzhi.com/question/57627">'+data[i].cqcontent+'</a>';
					listStr+='<span class="from">来自<a href="http://www.howzhi.com/course/1442/"></a></span>';
					listStr+='</h4><p>by '+data[i].cqcontent+' • 0问题</p> </div> </li>';
				}
			}else{
				listStr+=' <li class="empty"><i class="es-icon es-icon-forum"></i>TA还没有提出任何疑问！</li>';
			}
			listStr+='</ul></div></div>';
		$("#replaceable").html(listStr);
	},"json");
	});
	
	//我的回答
	$("#answer").bind("click",function(){
		$("#nav-mian").children().children().removeClass("active");
		$(this).addClass("active");
		$.post("courseAnswer/myAnswer",{"_method":"POST","userid":userid},function(data){
			var listStr="";
			listStr+='<div class="flat myhz-question">';
			listStr+='<h3>The_free答过的问题';
			listStr+='<a href="javaScript:void(0);" class="active">答过的问题</a></h3>';
			listStr+='<ul class="course-in-ul" id="quesOranswer">';
			if(data.length!=0){
				for(var i=0;i<data.length;i++){
					listStr+='<li><div class="user-Img">';
					listStr+='<a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/2358985/card/show" data-user-id="'+data[i].user.userid+'">';
					listStr+='<img class="avatar-mm" src="" alt="'+data[i].user.uname+'"></a></div>';
					listStr+='<div class="user-content"><h4><a href="http://www.howzhi.com/question/57627">'+data[i].cqcontent+'</a>';
					listStr+='<span class="from">来自<a href="http://www.howzhi.com/course/1442/"></a></span>';
					listStr+='</h4><p>by '+data[i].user.uname+' • 0回答</p> </div> </li>';
				}
			}else{
				listStr+=' <li class="empty"><i class="es-icon es-icon-forum"></i>TA还没有回答任何问题！</li>';
			}
			listStr+='</ul></div></div>';
		$("#replaceable").html(listStr);
	},"json");
	});
	
	
	
});
	

