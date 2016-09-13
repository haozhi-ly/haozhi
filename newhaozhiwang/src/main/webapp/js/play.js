//学习中心的js
$(function() {
	var cmid=window.location.href.split('=')[1];
	$.post("courseManage/getPlayByCmid", {"_method" : "POST",cmid :cmid},function(data){		
		if(data){
			$('#currentCourseName').html(data.title);  //加入课程时的课程名
			$('#breadcrumb').html(data.title);
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
	
	
	//查出授课老师相关信息
	$.post("courseManage/selectTeachInfo", {"_method" : "POST",cmid :cmid},function(data){
		if(data){
			$('.link-light ').html(data.user.uname);
			//$('#teachImg').attr("src",data.user.photo);
			$('#teachImg').attr("src","images/avatar.png");		
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
	
		 var cmid=window.location.href.split('=')[1];
	  //判断是否有用户登录 没有就不能进行评论
		$('#Smohan_FaceBox').bind("click",function(){
			 if(flag=="false"){
				 $('#login-modal').css('display','block');
				 $('#loadingDiv').css('display','block');
			 }
		 }); 
		//点击关闭登录框
		$('#close').bind("click",function(){
			$('#login-modal').css('display','none');
			$('#loadingDiv').css('display','none');
		});
		//点击关闭加入框
		$('#close2').bind("click",function(){
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
	  
		
		//右侧  课时 笔记 问答的切换
		count=0;
		$('#clearfix li').bind(
				"click",
				function() {	
					count+=1;
					/*if($(this).attr('class')=="active"){
						if(count%2==0){
							alert("进来了");
							$(this).removeClass("active");
							$('.learn-dashboard .dashboard-content .dashboard-body').css("width", "100%;");
							$('.learn-dashboard .toolbarhide .dashboard-toolbar').css("cssText", "right:-342px !important;");
						}
					}*/
					$(this).parent().children().removeClass("active");
					$(this).addClass("active"); //样式改变	
					$('.learn-dashboard .dashboard-content .dashboard-body')
							.css("width", "80%;");
					$('.learn-dashboard.toolbarhide .dashboard-toolbar').css(
							"cssText", "right:0px !important;");
					
					var str = this.innerHTML;
					if (str.indexOf("课时") >= 0) {
						$('#toolbar-1').css("display", "block");
						$('#toolbar-2').css("display", "none");
						$('#toolbar-3').css("display", "none");
						$.get("courseManage/getCourseManageByCmid/",{"_method":"GET","cmid":cmid},function(data){
							var courseManageStr = "";
							if(data){
								$.each(data,function(index,item){
									courseManageStr+='<li class="period lesson-item lesson-item-33117  item-active"><a'
													 +' href="page/play.jsp?cmid='+item.cmid+'" title="'+item.title+'"> <i'
													 +' class="es-icon es-icon-undone status-icon"></i> <span class="title">'
													 +' L'+item.courseseq+'：'+item.title+'</span>' 
													 +'<span class="course-type"> <i class="hz-icon icon-play-nobg"' 
													 +' title="" data-original-title="视频课程"></i>'
													 +'</span><span class="learning">学习中</span></a></li>';
									$('#course-item-list').html('').append( $(courseManageStr) );
								});
							}
						});
					} else if (str.indexOf("笔记") >= 0) {
						$('#toolbar-1').css("display", "none");
						$('#toolbar-2').css("display", "block");
						$('#toolbar-3').css("display", "none");
						 $.get("courseNote/getCourseNoteByCmid/",{"_method":"GET","cmid":cmid},function(data){
							 var noteStr="";
							 if(data){
								 $.each(data,function(index,item){ 
									 noteStr+='<li><div class="notes-img"><a class=" js-user-card"  href="javascript:void(0);"  title="">'
											+'<img class="avatar-mm" alt="'+item.user.uname+'" src="'+item.user.photo+'"></a></div>'
											+'<div class="notes-content"><span class="name"><a href="javascript:void(0);">'+item.user.uname+'</a>'
											+'</span><div class="content"><div class="short-content" style="display: block;">'+item.noteContent+'</div>'
											+'<div class="full-content" style="display: none;"><p>'+item.noteContent+'</p></div></div>'
											+'<div class="actions"><a class="show-full-btn" href="javascript:;" style="display: inline;">[展开全文]</a>'
											+'<a class="show-short-btn" style="display: none;" href="javascript:;">[收起全文]</a></div>'
											+'</div></li>';		
									$('#tab-notes-2').html("").append( $(noteStr) );
							 	});
							 }
						 });
					} else {
						$('#toolbar-1').css("display", "none");
						$('#toolbar-2').css("display", "none");
						$('#toolbar-3').css("display", "block");
						 $.get("courseQuestion/getQuestionbycmid/",{"_method":"GET","cmid":cmid},function(data){
							 var questionStr="";
							 if(data){
								 $.each(data,function(index,item){ 
									 questionStr+='<li><span>'+item.answercount+'回答</span><a href="javascript:void(0);"'
										 +'target="_black">'+item.cqcontent+'</a></li>';
									 $('#questionList').html("").append( $(questionStr) );
								 });
							 }
						 });
					}
					
					
				});
		//文本编辑器
		$('#editControls a')
				.click(
						function(e) {
							switch ($(this).data('role')) {
							case 'h1':
							case 'h2':
							case 'p':
								document.execCommand('formatBlock', false, '<'
										+ $(this).data('role') + '>');
								break;
							default:
								document.execCommand($(this).data('role'),
										false, null);
								break;
							}
					});
		
		//我的笔记 和同学笔记的切换
		$("#notes-options li").bind("click",function(){
			$(this).parent().children().removeClass("active");
			$(this).addClass("active"); //样式改变
			var str= this.innerHTML;
			if (str.indexOf("我的笔记") >= 0) {
				$('#tab-notes-1').css("display","block");
				$('#tab-notes-2').css("display","none");
			}else if(str.indexOf("同学笔记") >= 0){
				$('#tab-notes-1').css("display","none");
				$('#tab-notes-2').css("display","block");
			}
		});
	//
	$('#editor').bind("click",function(){
		if(flag=="false"){
			 $('#login-modal').css('display','block');
			 $('#loadingDiv').css('display','block');
		 }
	});
	//笔记保存
	$('#course_lesson-note-form-btn').bind("click",function(){
		var str=$('#editor').text();
		 $.post("studyCourse/countStudyCourseByUseridCmid/",{"userid":userid,"cmid":cmid},function(data){
			   if(data>0){
				   $.post("courseNote/addCourseNote",{"userid":userid,"cmid":cmid,"noteContent":str},function(data){
					   if(data==1){
						   alert("保存成功！！！");
						   $('#editor').html("");
					   }else{
						   alert("保存失败！请重新尝试");
					   }
				   });
			   }else{
				   $('#studyCurrentCourse').css('display','block');
				   $('#loadingDiv').css('display','block');
			   }
		 });
	});	
	
});

