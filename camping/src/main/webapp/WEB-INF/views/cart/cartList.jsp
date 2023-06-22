<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.title {
	font-weight: 500;
	line-height: 1.2;
	font-size: 1.3em;
	text-align: left;
	font-family: sans-serif;
	color: #5a656e;
	margin: 20px 0;
}

table {
	text-align: center;
	margin-bottom: 50px;
}

.first_td {
	display: flex;
	flex-direction: column;
	border: none;
}

.first_td div:nth-child(1) {
	height: 20%;
}

td {
	height: 150px;
	border: 1px solid #bbb;
}

tr, th {
	border: 1px solid #bbb;
}

thead {
	background-color: #8aa1a1;
	color: white;
	font-weight: bold;
}

th {
	height: 70px;
}

.image {
	text-align: center;
	padding: 20px 10px;
	width: 100%;
	height: 80%;
}

.image img {
	max-height: 100%;
	max-width: 100%;
	width: 50%;
}
</style>
</head>
<body>
	<div align="center" style="width: 50%; margin: 0 auto;">
		<form id="frm" name="frm" action="cartDelete.do" method="post">
			<h1 class="title">장바구니</h1>
			<table border="1">
				<thead>
					<tr>
						<th width="50">번호</th>
						<th width="300">상품명/옵션 정보</th>
						<th width="200">수량</th>
						<th width="200">상품 금액</th>
						<th width="200">합계 금액</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty cart}">
						<!-- Display a message when the cart is empty -->
						<tr>
							<td colspan="5">조회 내용이 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty cart}">
						<c:forEach items="${cart}" var="c" varStatus="cList">
							<tr>
								<td>${cList.count}</td>
								<td class="first_td">
									<div>${c.PRODUCT_NAME}</div>
									<div class="image">
										<img alt="상품1" src="assets/img/products/${c.IMAGE_FILE_NAME}" />
									</div>
								</td>
								<td><input id="count" type="number" min="1" max="100"
									value="1" size="5" onchange="quantityChange()" /></td>
								<td><strong>${c.PRODUCT_PRICE}</strong> 원</td>
								<td><strong>${c.PRODUCT_PRICE}</strong> 원</td>
								<td><input type="button" onclick="cartDelete(${c.CART_ID})"
									value="삭제" /></td>
							</tr>
						</c:forEach>
						<input type="hidden" id="cartId" name="cartId">
					</c:if>
				</tbody>
			</table>
		</form>
	</div>


	<script type="text/javascript">
		function cartDelete(id) {
			let frm = document.getElementById("frm");
			frm.cartId.value = id;
			frm.submit();
		}

		function purchaseAllItems() {
			let frm = document.getElementById("frmall");
			frm.submit;
		}
		
		function quantityChange() {
			let count = event.target.value;
			let total = event.target.parentNode.parentNode.children[4].children[0];
			let value = event.target.parentNode.parentNode.children[3].children[0].innerText;
			
			total.textContent = value * count;
		}
	</script>
</body>
</html>
