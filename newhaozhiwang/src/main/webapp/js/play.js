//学习中心的js
$(function() {
	var cmid=window.location.href.split('=')[1];
	$.post("courseManage/getPlayByCmid", {"_method" : "POST",cmid :cmid},function(data){
		if(data){
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
	$("#comment-btn").bind("click",function(){
		var content = $("#comment").val();

		str= '<li id="item92705"><div class="userimg"><a class=" js-user-card" href="javaScript:void(0)" data-card-url="/user/2358982/card/show" data-user-id="2358982">'+
		'<img class="img-responsive" src="../images/avatar.png" alt="珘珘"></a></div><div class="userInfo"><p class="head"><a href="javaScript:void(0)">珘珘</a><span>1天前</span></p>'+
		'<div class="body">'+content+'</div>'+
		'<div class="pull-right  "><a class="con" href="javascript:;" data-role="revert" data-url="/comment/92705/post" data-revertto="珘珘">回复</a>'+
		'<a class="con" href="javascript:;" data-role="delete" data-target="item92705" data-url="/comment/92705/delete">删除</a></div></div></li>';
										
		$("#commentList").append(str);											
	    $("#comment").val(" ");					
	});
	
	//查出授课老师相关信息
	$.post("courseManage/selectTeachInfo", {"_method" : "POST",cmid :cmid},function(data){
		if(data){
			$('.link-light ').html(data.user.uname);
			$('#teachImg').att("src",data.user.photo);
			$('#teach').html(data.teachCount);
			$('#fans').html(data.fansCount);
		}
	});
	
	
});

