<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 상품 목록</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,500,500i,600,600i,700,700i&subset=cyrillic"
	rel="stylesheet">

<style type="text/css">
.box {
	text-align: center;
	margin: 30px 0;
}
h1 {
	color: black; 
    font-weight: 500;
    line-height: 1.2;
    font-size: calc(1.3rem + .6vw);
}
.header_box {
	display: flex;
	justify-content: space-between;
	width: 60%;
	margin: 20px auto;
}

 ul, li{
 	margin: 0px;
 	padding: 0px;
 	list-style: none;'
 }
 .main_box {
 	width: 60%;
 	margin: 50px auto;
 }
 .main_list {
 	display: flex;
 	justify-content: space-between;
 }
 li {
  	width: 20%
 }
 
</style>
</head>
<body>
	<div class="box">
		<div>
			<h1>전체 상품 보기</h1>
		</div>
		<div class="header_box">
			<span>상품 <strong>${products.size()}</strong> 개
			</span> <select>
				<option>추천순</option>
				<option>판매인기순</option>
				<option>낮은가격순</option>
				<option>높은가격순</option>
				<option>등록일순</option>
				<option>상품평순</option>
			</select>
		</div>
		<div class="main_box">
			<ul class="main_list">
				<c:forEach items="${products}" var="p">
					<li><img alt="상품1"
						src="assets/img/products/${p.imageFileName}"
						onclick="productchoice('${p.productId}')">
						<p>${p.productName}</p>
						<p>${p.productPrice}원</p></li>
				</c:forEach>
			</ul>
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