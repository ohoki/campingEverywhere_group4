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
		<form id="frmall" name="frmall" action="allPurchase.do" method="post">
			<table border="1">
				<thead>
					<tr>
						<th width="50">번호</th>
						<th width="300">상품명/옵션 정보</th>
						<th width="200">수량</th>
						<th width="200">상품 금액</th>
						<th width="200">합계 금액</th>
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
								<td>${c.PRODUCT_NAME}&nbsp;&nbsp;${c.product_image}<img
									alt="상품1" class="image"
									src="assets/img/products/'${c.product_image}'" /></td>
								<td><input id="count" type="number" min="1" max="100"
									value="1" size="5" /></td>
								<td>${c.PRODUCT_PRICE}</td>
								<td>${c.PRODUCT_PRICE}<span>원</span></td>
								<td><input type="button" onclick="cartDelete(${c.CART_ID})"
									value="삭제" /></td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</form>
		<br>
		<div align="center">
			<label for="sum">총 가격 : </label> <input type="text" id="total"
				name="total" readonly="readonly" size=10><span>원</span>
		</div>
		<br>
		<form id="frm" action="cartDelete.do" method="post">
			<input type="hidden" name="cartId" id="cartId">
		</form>
		<div align="center">
			<button onclick="purchaseAllItems()">구매</button>
		</div>
	</div>


	<script type="text/javascript">
		function cartDelete(id) {
			let frm = document.getElementById("frm");
			frm.cartId.value = id;
			console.log(frm.cartId.value);
			frm.submit();
		}

		function purchaseAllItems() {
			let frm = document.getElementById("frmall")
			frm.submit;
		}

	</script>
</body>
</html>
