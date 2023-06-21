<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상세 내역</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 20px;
}

h2 {
	margin-bottom: 10px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
}

th {
	background-color: #f2f2f2;
	text-align: left;
}

.image {
	width: 150px;
	height: 150px;
}

.form-label {
	display: block;
	margin-bottom: 5px;
}

.form-input {
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.submit-button {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div align="center">
		<h2>주문 상세 내역</h2>
		<form action="deliveryInsert.do" method="post">
			<table>
				<thead>
					<tr>
						<th width="300px">상품/옵션 정보</th>
						<th width="200px">수량</th>
						<th width="200px">상품 금액</th>
						<th width="200px">합계 금액</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><img alt="상품1" class="image"
							src="assets/img/products/${product.imageFileName}">
							${product.productName}</td>
						<td>남은 수량 : ${product.productQuantity}</td>
						<td>${product.productPrice}</td>
						<td>임시</td>
					</tr>
				</tbody>
			</table>
			<h2>주문 정보 입력</h2>
			<div>
				<label class="form-label" for="name">이름</label> <input
					class="form-input" type="text" id="name" name="name"
					placeholder="이름을 입력해주세요." required>
			</div>
			<div>
				<label class="form-label" for="email">이메일</label> <input
					class="form-input" type="email" id="email" name="email"
					placeholder="이메일을 입력해주세요." required>
			</div>
			<div>
				<label class="form-label" for="address">주소</label> <input
					class="form-input" type="text" id="addr" name="address" readonly>
			</div>
			<div>
				<label class="form-label" for="phone">전화번호</label> <input
					class="form-input" type="tel" id="phone" name="phone"
					placeholder="전화번호를 입력해주세요.">
			</div>
			<div>
				<input type="hidden" id="productId" name="productId"
					value="${product.productId}">
				<button class="submit-button" type="submit">주문하기</button>
			</div>
		</form>
		<div>
			
		</div>
	</div>

	<script>
  
</script>
</body>
</html>