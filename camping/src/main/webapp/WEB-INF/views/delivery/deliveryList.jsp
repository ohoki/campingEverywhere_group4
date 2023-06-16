<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
button {
	background-color: #8aa1a1;
	border: none;
	color: white;
	border-radius: 5px;
	width: 10%;
	height: 35px;
	font-size: 14pt;
	margin-top: 60px;
}
</style>
</head>
<body>
	<div align="center">
		<div>
			<h3>주문 배송 조회</h3>
		</div>
		<div>
			<form id="frm" action="deliveryResearch.do" method="post">
				<button type="button" onclick="dateChange(0)">오늘</button>
				<button type="button" onclick="dateChange(-7)">7일</button>
				<button type="button" onclick="dateChange(-15)">15일</button>
				<button type="button" onclick="dateChange(-30)">1개월</button>
				<button type="button" onclick="dateChange(-90)">3개월</button>
				<button type="button" onclick="dateChange(-365)">1년</button>
				&nbsp;
				<div id="#">
					<input type="date" id="startDay" name="startDay" /> <input
						type="date" id="endDay" name="endDay" />
				</div>
				<div>
					<input type="submit" value="조회">
				</div>
			</form>
		</div>

		<br> <br>
	</div>
	<div align="center">
		<table border="1">
			<thead>
				<tr>
					<th width="200">날짜/주문번호</th>
					<th width="200">상품명/옵션</th>
					<th width="200">상품금액/수량</th>
					<th width="200">주문상태</th>
					<th width="200">확인/리뷰</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty del}">
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>조회 내용이 없습니다.</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>

				</c:if>
				<c:if test="${not empty del}">
					<c:forEach items="${del}" var="d">
						<tr>
							<td><fmt:formatDate value="${d.DELIVERY_DATE}"
									pattern="yy-MM-dd"></fmt:formatDate></td>
							<td>${d.PRODUCT_NAME}</td>
							<td>${d.PRODUCT_PRICE}<span>원</span></td>
							<td>${d.DELIVERY_DATE}</td>
							<!--<button type="button" onclick="location.href=#"></button> 
						버튼 클릭스 리뷰작성으로 가기  -->
							<td>${d.MEMBER_NAME}</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
		<br>
		<div>
			<button type="button" onclick="location.href='deliveryTest.do'">테스트창</button>
		</div>
	</div>
	<script>
		document.getElementById('startDay').value = new Date().toISOString()
				.substring(0, 10);
		;
		document.getElementById('endDay').value = new Date().toISOString()
				.substring(0, 10);
		;
		function dateChange(day) {
			if (day == 0) {
				document.getElementById('startDay').value = new Date()
						.toISOString().substring(0, 10);
				;
			} else {
				document.getElementById('startDay').value = new Date().addDays(
						day).toISOString().substring(0, 10);
				;
			}
		}
		Date.prototype.addDays = function(days) {
			var date = this;
			return new Date(date.setDate(date.getDate() + days));
		}
	</script>
</body>
</html>