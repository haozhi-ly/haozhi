$(function(){
	//显示页面所有信息
	var courseid=window.location.href.split('=')[1];
	$.post("course/getCourseById/",{"_method":"POST",courseid:courseid},function(data){	
		$('.breadcrumb a')[0].innerHTML = data.typename;
		$('.breadcrumb a')[1].innerHTML = data.ctitle;
		$('.img-responsive').attr("alt",data.ctitle);
		$('#title').html(data.ctitle);
		$('#ass').html(Math.floor(data.assessAvg));
		if(data.user.photo!=null){
			$("#tphoto").attr("src",data.user.photo);
			$("#teacherimg").attr("src",data.user.photo);
		}
		$("#underimg").attr("href","page/person.jsp?userid="+data.user.userid);
		$("#teacher").attr("href","page/person.jsp?userid="+data.user.userid);
		$("#teacher").attr("data-id",data.user.userid);
		$("#tname").attr("href","page/person.jsp?userid="+data.user.userid);
		$("#Tmsg").attr("data-id",data.user.userid);
		$("#Tmsg").attr("href","page/person.jsp?userid="+data.user.userid);
		
		$("#teachername").html(data.user.uname);
		$("#teachername").attr("href","page/person.jsp?userid="+data.user.userid);
		
		$("#tname").html(data.user.uname);
		$("#teachnumber").html(data.teachnumber);
		$("#fans").html(data.beattentionnumber);
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
			
			contentstr+="<li class='media'><div class='media-left'> <a class=' js-user-card' href='page/person.jsp?userid="+data[i].user.userid+
			"' data-id='"+data[i].user.userid+"'><img class='avatar-xs ' src='";
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

		document.getElementById("mediacomment").innerHTML=contentstr
		$('#mediacomment').replaceface($('#mediacomment').html());//替换表情

	},"json");
	//根据courseid查询前五条学员动态
	$.post("studyCourse/persentdynamicStudentsbycourseid/",{courseid:courseid},function(data){
		
		var contentstr="";
		for(var i=0;i<data.length;i++){
			
			contentstr+="<div class='media media-number-o' ><div class='media-body'>" +
			"<a class='link-light' href='page/person.jsp?userid="+data[i].user.userid+"'>"+data[i].user.uname+
			"</a>开始学习课时<a class='link-dark'"+
			"href='page/joinproject.jsp?id="+data[i].course.courseid+"' title='"+data[i].course.ctitle+"'>"+
			data[i].course.ctitle+"</a></div></div>";
		}
		$("#studentsdynamic").html($(contentstr));
		
	},"json");
	//根据courseid查询前4条问题
	$.post("courseQuestion/newQuestionTopAtFour/",{courseid:courseid},function(data){
		var contentstr="";
		for(var i=0;i<data.length;i++){
			contentstr+=
			"<li><span ></span>"+
			"<span class='glyphicon glyphicon-question-sign' style='color: rgb(4, 188, 131);'></span><a "+
			" href='javascript:showDetailQuestion("+data[i].cqid+")'>"+data[i].cqcontent+"</a></li>";
		}
		$("#topquestion").html($(contentstr));
	},"json")
	//根据courseid查询,最新加入课程的12个学生
	$.post("studyCourse/newjoinStudentbycourseid/",{courseid:courseid},function(data){
		var contentstr="";
		for(var i=0;i<data.length;i++){
			contentstr+="<li><a class=' js-user-card' href='page/person.jsp?userid="+data[i].user.userid+"'"+
     		"data-card-url='/user/2364232/card/show' data-id='"+data[i].user.userid+"'>"+
     		"<img class='avatar-sm' src=";
     		if(data[i].user.photo==null){
     			contentstr+="'images/avatar.png' alt='"+data[i].user.uname+"'>";
     	
     		}else{
     			contentstr+="'"+data[i].user.photo+"' alt='"+data[i].user.uname+"'>";
     		}
     		contentstr+="</a><a class='name' href='page/person.jsp?userid="+data[i].user.userid+"'>"+data[i].user.uname+"</a></li>";
			/*<li><a class=" js-user-card"
				href="http://www.howzhi.com/u/2359828/"
				data-card-url="/user/2359828/card/show" data-user-id="2359828">
					<img class="avatar-sm" src="images/avatar.png"
					alt="红日211">
			</a> <a href="http://www.howzhi.com/u/2359828/" title="红日211"
				class="name">红日211</a></li>*/
		}
		$("#top12").html($(contentstr));
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

/*	//显示学员分页初始化
	$.post("course/getAllStudentNumber/",{"_method":"POST",courseid:courseid},function(data){
	
	//显示问答界面分页根据couresid初始化
	var courseid=window.location.href.split('=')[1];*/

	$.post("courseQuestion/getAllcourseQuestionbycourseid/",{"_method":"POST",courseid:courseid},function(data){
		$("#questionnumber").html("("+data+")");
		$("#questionnumbertwo").html(data);
		var page;
		var count=parseInt(data);
		if(count%20==0){
			page=count/20;
		}else{
			page=Math.floor((count/20)+1);
		}
		
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
	             	$("#questionAndAnswer").html($(contentstr));
	             	
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
		$("#Allstudent").html("("+data+")");
		var page;
		var count=parseInt(data);
		console.info(count);
		if(count%24==0){
			page=count/24;
		}else{
			page=Math.floor((count/24)+1);
		}
		$("#stcpage").createPage({
	        pageCount:page,
	        current:1,
	        backFn:function(p){
	            $.post("course/getStudentsbypageDescTime/",{"p":p,"courseid":courseid},function(data){
	            	var contentstr="";
	             	for(var i=0;i<data.length;i++){
	             		
	             		contentstr+="<li><a class=' js-user-card' href='page/person.jsp?userid="+data[i].student.userid+"'"+
	             		"data-card-url='/user/2364232/card/show' data-id='"+data[i].student.userid+"'>"+
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
	             	//悬停显示个人信息
	             	$(".js-user-card").hover(
	  					  function (){ 
	  						 
	  					    var position=getElementPos(this);
	  						var left = position.x;
	  						var top = position.y;
	  						
	  						var userid=$(this).attr("data-id");
	  						
	  						console.info(document.getElementById("user-card-store-"+userid));
	  						var obj=document.getElementById("user-card-store-"+userid);
	  						if(obj==null){
	  							console.info("yes");
	  							var courseid=window.location.href.split('=')[1];
	  							$.post("userinfo/getContactMsgbyUserid/",{userid:userid},function(data){
	  								var contentstr="";
	  								contentstr+="<div id='user-card-store-"+userid+"' style='display:none;border: 1px solid;background-color: white;width: 200px;'>"+
	  								"<div class='js-card-content'> <div class='card-header media-middle'>"+
	  								"<div class='media'><div class='media-left'><a><img class='avatar-md' src='";
	  									if(data.photo!=null){
	  										contentstr+=data.photo+"'alt='"+data.uname;
	  									}else{
	  										contentstr+="images/avatar.png' alt='"+data.uname;
	  									}
	  									contentstr+="' id='card-photo-"+data.userid+"'>"+
	  									"</a></div><div class='media-body'><a class='link-light'>"+data.uname+"</a></div>"+
	  									"<div class='content'></div></div></div></div>" +
	  									"<div class='card-body' style='height: 100px;'>";
	  									if(data.usign!=null){
	  										contentstr+=data.usign;
	  									}else{
	  										contentstr+="还没有签名";
	  									}
	  									contentstr+="</div>";
	  										
	  									contentstr+= "<div class='card-footer clearfix'> <span ><a class='link-light'>"+data.studynumber+"在学</a></span><span style='margin-left: 30px;'><a class='link-light'>"+
	  									data.attentionnumber+"关注</a></span><span style='margin-left: 30px;'><a class='link-light'>"+data.beattentionnumber+"粉丝</a></span></div></div></div>";
	  									
	  									
	  									$("body").append($(contentstr));
	  									$("#user-card-store-"+userid).css({
	  										"left" : left -70 + "px",
	  										"top" : top + 80 + "px"
	  									});			
	  									$("#user-card-store-"+userid).css("position", "absolute");
	  									$("#user-card-store-"+userid).css("display", "block");
	  									
	  							},"json");
	  								
	  							
	  						}else{
	  							var userid=$(this).attr("data-id");
	  							var position=getElementPos(this);
	  							var left = position.x;
	  							var top = position.y;
	  							$("#user-card-store-"+userid).css({
	  								"left" : left -70 + "px",
	  								"top" : top + 80 + "px"
	  							});
	  							
	  							$("#user-card-store-"+userid).css("display", "block");
	  						}
	  					
	  						
	  					  },
	  					  function () {
	  						var userid=$(this).attr("data-id");
	  					    $("#user-card-store-"+userid).css("display", "none");
	  					  }
	  					);
	             },"json");
	        }
	    });
	});
		var courseid=window.location.href.split('=')[1];
		 $.post("course/getStudentsbypageDescTime/",{"p":1,"courseid":courseid},function(data){

         	var contentstr="";
         	
         	for(var i=0;i<data.length;i++){
         		
         		contentstr+="<li><a class='js-user-card' href='page/person.jsp?userid="+data[i].student.userid+"'"+
         		"data-card-url='/user/2364232/card/show' data-id='"+data[i].student.userid+"'>"+

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
         	//悬停显示个人信息框
         	$(".js-user-card").hover(
					  function (){ 
						 
					    var position=getElementPos(this);
						var left = position.x;
						var top = position.y;
						
						var userid=$(this).attr("data-id");
						
						console.info(document.getElementById("user-card-store-"+userid));
						var obj=document.getElementById("user-card-store-"+userid);
						if(obj==null){
							console.info("yes");
							var courseid=window.location.href.split('=')[1];
							$.post("userinfo/getContactMsgbyUserid/",{userid:userid},function(data){
								var contentstr="";
								contentstr+="<div id='user-card-store-"+userid+"' style='display:none;border: 1px solid;background-color: white;width: 200px;'>"+
								"<div class='js-card-content'> <div class='card-header media-middle'>"+
								"<div class='media'><div class='media-left'><a><img class='avatar-md' src='";
									if(data.photo!=null){
										contentstr+=data.photo+"'alt='"+data.uname;
									}else{
										contentstr+="images/avatar.png' alt='"+data.uname;
									}
									contentstr+="' id='card-photo-"+data.userid+"'>"+
									"</a></div><div class='media-body'><a class='link-light'>"+data.uname+"</a></div>"+
									"<div class='content'></div></div></div></div>" +
									"<div class='card-body' style='height: 100px;'>";
									if(data.usign!=null){
										contentstr+=data.usign;
									}else{
										contentstr+="还没有签名";
									}
									contentstr+="</div>";
										
									contentstr+= "<div class='card-footer clearfix'> <span ><a class='link-light'>"+data.studynumber+"在学</a></span><span style='margin-left: 30px;'><a class='link-light'>"+
									data.attentionnumber+"关注</a></span><span style='margin-left: 30px;'><a class='link-light'>"+data.beattentionnumber+"粉丝</a></span></div></div></div>";
									
									
									$("body").append($(contentstr));
									$("#user-card-store-"+userid).css({
										"left" : left -70 + "px",
										"top" : top + 80 + "px"
									});			
									$("#user-card-store-"+userid).css("position", "absolute");
									$("#user-card-store-"+userid).css("display", "block");
									
							},"json");
								
							
						}else{
							var userid=$(this).attr("data-id");
							var position=getElementPos(this);
							var left = position.x;
							var top = position.y;
							$("#user-card-store-"+userid).css({
								"left" : left -70 + "px",
								"top" : top + 80 + "px"
							});
							
							$("#user-card-store-"+userid).css("display", "block");
						}
					
						
					  },
					  function () {
						var userid=$(this).attr("data-id");
					    $("#user-card-store-"+userid).css("display", "none");
					  }
					);
         	

         },"json");
		
		
		
	//评论分页初始化
	$.post("courseAssess/CMcountbycourseid/",{"_method":"POST",courseid:courseid},function(data){
		$("#Allcomment").html("("+data+")");
		var page;
		var count=parseInt(data);
		if(count%20==0){
			page=count/20;
		}else{
			page=Math.floor((count/20)+1);
		}
		
		$("#commenttcpage").createPage({
	        pageCount:page,
	        current:1,
	        backFn:function(p){
	            $.post("courseAssess/getAssessbypageDescTime/",{"p":p,"courseid":courseid},function(data){
	            	var contentstr="";
	            	for(var i=0;i<data.length;i++){
	            		
	            		contentstr+="<li><div class='notes-img'> <a class='js-user-card' data-id='"+data[i].user.userid+"' href='page/person.jsp?userid="+data[i].user.userid+"'>" +
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

	            	//悬停显示个人信息
	            	$(".js-user-card").hover(
	  					  function (){ 
	  						 
	  					    var position=getElementPos(this);
	  						var left = position.x;
	  						var top = position.y;
	  						
	  						var userid=$(this).attr("data-id");
	  						
	  						console.info(document.getElementById("user-card-store-"+userid));
	  						var obj=document.getElementById("user-card-store-"+userid);
	  						if(obj==null){
	  							console.info("yes");
	  							var courseid=window.location.href.split('=')[1];
	  							$.post("userinfo/getContactMsgbyUserid/",{userid:userid},function(data){
	  								var contentstr="";
	  								contentstr+="<div id='user-card-store-"+userid+"' style='display:none;border: 1px solid;background-color: white;width: 200px;'>"+
	  								"<div class='js-card-content'> <div class='card-header media-middle'>"+
	  								"<div class='media'><div class='media-left'><a><img class='avatar-md' src='";
	  									if(data.photo!=null){
	  										contentstr+=data.photo+"'alt='"+data.uname;
	  									}else{
	  										contentstr+="images/avatar.png' alt='"+data.uname;
	  									}
	  									contentstr+="' id='card-photo-"+data.userid+"'>"+
	  									"</a></div><div class='media-body'><a class='link-light'>"+data.uname+"</a></div>"+
	  									"<div class='content'></div></div></div></div>" +
	  									"<div class='card-body' style='height: 100px;'>";
	  									if(data.usign!=null){
	  										contentstr+=data.usign;
	  									}else{
	  										contentstr+="还没有签名";
	  									}
	  									contentstr+="</div>";
	  										
	  									contentstr+= "<div class='card-footer clearfix'> <span ><a class='link-light'>"+data.studynumber+"在学</a></span><span style='margin-left: 30px;'><a class='link-light'>"+
	  									data.attentionnumber+"关注</a></span><span style='margin-left: 30px;'><a class='link-light'>"+data.beattentionnumber+"粉丝</a></span></div></div></div>";
	  									
	  									
	  									$("body").append($(contentstr));
	  									$("#user-card-store-"+userid).css({
	  										"left" : left -70 + "px",
	  										"top" : top + 80 + "px"
	  									});			
	  									$("#user-card-store-"+userid).css("position", "absolute");
	  									$("#user-card-store-"+userid).css("display", "block");
	  									
	  							},"json");
	  								
	  							
	  						}else{
	  							var userid=$(this).attr("data-id");
	  							var position=getElementPos(this);
	  							var left = position.x;
	  							var top = position.y;
	  							$("#user-card-store-"+userid).css({
	  								"left" : left -70 + "px",
	  								"top" : top + 80 + "px"
	  							});
	  							
	  							$("#user-card-store-"+userid).css("display", "block");
	  						}
	  					
	  						
	  					  },
	  					  function () {
	  						var userid=$(this).attr("data-id");
	  					    $("#user-card-store-"+userid).css("display", "none");
	  					  }
	  					);

	            },"json");
	        }
	    });
		
		var courseid=window.location.href.split('=')[1];
		$.post("courseAssess/getAssessbypageDescTime/",{"p":1,"courseid":courseid},function(data){
        	var contentstr="";

        	for(var i=0;i<data.length;i++){
        		
        		contentstr+="<li><div class='notes-img'> <a class='js-user-card' data-id='"+data[i].user.userid+"' href='page/person.jsp?userid="+data[i].user.userid+"'>" +

        				" <img class='avatar-sm' ";
        		console.info(data[i].user.photo);
        			if(data[i].user.photo!=null){
        				contentstr+="src='"+data[i].user.photo+"'>";
        			}else{
        				contentstr+="src='images/avatar.png'>";
        			}
        			contentstr+="</a></div> <div class='notes-content'><h4>发布在课时<a>"+data[i].courseManage.title+"</a></h4>"
        			+"<div class='body'>"+data[i].content+"</div>"+
        			"<div class='metas'><span class='name'>by <a href='page/person.jsp?userid="+data[i].user.userid+"'>"+data[i].user.uname+"</a></span>"+
        			"<span class='time'>"+data[i].time+"</span></div></div></li>"
        	}
        	$("#commentcontent").html($(contentstr));

        	//悬停显示个人信息
        	$(".js-user-card").hover(
					  function (){ 
						 
					    var position=getElementPos(this);
						var left = position.x;
						var top = position.y;
						
						var userid=$(this).attr("data-id");
						
						console.info(document.getElementById("user-card-store-"+userid));
						var obj=document.getElementById("user-card-store-"+userid);
						if(obj==null){
							console.info("yes");
							var courseid=window.location.href.split('=')[1];
							$.post("userinfo/getContactMsgbyUserid/",{userid:userid},function(data){
								var contentstr="";
								contentstr+="<div id='user-card-store-"+userid+"' style='display:none;border: 1px solid;background-color: white;width: 200px;'>"+
								"<div class='js-card-content'> <div class='card-header media-middle'>"+
								"<div class='media'><div class='media-left'><a><img class='avatar-md' src='";
									if(data.photo!=null){
										contentstr+=data.photo+"'alt='"+data.uname;
									}else{
										contentstr+="images/avatar.png' alt='"+data.uname;
									}
									contentstr+="' id='card-photo-"+data.userid+"'>"+
									"</a></div><div class='media-body'><a class='link-light'>"+data.uname+"</a></div>"+
									"<div class='content'></div></div></div></div>" +
									"<div class='card-body' style='height: 100px;'>";
									if(data.usign!=null){
										contentstr+=data.usign;
									}else{
										contentstr+="还没有签名";
									}
									contentstr+="</div>";
										
									contentstr+= "<div class='card-footer clearfix'> <span ><a class='link-light'>"+data.studynumber+"在学</a></span><span style='margin-left: 30px;'><a class='link-light'>"+
									data.attentionnumber+"关注</a></span><span style='margin-left: 30px;'><a class='link-light'>"+data.beattentionnumber+"粉丝</a></span></div></div></div>";
									
									
									$("body").append($(contentstr));
									$("#user-card-store-"+userid).css({
										"left" : left -70 + "px",
										"top" : top + 80 + "px"
									});			
									$("#user-card-store-"+userid).css("position", "absolute");
									$("#user-card-store-"+userid).css("display", "block");
									
							},"json");
								
							
						}else{
							var userid=$(this).attr("data-id");
							var position=getElementPos(this);
							var left = position.x;
							var top = position.y;
							$("#user-card-store-"+userid).css({
								"left" : left -70 + "px",
								"top" : top + 80 + "px"
							});
							
							$("#user-card-store-"+userid).css("display", "block");
						}
					
						
					  },
					  function () {
						var userid=$(this).attr("data-id");
					    $("#user-card-store-"+userid).css("display", "none");
					  }
					);

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
								 	 +'<span class="date" title=""></span>'
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
					/*$(".js-user-card").hover(
							  function () { 
								  console.info("yes");
							    var position=getElementPos(this);
								var left = position.x;
								var top = position.y;
								console.info(left);
								console.info(top);
								console.info("我进来了");
								$("#user-card-store").css({
									"left" : left -70 + "px",
									"top" : top + 80 + "px"
								});
								$("#user-card-store").css("display", "block");
								$("#user-card-store").css("position", "absolute");
							  },
							  function () {
							    $("#user-card-store").css("display", "none");
							  }
							);*/
			 });
		 }else if(str.indexOf("问答")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'none');
			 $('#courseQuestion').css('display', 'block');
			 $("#qatcpage").css("display","block");
			 $("#questionAndAnswer").css("display","block");
			 $("#detailquestion").css("display","none");
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
		return false;
	}
	return "${user.userid}"
}
$("#thread_title").bind("click", function(){
	join();
});

function justif(){
	var userid=join();
	
	
}



function showquestiondetail(cqid){
	$("#detailquestion").css("display","block");
	$("#questionAndAnswer").css("display","none");
	$("#qatcpage").css("display","none");
	$.post("courseQuestion/detailQuestion/",{cqid:cqid},function(data){
		console.info(data.cqcontent);
		$("#questionContent").html(data.cqcontent);
		$("#cqid").val(data.cqid);
		$("#questionCourse").html(data.courseManage.course.ctitle);
		console.info(data.courseManage);
		$("#questionCourse").attr("href","page/joinproject.jsp?id="+data.courseManage.courseid);
		$("#questionCm").html(data.courseManage.title);
		$("#questionCm").attr("href","page/play.jsp?cmid="+data.courseManage.cmid);
		$("#answernumber").html(data.courseAnswer.length+"个回答");
		
		var contentstr="";
		for(var i=0;i<data.courseAnswer.length;i++){
			console.info("yes");
			if(data.courseAnswer[i]==null){
				continue;
			}
			contentstr+="<li class='media'><div class='media-left'><a class='js-user-card' "+
			"href='page/person.jsp?userid='"+data.courseAnswer[i].userinfo.userid+"><img class='avatar-sm' src='";
			if(data.courseAnswer[i].userinfo.photo!=null){
					contentstr+=data.courseAnswer[i].userinfo.photo+"'alt='"+data.courseAnswer[i].userinfo.uname;
				}else{
					contentstr+="images/avatar.png' alt='"+data.courseAnswer[i].userinfo.uname;
				}
			contentstr+="'></a></div><div class='question-contents media-body'><div class='name'>"+
			"<a class='link-light ' href='page/person.jsp?userid='"+data.courseAnswer[i].userinfo.userid+">"+
			data.courseAnswer[i].userinfo.uname+"</a><span class='day text-right'>"+data.courseAnswer[i].answertime+"</span></div>"+
			"<div class='content'>"+data.courseAnswer[i].answerContent+"</div>"+
			"<div class='answer-actions pull-right'><a href='#'><i class='glyphicon glyphicon-edit'></i>"+"编辑"+
			"</a></div></div></li>" ;
			
		}
		
		$("#showanswer").html($(contentstr));
	},"json");
	
	$(".js-user-card").hover(
			  function (){ 
				 
			    var position=getElementPos(this);
				var left = position.x;
				var top = position.y;
				
				var userid=$(this).attr("data-id");
				
				console.info(document.getElementById("user-card-store-"+userid));
				var obj=document.getElementById("user-card-store-"+userid);
				if(obj==null){
					console.info("yes");
					var courseid=window.location.href.split('=')[1];
					$.post("userinfo/getContactMsgbyUserid/",{userid:userid},function(data){
						var contentstr="";
						contentstr+="<div id='user-card-store-"+userid+"' style='display:none;border: 1px solid;background-color: white;width: 200px;'>"+
						"<div class='js-card-content'> <div class='card-header media-middle'>"+
						"<div class='media'><div class='media-left'><a><img class='avatar-md' src='";
							if(data.photo!=null){
								contentstr+=data.photo+"'alt='"+data.uname;
							}else{
								contentstr+="images/avatar.png' alt='"+data.uname;
							}
							contentstr+="' id='card-photo-"+data.userid+"'>"+
							"</a></div><div class='media-body'><a class='link-light'>"+data.uname+"</a></div>"+
							"<div class='content'></div></div></div></div>" +
							"<div class='card-body' style='height: 100px;'>";
							if(data.usign!=null){
								contentstr+=data.usign;
							}else{
								contentstr+="还没有签名";
							}
							contentstr+="</div>";
								
							contentstr+= "<div class='card-footer clearfix'> <span ><a class='link-light'>"+data.studynumber+"在学</a></span><span style='margin-left: 30px;'><a class='link-light'>"+
							data.attentionnumber+"关注</a></span><span style='margin-left: 30px;'><a class='link-light'>"+data.beattentionnumber+"粉丝</a></span></div></div></div>";
							
							
							$("body").append($(contentstr));
							$("#user-card-store-"+userid).css({
								"left" : left -70 + "px",
								"top" : top + 80 + "px"
							});			
							$("#user-card-store-"+userid).css("position", "absolute");
							$("#user-card-store-"+userid).css("display", "block");
							
					},"json");
						
					
				}else{
					var userid=$(this).attr("data-id");
					var position=getElementPos(this);
					var left = position.x;
					var top = position.y;
					$("#user-card-store-"+userid).css({
						"left" : left -70 + "px",
						"top" : top + 80 + "px"
					});
					
					$("#user-card-store-"+userid).css("display", "block");
				}
			
				
			  },
			  function () {
				var userid=$(this).attr("data-id");
			    $("#user-card-store-"+userid).css("display", "none");
			  }
			);
}



