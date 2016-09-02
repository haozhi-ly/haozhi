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
		$(".error_name").html("");
		var email=$("#register_eamil").val();
		$.post("userinfo/checkemail",{"email":email},function(data){
			
			var message="";
			if(data>0){
				message+="<div id='error_eamil' style='margin-bottom:20px;'>此邮箱已经被注册！！！！</div>";
				$("#register_eamil").val("");
			}
			$(".error_eamil").html(message);
		})
	}
	
	function check_uname(){
		$(".error_name").html("");
		$.post("userinfo/checkuname",{"uname":$("#register_username").val()},function(data){
			
			var message="";
			if(data>0){
				message+="<div id='error_name' style='margin-top:20px;'>此用户名已经被使用！！！！</div>";
				$("#register_username").val("");
			}
			$(".error_name").html(message);
		})
	}
	
	//点击获取验证码
	function sendMail(){
		var emailBox=$("#register_eamil").val();
		alert(emailBox);
		var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if(emailBox=="" || emailBox==null){
			$.messager.alert('错误提示','您还没有输入邮箱!!!','error');
		}else{
			if(emailBox.match(reg)){
				$.post("userinfo/sendMail",function(data){
					alert(data);
				})
			}else{
				$.messager.alert('错误提示','邮箱格式不正确!!!','error');
			}
		}
		
		
		
	}