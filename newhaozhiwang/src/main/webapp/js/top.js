	
$(function(){
	$(".nav-hover").bind("mouseover",function(){
		$(".dropdown-menu")[0].style.display = "block";
		});
	$(".nav-hover").bind("mouseout",function(){
		$("#menu").css("display","none");
  		});
	$(".choose").bind("mouseover",function(){
		$("#text-center")[0].style.display = "block";
		});
	$(".choose").bind("mouseout",function(){
		$("#text-center")[0].style.display = "none";
		});
	$("#text-center").bind("mouseover",function(){
		$("#text-center")[0].style.display = "block";
		});
	$("#text-center").bind("mouseout",function(){
		$("#text-center")[0].style.display = "none";
		});
		
	$("#text-center li").bind("click",function(){
		var str = this.innerHTML;
		var st = str + '<i style="color:#999;font-size:11px;margin-left:5px" class="glyphicon glyphicon-chevron-down"></i>';
		$(".choose").text("");
		$(".choose").append(st);
	});
	
	$("#loginOut").bind("click",function(){
		$.post("userinfo/loginOut",function(data){
			var listStr="";
			if(data==true){
				$("#topf").html("");
				listStr+='<ul class="nav nav-login">';
				listStr+='<li><a class="color-gray-one" href="page/login.jsp">登录</a></li>';
				listStr+='<li><a href="page/login.jsp">注册</a></li>';
				listStr+='<li class="hidden-xs hzapp hidden-sm">';
				listStr+='<a href="page/manage.jsp">';
				listStr+='<small class="badge"> </small>';
				listStr+='<i class="hz-icon icon-smartphone"></i>好知APP</a>';
				listStr+='</li>';
				listStr+='</ul> ';
				listStr+='<form class="navbar-form pull-right hz-search hidden-xs" role="search" action="">';
				listStr+='<div class="form-group">';
				listStr+='<div id="search-left" class="pull-left search-left">';
				listStr+='<div class="search-type pull-left">';
				listStr+='<div class="choose" style="color:#666;font-size:14px;margin-top:3px;">课程<i style="color:#999;font-size:11px;margin-left:5px" class="glyphicon glyphicon-chevron-down"></i></div>';
				listStr+='<ul class="text-center" id="text-center" style="color:#999;">';
				listStr+='<li data-type="course">课程</li>';
				listStr+='<li data-type="discussion">话题</li>';
				listStr+='<li data-type="user">用户</li>';
				listStr+='<li data-type="group">小组</li>';
				listStr+='</ul>';
				listStr+='</div>';
				listStr+='<input class="form-control js-search" name="q" placeholder="输入要查找的内容" autocomplete="off"></div>';
				listStr+='<input name="t" value="course" type="hidden">';
				listStr+='<button style="color: #15C288; font-size:20px;margin-top:7px; border:none;background:#fff;width:50px;" class="glyphicon glyphicon-search" type="submit"></button>';
				listStr+='</div></form>';
				$("#topf").html(listStr);
			}
		});
	});

	
});
