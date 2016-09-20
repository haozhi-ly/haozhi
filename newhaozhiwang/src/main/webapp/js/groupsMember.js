$(function(){
	var groupname=window.location.href.split('=')[1].split('&')[0];
	var userid=window.location.href.split('=')[2];
	groupname=decodeURI(groupname);
	$.post("groups/showsearch",{"_method":"POST","groupname":groupname},function(gdata){
		var listStr="";
		listStr+='<div class="grouplist" style="width: 108px;">';
		listStr+='<a class=" js-user-card" href="http://www.howzhi.com/u/187/" data-card-url="/user/187/card/show" data-user-id="187">';
		listStr+='<img class="avatar-sm" src="'+gdata.userinfo.photo+'" alt="'+gdata.userinfo.uname+'">';
		listStr+='</a>';
		listStr+='<p class="text-center">';
		listStr+='<a class="link-light link-light" href="http://www.howzhi.com/u/187/">'+gdata.userinfo.uname+'</a>';
		listStr+='</p></div>';
		$("#getgroupleader").html($(listStr));
		var ul="";
		ul+='<li><a href="page/groupIntroduce.jsp?groupname='+gdata.groupname+'&userid='+userid+'">小组首页</a></li>';
		ul+='<li class="active"><a href="page/groupMember.jsp?groupname='+gdata.groupname+'&userid='+userid+'">小组成员</a></li>';
		$("#ul01").html($(ul));
		
		
	},"json");
	

	$.post("groups/getMember",{"_method":"POST","groupname":groupname},function(data){
		var listStr="";
		if(data){
			for(var i=0;i<data.length;i++){
				console.info(data[i]);
				listStr+='<div class="grouplist" style="width: 108px;">';
				listStr+='<p>';
				listStr+='<a class=" js-user-card" href="http://www.howzhi.com/u/2358985/" data-card-url="/user/2358985/card/show" data-user-id="'+data[i].userid+'">';
				listStr+='<img class="avatar-sm" src="'+data[i].photo+'" alt="'+data[i].uname+'">';
				listStr+='</a></p>';
				listStr+='<p class="text-center">';
				listStr+='<a class="link-light link-light" href="">'+data[i].uname+'</a></p><br></div>';
			}
			$("#groupMember").html(listStr);
		}
	},"json");
});