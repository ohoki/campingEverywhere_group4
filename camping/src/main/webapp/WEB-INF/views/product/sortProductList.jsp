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
	width: 60%;
	text-align: center;
	margin: 30px auto;
}

.header_section {
	width: 100%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.header_section button {
	background-color: #8aa1a1 !important;
	color: white !important;
	border: 1px solid #8aa1a1 !important;
	margin: 3px 5px;
	width: 80px;
	height: 35px;
}

.title {
	font-weight: 500;
	line-height: 1.2;
	font-size: 1.3em;
	text-align: left;
	font-family: sans-serif;
	color: #5a656e;
	margin: 0;
}

.header_box {
	display: flex;
	justify-content: space-between;
	width: 100%;
	margin: 20px auto 5px;
	padding: 0 0 5px;
	border-bottom: 1px solid #5a656e;;
}

ul, li {
	margin: 0px;
	padding: 0px;
	list-style: none;
	cursor: pointer;
}

.main_box {
	width: 100%;
	margin: 20px auto 50px;
}

.main_list {
	display: flex;
	justify-content: left;
	flex-wrap: wrap;
}

.main_list li {
	width: 21%;
	margin: 50px 2%;
}

.main_list li img {
	width: 100%;
	max-width: 100%;
	height: 80%;
}
</style>
</head>
<body>
	<form id="frm" action="productSelect.do" method="post">
		<input type="hidden" id="productId" name="productId">
	</form>
	<div class="box">
		<div class="header_section">
			<h1 class="title">${kate }</h1>
			<c:if test="${auth == 'A' }">
				<div>
					<button type="button"
						onclick="location.href='productInsertForm.do'">제품등록</button>
				</div>
			</c:if>
		</div>
		<div class="header_box">
			<span>상품 <strong>${sortProducts.size()}</strong> 개
			</span> <select onchange="sortProduct()" id="sortStandard">
				<option value="productSales">판매인기순</option>
				<option value="productPriceLow">낮은가격순</option>
				<option value="productPriceHigh">높은가격순</option>
				<option value="productDate">등록일순</option>
			</select>
		</div>
		<div class="main_box">
			<ul class="main_list">
				<c:forEach items="${sortProducts}" var="p">
					<li><img alt="상품1"
						src="assets/img/products/${p.imageFileName}"
						onclick="productchoice('${p.productId}')">
						<p>${p.productName}</p>
						<p>${p.productPrice}원</p></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
		window.onload = function() {
			let kategories = document.getElementById("sortStandard");
			let kategorie = kategories.getElementsByTagName("option");

			for (let i = 0; i < kategorie.length; i++) {
				if (kategorie[i].value == "${sortStandard}") {
					kategorie[0].removeAttribute('selected');
					kategorie[i].setAttribute('selected', '');
					break;
				}
			}
		};

		function productchoice(id) {
			let frm = document.getElementById("frm");
			frm.productId.value = id;
			frm.submit();
		}

		function sortProduct() {
			let sortStandard = document.getElementById("sortStandard").value;
			location.href = "SortProduct.do?sortStandard=" + sortStandard;
		}
	</script>
</body>
</html>