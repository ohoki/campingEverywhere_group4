<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form id="frm" action="productEdit.do" method="post">
			<table border="1">
				<tr>
					<td>상품 이미지</td>
					<td height="300px" width="300px">
						<!-- 
					<img src="${path}/images/${vo.productImage}" height="300px" width="300px">이미지 -->
						<br>
					</td>
				</tr>
				<tr>
					<td>상품ID</td>
					<td>${product.productId}</td>
				</tr>
				<tr>
					<td>상품명</td>
					<td><input type="text" id="productName" name="productName"
						value="${product.productName}"></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" id="productPrice" name="productPrice"
						value="${product.productPrice}"></td>
				</tr>
				<tr>
					<td>상품 카테고리</td>
					<td><input type="text" id="productKategorie"
						name="productKategorie" value="${product.productKategorie}"></td>
				</tr>
				<tr>
					<td>상품 입고일</td>
					<td><input type="date" id="productDate" name="productDate"
						value="${product.productDate}"></td>
				</tr>

			</table>
			<br> <input type="hidden" id="productId" name="productId"
				value="${product.productId}">
			<button type="submit">수정</button>
			&nbsp;&nbsp;
			<button type="reset">취소</button>
			&nbsp;&nbsp;
			<button type="button" onclick="location.href='productList.do'">목록</button>
		</form>
	</div>
</body>
</html>