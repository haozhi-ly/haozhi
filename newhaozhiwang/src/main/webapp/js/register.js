// JavaScript Document

/*	$(".register").click( function () {
		 $("#login-box").hide(); 
		 $("#register-box").show();
	});*/
	
	function register(){
		$("#login-box").hide(); 
		$("#register-box")[0].style.display="block";
	}
	
	function login(){
		$("#register-box").hide(); 
		$("#login-box")[0].style.display="block";
	}
