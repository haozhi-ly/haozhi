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
});
	

