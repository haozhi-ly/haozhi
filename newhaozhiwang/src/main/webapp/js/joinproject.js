		
$(function(){
	$('.close').bind("click",function(){
		$('#login-modal').css('display','none');
		$('#loadingDiv').css('display','none');
	});
});

function join(){
	var st = $('.color-gray-one').val();
	if(st == ""){
		$('#login-modal').css('display','block');
		$('#loadingDiv').css('display','block');
	}
}
