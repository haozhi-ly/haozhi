		
$(function(){
	
	 var ctid=window.location.href.split('=')[1];
	 if(ctid!=null){
		 
		// -------------------------------参考评论分割线-----------------------
		$.get("course/countCourseByCtid/",{"_method":"GET","ctid":ctid},function(data){
				var page;
				var count=parseInt(data);
				if(count%18==0){
					page=count/18;
				}else{
					page=Math.floor((count/18)+1);
				}
				$("#commenttcpage").css("display","block");
				$("#timecpage").css("display","none");
				$("#hostcpage").css("display","none");	
				$("#commenttcpage").createPage({
				    pageCount:page,
				    current:1,
				    backFn:function(p){
				        $.post("course/getCourseByCtid/",{"_method":"POST","p":p,"ctid":ctid},function(data){
				        	var str="";
					   		 if(data){
					   		 $.each(data,function(index,item){
					   			  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img" id="cimg"> <a href="page/joinproject.jsp?id='+item.courseid+'"> <img src="images/160148ccf620140008.jpg" alt="'+item.ctitle+'" class="">' 
					   				 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
					   		       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
					   		       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
					   		       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
					   		       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
					   			});
					   			$('#findCourse').html("").append( $(str) );
					   		 	} 
					   		 },"json");
				        }
				    });
				 });
		 $.post("course/getCourseByCtid/",{"_method":"POST","p":1,"ctid":ctid},function(data){	
			 var str="";
			 if(data){
			 $.each(data,function(index,item){
				  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img"> <a href="page/joinproject.jsp?id='+item.courseid+'"> <img src="images/160148ccf620140008.jpg" alt="sai基础教程" class="">' 
					 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
			       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
			       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1282433/" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
			       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
			       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
				});
				$('#findCourse').html("").append( $(str) );
			 }
		 },'json');
		 
		 $.post("course/getHostByCtid/"+ctid,{"_method":"POST"},function(data){	
			 var str="";
			 if(data){
			 $.each(data,function(index,item){
				  str+=' <li class="course-item col-md-12 col-xs-6"><div class="course-img"> <a href="page/joinproject.jsp?id='+item.courseid+'">'
					  +'<img src="images/065523b78450837537.jpg" alt="'+item.ctitle+'" class="" data-echo="http://f1.howzhi.com/default/2016/03-14/1045288563e3244992.jpg">'
					  +'</a> </div> <div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
					  +'<div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1637688/" data-card-url="/user/1637688/card/show" data-user-id="1637688">'
					  +'<img class="avatar-ss " src="images/11480117880b049054.jpg" alt="luemery">'+item.user.uname+'</a>'
					  +'<div class="price free pull-right"><span>免费</span></div></div></div></li>'
			});
				$('#hostCourse').html("").append( $(str) );
			  }
			},'json');	
	 }else{
		$.get("course/countCourseByCtid/",{"_method":"GET","ctid":0},function(data){
			var page;
			var count=parseInt(data);
			if(count%18==0){
				page=count/18;
			}else{
				page=Math.floor((count/18)+1);
			}
			$("#commenttcpage").css("display","block");
			$("#timecpage").css("display","none");
			$("#hostcpage").css("display","none");		
			$("#commenttcpage").createPage({
			    pageCount:page,
			    current:1,
			    backFn:function(p){
			        $.post("course/getAll/",{"_method":"POST","p":p},function(data){
			        	var str="";
				   		 if(data){
				   		 $.each(data,function(index,item){
				   			  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img" id="cimg"> <a href="page/joinproject.jsp?id='+item.courseid+'"> <img src="images/160148ccf620140008.jpg" alt="'+item.ctitle+'" class="">' 
				   				 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
				   		       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
				   		       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
				   		       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
				   		       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
				   			});
				   			$('#findCourse').html("").append( $(str) );
				   		 	} 
				   		 },"json");
			        }
			    });
			 });
			
	//获取所有课程
	$.post("course/getAll/",{"_method":"POST","p":1},function(data){
		var str="";
		 if(data){
		 $.each(data,function(index,item){
			  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img" id="cimg"> <a href="page/joinproject.jsp?id='+item.courseid+'"> <img src="images/160148ccf620140008.jpg" alt="'+item.ctitle+'" class="">' 
				 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
		       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
		       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
		       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
		       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
			});
			$('#findCourse').html("").append( $(str) );
		 }
	},"json");
	//查询热门的三门课程
	 $.post("course/getHostCourse/",{"_method":"POST"},function(data){	
		 var str="";
		 if(data){
		 $.each(data,function(index,item){
			  str+=' <li class="course-item col-md-12 col-xs-6"><div class="course-img"> <a href="page/joinproject.jsp?id='+item.courseid+'">'
				  +'<img src="images/065523b78450837537.jpg" alt="'+item.ctitle+'" class="" data-echo="http://f1.howzhi.com/default/2016/03-14/1045288563e3244992.jpg">'
				  +'</a> </div> <div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
				  +'<div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1637688/" data-card-url="/user/1637688/card/show" data-user-id="1637688">'
				  +'<img class="avatar-ss " src="images/11480117880b049054.jpg" alt="luemery">'+item.user.uname+'</a>'
				  +'<div class="price free pull-right"><span>免费</span></div></div></div></li>'
		});
			$('#hostCourse').html("").append( $(str) );
		  }
		},'json');
	 }
	
	
	$('#content-container li').bind("click",function(){
		 $(this).parent().children().removeClass("act first");  
		 $(this).addClass("act first"); 	  //样式改变
		 
		 var cctid=this.id;
		 ctid=this.id;
		 $.get("course/countCourseByCtid/",{"_method":"GET","ctid":cctid},function(data){
				var page;
				var count=parseInt(data);
				if(count%18==0){
					page=count/18;
				}else{
					page=Math.floor((count/18)+1);
				}
				$("#commenttcpage").css("display","block");
				$("#timecpage").css("display","none");
				$("#hostcpage").css("display","none");	
				$("#commenttcpage").createPage({
				    pageCount:page,
				    current:1,
				    backFn:function(p){
				        $.post("course/getCourseByCtid/",{"_method":"POST","p":p,"ctid":ctid},function(data){
				        	var str="";
					   		 if(data){
					   		 $.each(data,function(index,item){
					   			  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img" id="cimg"> <a href="page/joinproject.jsp?id='+item.courseid+'"> <img src="images/160148ccf620140008.jpg" alt="'+item.ctitle+'" class="">' 
					   				 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
					   		       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
					   		       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
					   		       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
					   		       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
					   			});
					   			$('#findCourse').html("").append( $(str) );
					   		 	} 
					   		 },"json");
				        }
				    });
				 });
		 $.post("course/getCourseByCtid/",{"_method":"POST","p":1,"ctid":ctid},function(data){	
			 var str="";
			 if(data){
			 $.each(data,function(index,item){
				  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img"> <a href="page/joinproject.jsp?id='+item.courseid+'"> <img src="images/160148ccf620140008.jpg" alt="sai基础教程" class="">' 
					 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
			       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
			       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1282433/" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
			       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
			       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
				});
				$('#findCourse').html("").append( $(str) );
			 }
		 },'json');
		 
		 $.post("course/getHostByCtid/"+ctid,{"_method":"POST"},function(data){	
			 var str="";
			 if(data){
			 $.each(data,function(index,item){
				  str+=' <li class="course-item col-md-12 col-xs-6"><div class="course-img"> <a href="page/joinproject.jsp?id='+item.courseid+'">'
					  +'<img src="images/065523b78450837537.jpg" alt="'+item.ctitle+'" class="" data-echo="http://f1.howzhi.com/default/2016/03-14/1045288563e3244992.jpg">'
					  +'</a> </div> <div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
					  +'<div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1637688/" data-card-url="/user/1637688/card/show" data-user-id="1637688">'
					  +'<img class="avatar-ss " src="images/11480117880b049054.jpg" alt="luemery">'+item.user.uname+'</a>'
					  +'<div class="price free pull-right"><span>免费</span></div></div></div></li>'
			});
				$('#hostCourse').html("").append( $(str) );
			  }
			},'json');		
	});
	 var ctid=window.location.href.split('=')[1];
	$('#sortNav a').bind("click",function(){
		 $(this).parent().parent().children().children().removeClass("act");  
		 $(this).addClass("act"); 	  //样式改变
		 var id = this.id;
		 var tid;
		 if(ctid!=null){
			 tid=ctid;
		 }else{
			 tid=0;
		 }
		 $.get("course/countCourseByCtid/",{"_method":"GET","ctid":tid},function(data){
				var page;
				var count=parseInt(data);
				if(count%18==0){
					page=count/18;
				}else{
					page=Math.floor((count/18)+1);
				}
				if(id==1){
				$("#commenttcpage").css("display","none");
				$("#hostcpage").css("display","none");
				$("#timecpage").css("display","block");
				$("#timecpage").createPage({
				    pageCount:page,
				    current:1,
				    backFn:function(p){
				        $.post("course/selectCourseByTime/",{"_method":"POST","p":p,"ctid":tid},function(data){
				        	var str="";
					   		 if(data){
					   		 $.each(data,function(index,item){
					   			  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img" id="cimg"> <a href="page/joinproject.jsp?id='+item.courseid+'"> <img src="images/160148ccf620140008.jpg" alt="'+item.ctitle+'" class="">' 
					   				 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
					   		       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
					   		       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
					   		       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
					   		       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
					   			
					   			$('#findCourse').html("").append( $(str) );
					   		 	});
					   		 	} 
					   		 },"json");
				        }
				    });
				}else if(id==2){
					$("#commenttcpage").css("display","none");
					$("#timecpage").css("display","none");
					$("#hostcpage").css("display","block");
					$("#hostcpage").createPage({
					    pageCount:page,
					    current:1,
					    backFn:function(p){
					        $.post("course/selectCourseByHost/",{"_method":"POST","p":p,"ctid":tid},function(data){
					        	var str="";
						   		 if(data){
						   		 $.each(data,function(index,item){
						   			  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img" id="cimg"> <a href="page/joinproject.jsp?id='+item.courseid+'"> <img src="images/160148ccf620140008.jpg" alt="'+item.ctitle+'" class="">' 
						   				 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
						   		       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
						   		       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
						   		       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
						   		       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
						   			
						   			$('#findCourse').html("").append( $(str) );
						   		 	});
						   		 	} 
						   		 },"json");
					        }
					    });
				}
			});
		 $.post("course/selectCourseBy/",{"_method":"POST","p":1,"ctid":tid,"id":id},function(data){	
			 var str="";
		   		 if(data){
		   		 $.each(data,function(index,item){
		   			  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img" id="cimg"> <a href="page/joinproject.jsp?id='+item.courseid+'"> <img src="images/160148ccf620140008.jpg" alt="'+item.ctitle+'" class="">' 
		   				 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="page/joinproject.jsp?id='+item.courseid+'">'+item.ctitle+'</a> </div>'
		   		       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
		   		       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
		   		       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
		   		       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
		   			
		   			$('#findCourse').html("").append( $(str) );
		   		 	});
		   		 	} 
		 },"json");
		 
	});
	
	
});

/*function showItem(id){
	var courseid = id;
	$.post("course/getCourseById/",{"_method":"POST",courseid:courseid},function(data){		
	},'json');
}*/
