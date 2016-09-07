		
$(function(){
	
	//显示页面所有信息
	//console.info();
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
		 }else if(str.indexOf("笔记")>=0){
			 $('#courselist').css('display', 'none'); 
			 $('#courseInfo').css('display', 'none');
			 $('#courseNotes').css('display', 'block');
			 $('#courseQuestion').css('display', 'none');
			 $('#courseClassmate').css('display', 'none');
			 $('#courseAssess').css('display', 'none');
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
		 }
	});
		
	
});

function join(){	
	var st = $('.color-gray-one').val();
	if(st == ""){
		$('#login-modal').css('display','block');
		$('#loadingDiv').css('display','block');
	}
}


