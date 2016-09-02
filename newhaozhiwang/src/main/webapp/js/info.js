//学习中心的js
$(function() {
						$(".list-group-item a").bind("click", function() {
							var str = this.innerText;
							if (str.trim() == "基础信息") {
								$("#baseinfo")[0].style.display = "block";
								$("#touxiang")[0].style.display = "none";
								$("#update")[0].style.display = "none";
							} else if (str.trim() == "头像设置") {
								$("#touxiang")[0].style.display = "block";
								$("#baseinfo")[0].style.display = "none";
								$("#update")[0].style.display = "none";
							} else if (str.trim() == "安全设置") {
								$("#update")[0].style.display = "block";
								$("#baseinfo")[0].style.display = "none";
								$("#touxiang")[0].style.display = "none";
							}
						});
					});
					
function save(id) {
	var usign = $("#profile_signature").val();
	var introdution = $("#profile_about").val();
	var gender = $("input[name='gender']:checked").val();

	alert(gender + usign + introdution);

	$.post("userinfo/save", {
		"_method" : "POST",
		userid : id,
		gender : gender,
		usign : usign,
		introdution : introdution
	}, function(data) {
		alert("ogaugrhn");
		var str = "";
		if (data == 1) {
			str='<div class="alert alert-success">基础信息保存成功。</div>';
			alert("修改成功!!!");
		}
		  $('#info').append( $(str) ); 
	}, 'json');
}
