		
$(function(){
	//获取所有课程
	$.post("course/getAll/",{"_method":"POST"},function(data){		
		var str="";
		 if(data){
		 $.each(data,function(index,item){
			  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img"> <a href="javaScript:void(0);"> <img src="images/160148ccf620140008.jpg" alt="sai基础教程" class="">' 
				 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="http://www.howzhi.com/course/3539/">'+item.ctitle+'</a> </div>'
		       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
		       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1282433/" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
		       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
		       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
			});
			$('#findCourse').html("").append( $(str) );
		 }
	},'json');
	//查询热门的三门课程
	 $.post("course/getHostCourse/",{"_method":"POST"},function(data){	
		 var str="";
		 if(data){
		 $.each(data,function(index,item){
			  str+=' <li class="course-item col-md-12 col-xs-6"><div class="course-img"> <a href="http://www.howzhi.com/course/13254/">'
				  +'<img src="images/065523b78450837537.jpg" alt="'+item.ctitle+'" class="" data-echo="http://f1.howzhi.com/default/2016/03-14/1045288563e3244992.jpg">'
				  +'</a> </div> <div class="course-info"><div class="title text-o-show"> <a href="http://www.howzhi.com/course/13254/">'+item.ctitle+'</a> </div>'
				  +'<div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1637688/" data-card-url="/user/1637688/card/show" data-user-id="1637688">'
				  +'<img class="avatar-ss " src="images/11480117880b049054.jpg" alt="luemery">'+item.user.uname+'</a>'
				  +'<div class="price free pull-right"><span>免费</span></div></div></div></li>'
		});
			$('#hostCourse').html("").append( $(str) );
		  }
		},'json');
	
	 var tid ;
	
	$('#content-container li').bind("click",function(){
		 $(this).parent().children().removeClass("act first");  
		 $(this).addClass("act first"); 	  //样式改变
		 
		 var id=this.id;
		 tid= id;
		 $.post("course/getCourseByCtid/"+id,{"_method":"POST"},function(data){	
			 var str="";
			 if(data){
			 $.each(data,function(index,item){
				  str+='<div class="col-md-4 col-xs-6"><div class="course-item "><div class="course-img"> <a href="javaScript:void(0);"> <img src="images/160148ccf620140008.jpg" alt="sai基础教程" class="">' 
					 +'</a> </div><div class="course-info"><div class="title text-o-show"> <a href="http://www.howzhi.com/course/3539/">'+item.ctitle+'</a> </div>'
			       +'<div class="metas"  style="color:#666"><span>浏览量:'+item.cview+'</span>/ <span>'+item.memberCount+'学员</span>/ <span>'+item.assessAvg+'.0评分</span> </div>'
			       +'<div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1282433/" data-card-url="/user/1282433/card/show" data-user-id="1282433">' 
			       +'<img class="avatar-ss " src=" images/2001255a2bbc776915.jpg" alt="'+item.user.uname+'" >'+item.user.uname+'</a>'
			       +'<div class="price free pull-right"><span>免费</span></div></div></div></div></div>';
				});
				$('#findCourse').html("").append( $(str) );
			 }
		 },'json');
		 
		 $.post("course/getHostByCtid/"+id,{"_method":"POST"},function(data){	
			 var str="";
			 if(data){
			 $.each(data,function(index,item){
				  str+=' <li class="course-item col-md-12 col-xs-6"><div class="course-img"> <a href="http://www.howzhi.com/course/13254/">'
					  +'<img src="images/065523b78450837537.jpg" alt="'+item.ctitle+'" class="" data-echo="http://f1.howzhi.com/default/2016/03-14/1045288563e3244992.jpg">'
					  +'</a> </div> <div class="course-info"><div class="title text-o-show"> <a href="http://www.howzhi.com/course/13254/">'+item.ctitle+'</a> </div>'
					  +'<div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1637688/" data-card-url="/user/1637688/card/show" data-user-id="1637688">'
					  +'<img class="avatar-ss " src="images/11480117880b049054.jpg" alt="luemery">'+item.user.uname+'</a>'
					  +'<div class="price free pull-right"><span>免费</span></div></div></div></li>'
			});
				$('#hostCourse').html("").append( $(str) );
			  }
			},'json');		
	});
	
	$('#sortNav a').bind("click",function(){
		 $(this).parent().parent().children().children().removeClass("act");  
		 $(this).addClass("act"); 	  //样式改变
		 var id = this.id;
		 $.post("course/selectCourseBy/"+tid+id,{"_method":"POST"},function(data){	
			 
		 },'json');
	});
	
	
	
	
});


