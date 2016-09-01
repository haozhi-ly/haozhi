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
	
	function check_email(){
		console.info("yes");
		console.info($("#register_eamil").val()+"yes");
		var email=$("#register_eamil").val();
		$.post("userinfo/checkemail",{"email":email},function(date){
			
			var message="";
			if(date>0){
				message+="<div id='error_eamil' style='margin-bottom:20px;'>此邮箱已经被注册！！！！</div>";
			}
			$(".error_eamil").html(message);
		})
	}
	
	function check_uname(){
		$.post("userinfo/checkuname",{"uname":$("#register_username").val()},function(date){
			
			var message="";
			if(date>0){
				message+="<div id='error_name' style='margin-top:20px;'>此用户名已经被使用！！！！</div>";
			}
			$(".error_name").html(message);
		})
	}