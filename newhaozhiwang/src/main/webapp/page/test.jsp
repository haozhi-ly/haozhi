<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="/newhaozhiwang/"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	${users}
	<form id="itemForm"
		action="${pageContext.request.contextPath}/items/editItemsSubmit.action"
		method="post" enctype="multipart/form-data">

		<input type="hidden" name="id" value="${items.id }" /> 修改商品信息：

		<table width="100%" border=1>

			<tr>

				<td>商品名称</td>

				<td><input type="text" name="name" value="${items.name }" /></td>

			</tr>

			<tr>

				<td>商品价格</td>

				<td><input type="text" name="price" value="${items.price }" /></td>

			</tr>

			<tr>

				<td>商品生产日期</td>

				<td><input type="text" name="createtime"
					value="<fmt:formatDate value="${items.createtime}"pattern="yyyy-MM-dd HH:mm:ss"/>" /></td>

			</tr>

			<tr>

				<td>商品图片</td>

				<td><c:if test="${items.pic !=null}">

						<img src="/pic/${items.pic}" width=100 height=100 />

						<br />

					</c:if> <!-- 上传的控件--> <input type="file" name="items_pic" /></td>
			</tr>

			<tr>

				<td>商品简介</td>

				<td><textarea rows="3" cols="30" name="detail">${items.detail}</textarea></td>

			</tr>

			<tr>

				<td colspan="2" align="center"><input type="submit" value="提交" /></td>

			</tr>

		</table>

	</form>

</body>
</html>