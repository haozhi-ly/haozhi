$(function(){
	$.get("groups/hostgroups",function(data){
		alert("aaaaa");
		alert(data);
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
});