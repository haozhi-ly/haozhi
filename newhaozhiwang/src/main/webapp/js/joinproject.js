		
$(function(){
	//显示页面所有信息
	//console.info();
	//var courseid=window.location.href.split('=')[1];
	var courseid=window.location.href.split('=')[1];
	$.post("course/getCourseById/",{"_method":"POST",courseid:courseid},function(data){	
		$('.breadcrumb a')[0].innerHTML = data.typename;
		$('.breadcrumb a')[1].innerHTML = data.ctitle;
		$('.img-responsive').attr("alt",data.ctitle);
		$('#title').html(data.ctitle);
		$('#ass').html(data.assessAvg);
		$('#asscount').html("("+data.assessCount+"人评价)");
		$('#c1').html("课时：("+data.courseCount+")"); 
		$('#c2').html("学员：("+data.userCount+")"); 
		$('#c3').html("浏览：("+data.cview+")"); 
		$('#courseinfo').html(data.cintrodution);
		$('#courseing').html(data.courseting);
		
	},"json");
	//根据courseid查询最新的前4条评论
	$.post("courseAssess/getAssesstopfour/",{"_method":"POST",courseid:courseid},function(data){
		var contentstr="";
		for(var i=0;i<data.length;i++){
			
			contentstr+="<li class='media'><div class='media-left'> <a class=' js-user-card' href='page/person.jsp?userid='"+data[i].user.userid+
			"'><img class='avatar-xs ' src='";
			if(data[i].user.photo==null){
     			contentstr+="images/avatar.png' alt='"+data[i].user.uname+"'/>";
     		}else{
     			contentstr+=""+data[i].user.photo+"' alt='"+data[i].user.uname+"'/>";
     		}
			contentstr+="</a></div>" +
			"<div class='comment-content media-body '>"+
			"<div class='name'><a class='link-light' href='page/person.jsp?userid="+data[i].user.userid+"'>"+
			data[i].user.uname+"</a><span class='day'>"+data[i].time.substring(0,10)+"</span>"+
			"</div><div class='content'>"+data[i].content+"</div></div></li>";
			
		}
		alert(contentstr);
		document.getElementById("mediacomment").innerHTML=contentstr
	},"json");
	
	
	//根据courseid查笔记   显示笔记数目
	 $.post("courseNote/getCourseNoteById/",{"_method":"POST",courseid:courseid},function(data){	
			$('#bj').html("("+data.length+")"); });
	
	//根据courseid查课时
	$.post("courseManage/getCourseManageById/",{"_method":"POST",courseid:courseid},function(data){	
		var str = "";
		$('#cm').html("("+data.length+")");
		if(data){
			$.each(data,function(index,item){
				 if(item.type==1){
					 str +='<li class="period lesson-item lesson-item-85093 " data-num="1" data-id="85093">'
						+'<a title="'+item.title+'" href="page/play.jsp?cmid='+item.cmid+'">'
					 	+'<i class="es-icon es-icon-undone status-icon"></i>'
					 	+'<span class="title">L'+item.courseseq+'：'+item.title+'</span><span class="course-type">'
					 	+'<i class="glyphicon glyphicon-picture" data-original-title="图文课程" title="" data-placement="top" data-toggle="tooltip"></i>'
					 	+'</span></a></li>';
				 }else{
					 str+='<li class="period lesson-item lesson-item-67383 " data-num="1" data-id="67383">'
						 +'<a title="'+item.title+'" href="page/play.jsp?cmid='+item.cmid+'">'
					 	 +'<i class="es-icon es-icon-undone status-icon"></i>'
					 	 +'<span class="title">L'+item.courseseq+'：'+item.title+'</span>'
					 	 +'<span class="date" title="视频时长75:10">(75:10)</span>'
					 	 +'<span class="course-type">'
					 	 +'<i class="glyphicon glyphicon-play" title="" data-placement="top" data-toggle="tooltip" data-original-title="视频课程"></i>'
					 	 +'</span></a></li>'	
				 }		
				 $('#course-item-list').html("").append( $(str) );			
		 });
		}
	},"json");
	
	//显示问答界面分页根据couresid初始化
	var courseid=window.location.href.split('=')[1];

	$.post("courseQuestion/getAllcourseQuestionbycourseid/",{"_method":"POST",courseid:courseid},function(data){
		console.info(data);
		$("#questionnumber").html("("+data+")");
		$("#questionnumbertwo").html(data);
		questionnumbertwo
		var page;
		var count=parseInt(data);
		console.info(count);
		if(count%20==0){
			page=count/20;
		}else{
			page=Math.floor((count/20)+1);
		}
		
		console.info(page);
		$("#qatcpage").createPage({
	        pageCount:page,
	        current:1,
	        backFn:function(p){
	            console.log(p);
	            $.post("courseQuestion/getAllQuestionbycmid/",{"p":p,"courseid":courseid},function(data){
	            	var contentstr="";
	             	for(var i=0;i<data.length;i++){
	             		contentstr+="<li><h4><span class='glyphicon glyphicon-question-sign' style='color: rgb(4, 188, 131);'></span><a class='js-nav'"+
	             		"href='javascript:showquestiondetail("+data[i].cqid+")'>"+data[i].cqcontent+
	             		"><span class='from'>来自L"+data[i].courseManage.courseseq+data[i].courseManage.title+
	             		"</span></a></h4><p> by <a class='link-light link-muted' href='page/person.jsp?userid="+data[i].user.userid+"'>"+
	             		data[i].user.uname+"</a> •"+data[i].answercount+"回答 • "+data[i].cqview+"游览</p></li>";
	             		
	             	}
	             	$("#questionAndAnswer").html($(contentstr))
	             },"json");
	        }
	    });
	});
		var courseid=window.location.href.split('=')[1];
		$.post("courseQuestion/getAllQuestionbycmid/",{"p":1,"courseid":courseid},function(data){
        	var contentstr="";
         	for(var i=0;i<data.length;i++){
         		contentstr+="<li><h4><span class='glyphicon glyphicon-question-sign' style='color: rgb(4, 188, 131);'></span><a class='js-nav'"+
         		"href='javascript:showquestiondetail("+data[i].cqid+")'>"+data[i].cqcontent+
         		"><span class='from'>来自L"+data[i].courseManage.courseseq+data[i].courseManage.title+
         		"</span></a></h4><p> by <a class='link-light link-muted' href='page/person.jsp?userid="+data[i].user.userid+"'>"+
         		data[i].user.uname+"</a> •"+data[i].answercount+"回答 • "+data[i].cqview+"游览</p></li>";
         	}
         	$("#questionAndAnswer").html($(contentstr))
         },"json");
		
	
	//显示学员分页初始化
	$.post("course/getAllStudentNumber/",{"_method":"POST",courseid:courseid},function(data){
		console.info(data);
		$("#Allstudent").html("("+data+")");
		var page;
		var count=parseInt(data);
		console.info(count);
		if(count%24==0){
			page=count/24;
		}else{
			page=Math.floor((count/24)+1);
		}
		
		console.info(page);
		$("#stcpage").createPage({
	        pageCount:page,
	        current:1,
	        backFn:function(p){
	            console.log(p);
	            $.post("course/getStudentsbypageDescTime/",{"p":p,"courseid":courseid},function(data){
	            	var contentstr="";
	             	for(var i=0;i<data.length;i++){
	             		
	             		contentstr+="<li><a class=' js-user-card' href='page/person.jsp?userid="+data[i].student.userid+"'"+
	             		"data-card-url='/user/2364232/card/show' data-user-id='"+data[i].student.userid+"'>"+
	             		"<img class='avatar-ll' src=";
	             		if(data[i].student.photo==null){
	             			contentstr+="'images/avatar.png' alt='"+data[i].student.uname+"'>";
	             	
	             		}else{
	             			contentstr+="'"+data[i].student.photo+"' alt='"+data[i].student.uname+"'>";
	             		}
	             		contentstr+="</a><p><a href='page/person.jsp?userid="+data[i].student.userid+"'>"+data[i].student.uname+"</a></p></li>"
	             		
	             		
	             	}
	             	var teacherphoto=data[0].user.photo!=null?data[0].user.photo:"images/avatar.png";
	             	$("#teacher").attr("href","page/person.jsp?userid="+data[0].user.userid);
	             	$("#teacherimg").attr("src",teacherphoto);
	             	$("#teachername").html(data[0].user.uname);
	             	document.getElementById("studentlist").innerHTML=contentstr;
	             	
	             },"json");
	        }
	    });
	});
		var courseid=window.location.href.split('=')[1];
		 $.post("course/getStudentsbypageDescTime/",{"p":1,"courseid":courseid},function(data){
         	var contentstr="";
         	
         	for(var i=0;i<data.length;i++){
         		
         		contentstr+="<li><a class=' js-user-card' href='page/person.jsp?userid="+data[i].student.userid+"'"+
         		"data-card-url='/user/2364232/card/show' data-user-id='"+data[i].student.userid+"'>"+
         		"<img class='avatar-ll' src=";
         		if(data[i].student.photo==null){
         			contentstr+="'images/avatar.png' alt='"+data[i].student.uname+"'>";
         	
         		}else{
         			contentstr+="'"+data[i].student.photo+"' alt='"+data[i].student.uname+"'>";
         		}
         		contentstr+="</a><p><a href='page/person.jsp?userid="+data[i].student.userid+"'>"+data[i].student.uname+"</a></p></li>"
         		
         		
         	}
         	var teacherphoto=data[0].user.photo!=null?data[0].user.photo:"images/avatar.png";
         	$("#teacher").attr("href","page/person.jsp?userid="+data[0].user.userid);
         	$("#teacherimg").attr("src",teacherphoto);
         	$("#teachername").html(data[0].user.uname);
         	document.getElementById("studentlist").innerHTML=contentstr;
         	
         },"json");
		
		
		
	//评论分页初始化
	$.post("courseAssess/CMcountbycourseid/",{"_method":"POST",courseid:courseid},function(data){
		console.info(data);
		$("#Allcomment").html("("+data+")");
		var page;
		var count=parseInt(data);
		console.info(count);
		if(count%20==0){
			page=count/20;
		}else{
			page=Math.floor((count/20)+1);
		}
		
		console.info(page);
		$("#commenttcpage").createPage({
	        pageCount:page,
	        current:1,
	        backFn:function(p){
	            console.log(p);
	            $.post("courseAssess/getAssessbypageDescTime/",{"p":p,"courseid":courseid},function(data){
	            	var contentstr="";
	            	for(var i=0;i<data.length;i++){
	            		
	            		contentstr+="<li><div class='notes-img'> <a class=' js-user-card' href='#'>" +
	            				" <img class='avatar-sm' ";
	            		console.info(data[i].user.photo);
	            			if(data[i].user.photo!=null){
	            				contentstr+="src='"+data[i].user.photo+"'>";
	            			}else{
	            				contentstr+="src='images/avatar.png'>";
	            			}
	            			contentstr+="</a></div> <div class='notes-content'><h4>发布在课时<a>"+data[i].courseManage.title+"</a></h4>"
	            			+"<div class='body'>"+data[i].content+"</div>"+
	            			"<div class='metas'><span class='name'>by <a href='javascript:;'>"+data[i].user.uname+"</a></span>"+
	            			"<span class='time'>"+data[i].time+"</span></div></div></li>"
	            	
	            	}
	            	$("#commentcontent").html($(contentstr));
	            },"json");
	        }
	    });
		
		var courseid=window.location.href.split('=')[1];
		$.post("courseAssess/getAssessbypageDescTime/",{"p":1,"courseid":courseid},function(data){
        	var contentstr="";
        	for(var i=0;i<data.length;i++){
        		
        		contentstr+="<li><div class='notes-img'> <a class=' js-user-card' href='#'>" +
        				" <img class='avatar-sm' ";
        		console.info(data[i].user.photo);
        			if(data[i].user.photo!=null){
        				contentstr+="src='"+data[i].user.photo+"'>";
        			}else{
        				contentstr+="src='images/avatar.png'>";
        			}
        			contentstr+="</a></div> <div class='notes-content'><h4>发布在课时<a>"+data[i].courseManage.title+"</a></h4>"
        			+"<div class='body'>"+data[i].content+"</div>"+
        			"<div class='metas'><span class='name'>by <a href='javascript:;'>"+data[i].user.uname+"</a></span>"+
        			"<span class='time'>"+data[i].time+"</span></div></div></li>"
        		
        	}
        	$("#commentcontent").html($(contentstr));
        },"json");
	
	
	
	//点击关闭
	$('.close').bind("click",function(){
		$('#login-modal').css('display','none');
		$('#loadingDiv').css('display','none');
	});
	
	//切换块  
	$('#nav li').bind("click",function(){
		 $(this).parent().children().removeClass("active");  
		 $(this).addClass("active"); 	  //样式改变	 
		 var str = this.innerText;
		 if(str.indexOf("简介")>=0){
			 $('#courseInfo').css('display', 'block'); 
			 $('#courselist').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'none');
		 }else if(str.indexOf("课时")>=0){
			 $('#courselist').css('display', 'block'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'none');
			 
			 var courseid=window.location.href.split('=')[1];
			//根据courseid查课时
			 var courseid=window.location.href.split('=')[1];
				$.post("courseManage/getCourseManageById/",{"_method":"POST",courseid:courseid},function(data){	
					var str = "";
					if(data){
						$.each(data,function(index,item){
							 if(item.type==1){
								 str +='<li class="period lesson-item lesson-item-85093 " data-num="1" data-id="85093">'
									+'<a title="'+item.title+'" href="page/play.jsp?cmid='+item.cmid+'">'
								 	+'<i class="es-icon es-icon-undone status-icon"></i>'
								 	+'<span class="title">L'+item.courseseq+'：'+item.title+'</span><span class="course-type">'
								 	+'<i class="glyphicon glyphicon-picture" data-original-title="图文课程" title="" data-placement="top" data-toggle="tooltip"></i>'
								 	+'</span></a></li>';
							 }else{
								 str+='<li class="period lesson-item lesson-item-67383 " data-num="1" data-id="67383">'
									 +'<a title="'+item.title+'" href="page/play.jsp?cmid='+item.cmid+'">'
								 	 +'<i class="es-icon es-icon-undone status-icon"></i>'
								 	 +'<span class="title">L'+item.courseseq+'：'+item.title+'</span>'
								 	 +'<span class="date" title="视频时长75:10">(75:10)</span>'
								 	 +'<span class="course-type">'
								 	 +'<i class="glyphicon glyphicon-play" title="" data-placement="top" data-toggle="tooltip" data-original-title="视频课程"></i>'
								 	 +'</span></a></li>'	
							 }	
							 $('#courselist').html("").append( $(str) );			
					 });
					}
				});	
		 }else if(str.indexOf("笔记")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'block');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'none');
			 
			 var courseid=window.location.href.split('=')[1];
			 //根据courseid查笔记  
			 $.post("courseNote/getCourseNoteById/",{"_method":"POST",courseid:courseid},function(data){	
					var str = "";
					if(data){
						$.each(data,function(index,item){
							str+='<li class="clearfix"><div class="notes-img"><a class=" js-user-card"'
								+'href="javascript:void(0);" data-card-url="/user/2362180/card/show" data-user-id="2362180">'
								+'<img class="avatar-sm" src="images/avatar.png" alt="'+item.user.uname+'"></a></div>'
								+'<div class="notes-content"><h4><a href="javascript:void(0);" class="title">'+item.title+' </a></h4><p>'+item.noteContent+'</p>'
								+'<div class="metas"><span class="name">by <a href="javascrit:;">'+item.user.uname+'</a></span> <span'
								+'class="count pull-right"> <a href="javascript:;"data-role="like" data-like-url="/course/note/43065/like">'
								+'<i class="glyphicon glyphicon-thumbs-up" title="点我支持一下笔记的作者"></i>1</a> <a style="display: none" title="您已经支持过该笔记">' 
								+'<i class="glyphicon glyphicon-thumbs-up"></i><span class="newNoteLikeNumxxxxx">1</span></a>'
								+'</span></div></div></li>';
							
							$('#noteslist').html("").append( $(str) );
						});					
					}
			 });
		 }else if(str.indexOf("问答")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'block');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'none');
		 }else if(str.indexOf("学员")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'block');
			 $('#courseAssess').css('display', 'none');
		 }else if(str.indexOf("评论")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'block');
			 
			 var courseid=window.location.href.split('=')[1];
			
		 }
		  
	});
	
	var courseid=window.location.href.split('=')[1];
	//根据courseid查笔记   右侧显示最新两条
	 $.post("courseNote/getCourseNoteById/",{"_method":"POST",courseid:courseid},function(data){	
			var str = "";
			var count =0;
			if(data){
				$.each(data,function(index,item){
					 count +=1;
					if(count<3){
						str+='<li><h4><a href="javascript:void(0);"><iclass="glyphicon glyphicon-pencil"></i>'+item.title+'</a>'
							 +'</h4> <span>'+item.noteContent+'</span></li>';	
					}
					$('#rightNote').html("").append( $(str) );
				});					
			}
	 }); 
		
	
});
});
	


function join(){	
	var st = $('.color-gray-one').val();
	if(st == ""){
		$('#login-modal').css('display','block');
		$('#loadingDiv').css('display','block');
	}
}


