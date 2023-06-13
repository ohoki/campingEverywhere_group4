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
		<div>
			<h1>제품 목록 보기</h1>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th width="100">제품코드</th>
						<th width="100">제품명</th>
						<th width="100">제품가격</th>
						<th width="100">제품카테고리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${products}" var="p">
						<tr onmouseover='this.style.background="#9fff80";'
							onmouseleave='this.style.background="#FFFFFF";'
							onclick="productchoice('${p.productId}')">
							<td>${p.productId}</td>
							<td>${p.productName}</td>
							<td>${p.productPrice}</td>
							<td>${p.productKategorie}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<br>
		<div>
			<button type="button" onclick="location.href='productInsertForm.do'">제품등록</button>
		</div>
		<form id="frm" action="productSelect.do" method="post">
			<input type="hidden" id="productId" name="productId">
		</form>
	</div>
	<script type="text/javascript">
		function productchoice(id) {
			let frm = document.getElementById("frm");
			frm.productId.value = id;
			frm.submit();
		}
	</script>
</body>
</html>