<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<table border="1">
			<tr>
				<td>상품 이미지</td>
				<td height="300px" width="300px">
				</td>
			</tr>
			<tr>
				<td>상품명</td>
				<td>${product.productName}</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>${product.productPrice}</td>
			</tr>
			<tr>
				<td>상품 카테고리</td>
				<td>${product.productKategorie}</td>
			</tr>
		</table>
		<br>

		<button type="button"
			onclick="productEditForm('${product.productId}')">수정</button>
		&nbsp;&nbsp;
		<button type="button" onclick="productDelete('${product.productId}')">삭제</button>
		&nbsp;&nbsp;
		<form id="frm1" action="productEditForm.do" method="post">
			<input type="hidden" id="productId" name="productId"
				value="'${proudct.productId}'">
		</form>
		<form id="frm2" action="productDelete.do" method="post">
			<input type="hidden" id="productId" name="productId"
				value="'${proudct.productId}'">
		</form>
	</div>
	<script type="text/javascript">
		function productEditForm(id) {
			let frm = document.getElementById("frm1");
			frm.productId.value = id;
			frm.submit();
		}
		function productDelete(id) {
			if (confirm("삭제하시겠습니까?")) {
				let frm = document.getElementById("frm2");
				frm.productId.value = id;
				frm.submit();
			}
		}
	</script>
</body>
</html>