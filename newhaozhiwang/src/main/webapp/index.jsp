<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%-- <base href="<%=basePath%>">  --%>
    <%
    	System.out.println(basePath);
    %>
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script> 
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>  
    <script type="text/javascript" src="ckeditor/config.js"></script>  
   	<script type="text/javascript">
   		var myckeditor;
	    	$(document).ready(function(){  
	    	 myckeditor=CKEDITOR.replace('myckeditor'); 
	    });  
	</script>  
  </head>
  
  <body>
  		<div style="width:560px;height: 250px;"> <textarea name="myckeditor"></textarea></div>
    	<input  type="button" onclick="getHtml()" value="提交"/>
  </body>
  <script type="text/javascript">
  		function getHtml(){
  			var content = myckeditor.document.getBody().getHtml();
  			alert(content);
  		}
  </script>
</html>
