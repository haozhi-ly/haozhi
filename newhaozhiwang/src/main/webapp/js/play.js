//学习中心的js
$(function() {
	var cmid=window.location.href.split('=')[1];
	$.post("courseManage/getPlayByCmid", {"_method" : "POST",cmid :cmid},function(data){		
		if(data){
			$('#currentCourseName').html(data.title);  //加入课程时的课程名
			if(data.type==1){
				$('#lesson-unpublished-content').css('display','none'); 
				$('#lesson-iframe-content').css('display','none');
				$('#lesson-text-content').css('display','block');
				$('#lesson-text').html("").append( $(data.pathOrContetn) );
			}else{
				$('#lesson-unpublished-content').css('display','none'); 
				$('#lesson-iframe-content').css('display','block');
				$('#lesson-text-content').css('display','none');
				$('#youku-player').attr("data",data.pathOrContetn);
			}
		}else{
			$('#lesson-unpublished-content').css('display','block'); 
			$('#lesson-iframe-content').css('display','none');
			$('#lesson-text-content').css('display','none');
		}
		
		if(data.cmintroduction){
			$('.words').html("").append( $(data.cmintroduction) );
		}else{
			str = "<h2 style='color:#666;'>该课程还未添加介绍</h2>";
			$('.words').html("").append( $(str) );
		}
	},"json");
	
	//回复	
/*	$("#comment-btn").bind("click",function(){
		var content = $("#comment").val();

		str= '<li id="item92627"><div class="userimg"><a class=" js-user-card" href="javaScript:void(0)" data-card-url="/user/2358982/card/show" data-user-id="2358982">'+
		'<img class="img-responsive" src="images/avatar.png" alt="珘珘"></a></div><div class="userInfo"><p class="head"><a href="javaScript:void(0)">珘珘</a><span>1天前</span></p>'+
		'<div class="body">'+content+'</div>'+
		'<div class="pull-right  "><a class="con" href="javascript:;">回复</a>'+
		'<a class="con" href="javascript:;"e">删除</a></div></div></li>';
										
		//$("#commentList").append(str);											
	    $("#comment").val(" ");		
	    $(str).insertBefore("#item92627");
	   // str.insertBefore("#foo");
	   
	});*/
	
	//查出授课老师相关信息
	$.post("courseManage/selectTeachInfo", {"_method" : "POST",cmid :cmid},function(data){
		if(data){
			$('.link-light ').html(data.user.uname);
			$('#teachImg').attr("src",data.user.photo);
			$('#teachImg').attr("alt",data.user.uname);
			$('#teach').html(data.teachCount);
			$('#fans').html(data.fansCount);
			$('.info').html(data.user.introdution);
		}
	});
	
	//查出新晋成员
	$.post("studyCourse/getStudyCourseByCmid", {"_method" : "POST",cmid :cmid},function(data){
		if(data){
			var str = "";
			$('.count').html( "("+data[0].memberCount+")" );
			$.each(data,function(index,item){
				str+='<li><a class=" js-user-card" href="page/person.jsp?userid='+item.user.userid+'"' 
					+'data-card-url="/user/2359723/card/show" data-user-id="2359723">'
					+'<img class="avatar-sm" src="images/avatar.png" alt="'+item.user.uname+'"></a>'
					+'<a href="page/person.jsp?userid='+item.user.userid+'" title="'+item.user.uname+'" class="name">'+item.user.uname+'</a></li>';
				$('#member').html("").append( $(str) );
			});
		}
	});
	
	
	//评论分页初始化
	$.post("courseAssess/getAssessCountByCmid/",{"_method":"POST",cmid:cmid},function(data){
		var page;
		var count=parseInt(data);
		if(count%5==0){
			page=count/5;
		}else{
			page=Math.floor((count/5)+1);
		}	
		$("#commenttcpage").createPage({
	        pageCount:page,
	        current:1,
	        backFn:function(p){
	            $.post("courseAssess/getAssessByCmidByPage/",{"p":p,"cmid":cmid},function(data){
	            	var contentstr="";
	            	$.each(data,function(index,item){     		
	            		contentstr+='<li id="item92627"><div class="userimg"><a class="js-user-card" href="page/person.jsp?'+item.user.userid+'"><img class="img-responsive" ';
	            			if(item.user.photo!=null){
	            				contentstr+="src='"+item.user.photo+"' ";
	            			}else{
	            				contentstr+="src='images/avatar.png' ";
	            			}
	            			contentstr+='alt="'+item.user.uname+'"></a></div><div class="userInfo">'
								+'<p class="head"><a href="#">'+item.user.uname+'</a><span>'+item.time+'</span></p>'
								+'<div class="body">'+item.content+'</div><div class="pull-right">'
								+'<a class="con" id="revert" href="javascript:;">回复</a>'
								+'<a class="con" id="delete" href="javascript:; style="display:block">删除</a>'
								+'</div></div></li>';	
	            			$("#commentList").html("").append($(contentstr));
	            			$('#commentList').replaceface($('#commentList').html());//替换表情
	            	});
	            	
	            },"json");
	        }
	    });
	 });
	
	var cmid=window.location.href.split('=')[1];
	 $.post("courseAssess/getAssessByCmidByPage/",{"p":1,"cmid":cmid},function(data){
     	var contentstr="";
     	if(data){
	     	$.each(data,function(index,item){     		
	     		contentstr+='<li id="item92627"><div class="userimg"><a class="js-user-card" href="page/person.jsp?userid='+item.user.userid+'"><img class="img-responsive" ';
	     			if(item.user.photo!=null){
	     				contentstr+="src='"+item.user.photo+"' ";
	     			}else{
	     				contentstr+="src='images/avatar.png' ";
	     			}
	     			contentstr+='alt="'+item.user.uname+'"></a></div><div class="userInfo">'
							+'<p class="head"><a href="#">'+item.user.uname+'</a><span>'+item.time+'</span></p>'
							+'<div class="body">'+item.content+'</div><div class="pull-right">'
							+'<a class="con" id="revert" href="javascript:;">回复</a>'
							+'<a class="con" id="delete" href="javascript:; style="display:block">删除</a>'
							+'</div></div></li>';	
	     			$("#commentList").html("").append($(contentstr));
	     			$('#commentList').replaceface($('#commentList').html());//替换表情
	     	});   
     	}
     },"json");
	 
	 var cmid=window.location.href.split('=')[1];
	 //推荐的课程
		 $.post("course/recommedCourseByCmid/",{"cmid":cmid},function(data){
			 var str="";
			 if(data){
				 $.each(data,function(index,item){ 
					 str+= '<div class="col-md-4 col-sm-6 "><div class="course-item"><div class="course-img"><img' 
					if(item.coursephoto==null){
					   str+='src="images/course.png"';
					}else{
					   str+='src="'+item.coursephoto+'"';
					}
					  str+='alt="sai基础教程" class=""><a href="page/joinproject.jsp?courseid='+item.courseid+'">'
						   +'<div class="mask"><span class="btn btn-primary">开始学习</span></div></a></div>'
						   +'<div class="course-info"><div class="title"><span class="label label-p">'+item.courseting+'</span>'
						   +'<a class="transition" href="page/joinproject.jsp?courseid='+item.courseid+'">'+item.ctitle+'</a>'
						   +'</div><div class="metas"><span>'+item.cview+'+浏览</span>/<span>'+item.memberCount+'学员</span>/<span>'+item.assessAvg+'评分</span></div>'
						   +'<div class="teacher text-o-show"><a class=" js-user-card" href="page/person.jsp?userid='+item.user.userid+'">'
						   +'<img class="avatar-ss " src="'+item.user.photo+'" alt="'+item.user.uname+'">'+item.user.uname+'</a>'
						   +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
					 
					  $("#recommedCourse").html("").append($(str));
				 });
			 }
		 });
		 
		
		 //发评论
		 $("a.face").smohanfacebox({
				Event : "click",	//触发事件	
				divid : "Smohan_FaceBox", //外层DIV ID
				textid : "Smohan_text" //文本框 ID
			});
			//解析表情  $('#Zones').replaceface($('#Zones').html());
	
			
	  //判断是否有用户登录 没有就不能进行评论
		$('#Smohan_FaceBox').bind("click",function(){
			 if(flag=="false"){
				 $('#login-modal').css('display','block');
				 $('#loadingDiv').css('display','block');
			 }
		 }); 
		//点击关闭登录框
		$('.close').bind("click",function(){
			$('#login-modal').css('display','none');
			$('#loadingDiv').css('display','none');
		});
		//点击关闭加入框
		$('.close2').bind("click",function(){
			$('#studyCurrentCourse').css('display','none');
			$('#loadingDiv').css('display','none');
		});
		
		//发发发
		$('#currentUname').html(uname);
		$('#comment-btn').click(function() {
			//查询当前用户是否已学习了该课程
		   $.post("studyCourse/countStudyCourseByUseridCmid/",{"userid":userid,"cmid":cmid},function(data){
			   if(data>0){
				   var con=$('#Smohan_text').val();
/*				   st =$(con).replaceface($(con).html());
				   alert(st);*/
				   $.post("courseAssess/addAssess/",{"userid":userid,"cmid":cmid,"content":con},function(data){
					   if(data==1){
						   
						 //评论分页初始化
						   var cmid=window.location.href.split('=')[1];
							$.post("courseAssess/getAssessCountByCmid/",{"_method":"POST",cmid:cmid},function(data){
								var page;
								var count=parseInt(data);
								if(count%5==0){
									page=count/5;
								}else{
									page=Math.floor((count/5)+1);
								}	
								$("#commenttcpage").createPage({
							        pageCount:page,
							        current:1,
							        backFn:function(p){
							            $.post("courseAssess/getAssessByCmidByPage/",{"p":p,"cmid":cmid},function(data){
							            	var contentstr="";
							            	
							            	$.each(data,function(index,item){     		
							            		contentstr+='<li id="item92627"><div class="userimg"><a class="js-user-card" href="page/person.jsp?'+item.user.userid+'"><img class="img-responsive" ';
							            			if(item.user.photo!=null){
							            				contentstr+="src='"+item.user.photo+"' ";
							            			}else{
							            				contentstr+="src='images/avatar.png' ";
							            			}
							            			contentstr+='alt="'+item.user.uname+'"></a></div><div class="userInfo">'
														+'<p class="head"><a href="#">'+item.user.uname+'</a><span>'+item.time+'</span></p>'
														+'<div class="body">'+item.content+'</div><div class="pull-right">'
														+'<a class="con" id="revert" href="javascript:;">回复</a>'
														+'<a class="con" id="delete" href="javascript:; style="display:block">删除</a>'
														+'</div></div></li>';	
							            			$("#commentList").html("").append($(contentstr));
							            			$('#commentList').replaceface($('#commentList').html());//替换表情
							            	});
							            	
							            },"json");
							        }
							    });
							 });
							
							var cmid=window.location.href.split('=')[1];
							 $.post("courseAssess/getAssessByCmidByPage/",{"p":1,"cmid":cmid},function(data){
						     	var contentstr="";
						     	if(data){
							     	$.each(data,function(index,item){     		
							     		contentstr+='<li id="item92627"><div class="userimg"><a class="js-user-card" href="page/person.jsp?userid='+item.user.userid+'"><img class="img-responsive" ';
							     			if(item.user.photo!=null){
							     				contentstr+="src='"+item.user.photo+"' ";
							     			}else{
							     				contentstr+="src='images/avatar.png' ";
							     			}
							     			contentstr+='alt="'+item.user.uname+'"></a></div><div class="userInfo">'
													+'<p class="head"><a href="#">'+item.user.uname+'</a><span>'+item.time+'</span></p>'
													+'<div class="body">'+item.content+'</div><div class="pull-right">'
													+'<a class="con" id="revert" href="javascript:;">回复</a>'
													+'<a class="con" id="delete" href="javascript:; style="display:block">删除</a>'
													+'</div></div></li>';	
							     			$("#commentList").html("").append($(contentstr));
							     			$('#commentList').replaceface($('#commentList').html());//替换表情
							     				
							     	});   
						     	}
						     },"json");
						//评论分割线	 
						 
					   }
				   });
			   }else{
				   $('#studyCurrentCourse').css('display','block');
				   $('#loadingDiv').css('display','block');
			   }
			   $('#Smohan_text').val("");
		   });
		}); 
	  
		$('#Smohan_text').bind("change",function(){
			alert("fkwh");
		})
	
});

