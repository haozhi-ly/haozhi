	
$(function(){
	$(".nav-hover").bind("mouseover",function(){
		$(".dropdown-menu")[0].style.display = "block";
		});
	$(".nav-hover").bind("mouseout",function(){
		$(".dropdown-menu")[0].style.display = "none";
		});
	$(".choose").bind("mouseover",function(){
		$("#textcenter")[0].style.display = "block";
		});
	$(".choose").bind("mouseout",function(){
		$("#textcenter")[0].style.display = "none";
		});
	$("#textcenter").bind("mouseover",function(){
		$("#textcenter")[0].style.display = "block";
		});
	$("#textcenter").bind("mouseout",function(){
		$("#textcenter")[0].style.display = "none";
		});
		
	$("#textcenter li").bind("click",function(){
		var str = this.innerHTML;
		var st = str + '<i style="color:#999;font-size:11px;margin-left:5px" class="glyphicon glyphicon-chevron-down"></i>';
		$(".choose").text("");
		$(".choose").append(st);
	});

	
});
