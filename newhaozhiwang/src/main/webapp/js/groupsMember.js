$(function(){
	var groupname=window.location.href.split('=')[1].split('&')[0];
	var userid=window.location.href.split('=')[2];
	groupname=decodeURI(groupname);
	$.post("groups/showsearch",{"_method":"POST","groupname":groupname},function(gdata){
		var listStr="";
		listStr='<a class=" js-user-card" href="http://www.howzhi.com/u/187/" data-card-url="/user/187/card/show" data-user-id="187">';
		listStr='<img class="avatar-sm" src="images/person03.jpg" alt="'+gdata.userinfo.uname+'">';
		listStr='<span class="daren-icon" title="达人"></span>';
		listStr='</a>';
		listStr='<p class="text-center">';
		listStr='<a class="link-light link-light" href="http://www.howzhi.com/u/187/">'+gdata.userinfo.uname+'</a>';
		listStr='</p>';
		
		$("#getgroupleader").html(listStr);
		
	},"json");
	

	$.post("groups/getMember",{"_method":"POST","groupname":groupname},function(data){
		var listStr="";
		if(data){
			for(var i=0;i<data.length;i++){
				listStr+='<div class="grouplist" style="width: 108px;">';
				listStr+='<p>';
				listStr+='<a class=" js-user-card" href="http://www.howzhi.com/u/2358985/" data-card-url="/user/2358985/card/show" data-user-id="'+data[i].userid+'">';
				listStr+='<img class="avatar-sm" src="images/person04.jpg" alt="'+data[i].uname+'">';
				listStr+='</a></p>';
				listStr+='<p class="text-center">';
				listStr+='<a class="link-light link-light" href="">'+data[i].uname+'</a></p><br></div>';
			}
			$("#groupMember").html(listStr);
		}
	},"json");
});