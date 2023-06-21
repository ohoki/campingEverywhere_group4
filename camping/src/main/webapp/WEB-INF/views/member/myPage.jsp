<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
}

.container {
	text-align: center;
	width: 80%;
	margin: 0 auto;
	padding: 20px;
	width: 80%;
}

.my_header {
	display: flex;
	justify-content: space-between;
	padding: 0 50px;
	margin: 60px 0;
}

h3 {
	color: #333;
}

form {
	margin-bottom: 20px;
}

button {
	background-color: #8aa1a1;
	border: none;
	color: white;
	border-radius: 5px;
	width: 80px;
	height: 35px;
	font-size: 14px;
	cursor: pointer;
}

button[type="submit"] {
	background-color: #8aa1a1;
	border: none;
	color: white;
	border-radius: 5px;
	font-size: 14pt;
	margin-top: 10px;
	padding: 10px 20px;
	cursor: pointer;
}

button:hover {
	background-color: #638181;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #8aa1a1;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

body[data-darkmode=on] h3 {
	color: #F7F7F7;
}
</style>
</head>
<body>
	<div class="container">
		<div class="my_header">
			<h2>마이 페이지</h2>
			<button type="button" onclick="location.href='memberEditForm.do'">정보
				수정</button>
		</div>
		<div>
			<!-- 단순 예시 수정 필요 -->
			<h3>최근 주문 정보</h3>
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
						<!-- 배송조회 페이지 코드 참조해서 다시 구현하기 -->
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
					</tbody>
				</table>
			</div>
			<div>
				<h3>장바구니</h3>
			</div>
			<div align="right" style="padding: 20px 50px;">
				<button type="button" onclick="memberDelete()">회원 탈퇴</button>
				<form action="memberDelete.do" method="post" id = "frm">
					<input type="hidden" name="memberId" value="${id }">
				</form> 
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function memberDelete() {
			let frm = document.getElementById("frm");
			let result = confirm("정말 탈퇴하시겠습니까?");
			if (result == true){ 
				frm.submit();
			}else if (result == false){
			  alert("취소되었습니다");
			  location.href= "myPage.do";
			}
		}
	</script>
</body>
</html>