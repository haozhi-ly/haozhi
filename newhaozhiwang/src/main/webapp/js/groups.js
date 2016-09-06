$(function(){
	//热门小组
	$.get("groups/hostgroups",function(data){
		var listStr="";
		for(var i=0;i<data.length;i++){		
			listStr+='<div class="col-lg2 col-md-2 col-sm-2 col-xs-4 grid">';
			listStr+='<p>';
			listStr+='<a href="javascript:void(0)" title="'+data[i].groupname+'">';
			listStr+='<img src="images/120652c07d78265998.jpg" alt="'+data[i].groupname+'" class="group-avatar-sm"></a>';
			listStr+='<p>';
			listStr+='<p class="title"><a class="link-light" href="javascript:void(0)" title="'+data[i].groupname+'">'+data[i].groupname+'</a></p>';
			listStr+='</div>';
			}
		$("#hostGroups").html(listStr);
	},"json");
	
	//新晋小组
	$.get("groups/newgroups",function(data){
		var listStr="";
		for(var i=0;i<data.length;i++){		
			listStr+='<div class="media media-group">';
			listStr+='<div class="media-left">';
			listStr+='<a href="http://www.howzhi.com/group/355/" title="'+data[i].groupname+'">';
			listStr+='<img src="images/120652c07d78265998.jpg" alt="'+data[i].groupname+'" class="avatar-square-md"></a>';
			listStr+='</div>';
			
			listStr+='<div class="media-body">';
			listStr+='<div class="title">';
			listStr+='<a class="gray-darker" href="http://www.howzhi.com/group/355/" title="'+data[i].groupname+'">'+data[i].groupname+'</a>';
			listStr+='</div>';
			listStr+='<div class="metas">';
			listStr+='<span><i class="glyphicon glyphicon-user"></i>'+data[i].peoplecount+'</span>';
			listStr+='<span><i class="glyphicon glyphicon-envelope"></i>1433</span>';
			listStr+='</div></div></div>';
			}
		$("#newGroups").html(listStr);
	},"json");
});