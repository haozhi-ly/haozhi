//学习中心的js
$(function() {

	if(flag=="false"){	
		$("#centerContent").css("display","none");
		$("#content-container").css("display","block");
		$("#loadingDiv").css("display","block");
		showTime();
	}else{
	$.post("userinfo/getInfoByUserid", {"_method" : "POST","userid" :userid},function(data){
		if(data){
			$('.user-info span').html( data.uname );
			$('.user-info p').html( data.usign );
			$('.personImg .img-responsive').attr("src",data.photo);
			$('.personImg .img-responsive').attr("alt",data.uname);
			$('#score').html( data.score ); 
		}
	});
	
	
	
	$.post("course/studyingByUserid", {"_method" : "POST","p":2,"userid" :userid},function(data){
		var str="";
		if(data){
			$.each(data,function(index,item){
			str+='<div class="clearfix studing-item "><div class="study-img">'
				+'<a href="page/joinproject.jsp?id="'+item.courseid+'> <img class="img-responsive" '
				+' src="'+item.coursephoto+'" alt="'+item.ctitle+'"> '
				+'<span class="load" style="width: 1%"></span> <span class="pere text-center">0%</span>'
				+'</a></div><div class="study-content"><h4><a href="page/joinproject.jsp?id="'+item.courseid+'>'
				+''+item.ctitle+'</a></h4><p>'+item.begintime+'学习至 <a href="page/play.jsp?cmid='+item.courseManage.cmid+'"'
				+'class="plm active">L'+item.courseManage.courseseq+'：'+item.courseManage.title+'</a></p></div>'
				+'<div class="study inter"><a href="page/joinproject.jsp?id="'+item.courseid+'>继续学习</a></div></div>';
			});
			/*'+item.courseManage.courseseq+''+item.courseManage.title+'   '+item.courseManage.cmid+'*/
		}else{
			str+='<div class="empty"><i class="es-icon es-icon-locallibrary"></i>数千门有趣的课程正在等你发现，<a href="page/course.jsp">快去看看吧 &gt;&gt;</a></div>';
		}
			$('.phl').html("").append( $(str) );
	},"json");
	
	// 加载更多
	 var p = 1;  
	 var str=""; 
     $('#get_more').click(function () {  
         p += 1;  
         $.ajax({  
             type: 'POST',  
             url: 'course/studyingByUserid',  
             data: {p: p,"userid" :userid},  
             dataType: 'json',  
             success: function (data) {  
            	 if(data){
         			$.each(data,function(index,item){
         			str+='<div class="clearfix studing-item "><div class="study-img">'
         				+'<a href="page/joinproject.jsp?id="'+item.courseid+'> <img class="img-responsive" '
         				+' src="images/160148ccf620140008.jpg" alt="'+item.ctitle+'"> '
         				+'<span class="load" style="width: 1%"></span> <span class="pere text-center">0%</span>'
         				+'</a></div><div class="study-content"><h4><a href="page/joinproject.jsp?id="'+item.courseid+'>'
         				+''+item.ctitle+'</a></h4><p>'+item.begintime+'学习至 <a href="page/play.jsp?cmid='+item.courseManage.cmid+'"'
         				+'class="plm active">L'+item.courseManage.courseseq+'：'+item.courseManage.title+'</a></p></div>'
         				+'<div class="study inter"><a href="page/joinproject.jsp?id="'+item.courseid+'>继续学习</a></div></div>';
         			});
         			/*'+item.courseManage.courseseq+''+item.courseManage.title+'   '+item.courseManage.cmid+'*/
         		}else{
         			str+='<div class="empty"><i class="es-icon es-icon-locallibrary"></i>数千门有趣的课程正在等你发现，<a href="page/course.jsp">快去看看吧 &gt;&gt;</a></div>';
         		}
         		$('.phl').after( $(str) ); 
                 str="";  
             },  
         });  
     });  
     
     $.post("userinfo/attentionByUserid", {"_method" : "POST","userid" :userid},function(data){
		 $('.all-count').css("display","none");
    	 var str="";
    	 if(data){
    		 $.each(data,function(index,item){
    			 var attention = item.userid;
    			 $.post("userinfo/judgeAttention", {"_method" : "POST","userid" :attention,"attention":userid},function(data){
    				 if(data==1){
    					 str+='<div class="col-md-4"><div class="fri-img"><a class=" js-user-card"  href="javascript:void(0);" '
							  +' > <img class="avatar-sm" alt="'+item.uname+'" '
							  +' src="'+item.photo+'">'
							  +'</a></div><div class="fri-lists">'
							  +'<div class="fri-name"><a href="javascript:void(0);">'+item.uname+'</a></div><div class="fir-text">'
							  +'<span>'+item.usign+'</span></div><div class="add-attention myFollowing">'
							  +'<span class="has-attent" style="display: none"><i class=" glyphicon glyphicon-ok"></i> 已关注'
							  +'</span> <span class="has-attent" id="'+item.userid+'"> <i '
							  +' class="glyphicon glyphicon-transfer"></i> 相互关注</span></div></div></div>';
    				 }else{
    					 str+='<div class="col-md-4"><div class="fri-img"><a class=" js-user-card"  href="javascript:void(0);" '
							  +'> <img class="avatar-sm" alt="'+item.uname+'" '
							  +' src="'+item.photo+'">'
							  +'</a></div><div class="fri-lists">'
							  +'<div class="fri-name"><a href="javascript:void(0);">'+item.uname+'</a></div><div class="fir-text">'
							  +'<span>'+item.usign+' </span></div><div class="add-attention myFollowing">'
							  +'<span class="has-attent" id="'+item.userid+'"><i class=" glyphicon glyphicon-ok"></i> 已关注'
							  +'</span> <span class="has-attent" style="display: none" > <i '
							  +' class="glyphicon glyphicon-transfer"></i> 相互关注</span></div></div></div>';
    				 }
    				 $('#relation').html("").append( $(str) );
    			 });
    			
    		 });
    	 }else{
    		 str+='<h3 style="color:#666;text-align:center">暂时未关注任何人！！！</h3>';
    	 }
    	 $('#attentionM #relation').html("").append( $(str) );
     });
     
     
     $.post("userinfo/fansByUserid", {"_method" : "POST","attention" :userid},function(data){
		 $('.all-count').css("display","none");
    	 var str="";
    	 if(data){
    		 $.each(data,function(index,item){
    			 var attention = item.userid;
    			 $.post("userinfo/judgeAttention", {"_method" : "POST","userid" :attention,"attention":userid},function(data){
    				 if(data==1){
    					 str+='<div class="col-md-4"><div class="fri-img"><a class=" js-user-card"  href="javascript:void(0);" '
							  +' > <img class="avatar-sm" alt="'+item.uname+'" '
							  +' src="'+item.photo+'">'
							  +'</a></div><div class="fri-lists">'
							  +'<div class="fri-name"><a href="javascript:void(0);">'+item.uname+'</a></div><div class="fir-text">'
							  +'<span>'+item.usign+'</span></div><div class="add-attention myFollowing">'
							  +'<span class="has-attent" style="display: none"><i class=" glyphicon glyphicon-ok"></i> 已关注'
							  +'</span> <span class="has-attent" id="'+item.userid+'"> <i '
							  +' class="glyphicon glyphicon-transfer"></i> 相互关注</span></div></div></div>';
    				 }else{
    					 str+='<div class="col-md-4"><div class="fri-img"><a class=" js-user-card"  href="javascript:void(0);" '
							  +'> <img class="avatar-sm" alt="'+item.uname+'" '
							  +' src="'+item.photo+'">'
							  +'</a></div><div class="fri-lists">'
							  +'<div class="fri-name"><a href="javascript:void(0);">'+item.uname+'</a></div><div class="fir-text">'
							  +'<span>'+item.usign+' </span></div><div class="add-attention myFollowing">'
							  +'<span class="has-attent" id="'+item.userid+'"><i class=" glyphicon glyphicon-ok"></i> 已关注'
							  +'</span> <span class="has-attent" style="display: none" > <i '
							  +' class="glyphicon glyphicon-transfer"></i> 相互关注</span></div></div></div>';
    				 }
    				 $('#relation').html("").append( $(str) );
    			 });
    			
    		 });
    	 }else{
    		 str+='<h3 style="color:#666;text-align:center">暂时未关注任何人！！！</h3>';
    	 }
    	 $('#attentionM #relation').html("").append( $(str) );
     });
     
     
    
     
     $('.has-attent').click(function(){ 
    	 alert("elargkr");
    	 var attention = this.id;
    	 alert(attention);
    	 /*var str = this.innerHTML;
    	 if(str.indexOf("已关注") >= 0){
    		 alert("确定取消关注??");
    		 
    	 }*/
    	 alert("确定取消关注??");
    	 
     });
     
     $("#fmenu a").bind("click",function(){
    	 $(this).parent().children().removeClass("active");
    	 $(this).addClass("active"); //样式改变	
    	 var str = this.innerHTML;
			if (str.indexOf("关注的人") >= 0) {
				$('#attentionM').css("display","block");
				$('#fans').css("display","none");
			}else if(str.indexOf("粉丝") >= 0){
				$('#attentionM').css("display","none");
				$('#fans').css("display","block");
			}
     });
     
	}
});

//设定倒数秒数  
var t = 5;  
//显示倒数秒数  
function showTime(){   
    $('#backtime').html(t+"s");
    t -= 1; 
    if(t==0){  
        location.href='page/login.jsp';  
    }  
    //每秒执行一次,showTime()  
    setTimeout("showTime()",1000);  
} 


