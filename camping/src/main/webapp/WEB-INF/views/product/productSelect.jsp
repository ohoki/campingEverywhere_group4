<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
a {
	text-decoration: none;
	color: white;
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

.product_select_haader {
	display: flex;
	justify-content: space-between;
	padding: 0 20px;
}

.product_select_haader button {
	background-color: #8aa1a1 !important;
	color: white !important;
	border: 1px solid #8aa1a1 !important;
	margin: 3px 5px;
	width: 80px;
	height: 40px;
}

.prodcut_inf {
	border: 1px solid #bbb;
	padding: 20px 5px;
	height: 386px;
	width: 100%;
	margin: 10px 0 50px;
	display: flex;
}

.prodcut_inf_img {
	float: left;
	width: 60%;
	display: inline-block;
	height: 353px;
	justify-content: center;
	align-items: center;
	display: flex;
	justify-content: center;
	align-items: center;
}

.prodcut_inf_img img {
	width: 70%;
	max-width: 100%;
	max-height: 100%;
}

.prodcut_inf_menu {
	width: 39%;
	padding: 30px;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.prodcut_inf_menu_kate {
	margin: 10px;
	display: inline-block;
	width: 100px;
}

.prodcut_cart_num {
	margin: 10px;
	display: inline-block;
	width: 50px;
}

.prodcut_inf_menu button {
	width: 100%;
	height: 35px;
	margin: 3px 10px;
	border: 1px solid #8aa1a1;
	background-color: #8aa1a1 !important;
	color: white !important;
	border-color: #8aa1a1 !important;
	margin: 3px 10px;
}

.main_header {
	border: none;
	background-color: #8aa1a1;
	color: white;
	padding: 3px;
}

.main_header ul {
	display: flex;
	list-style: none;
	margin: 0;
	padding: 5px;
	color: white;
}

.main_header ul li {
	border: 3px solid #8aa1a1;
	padding: 11px 10px;
	margin: 0 15px;
}

.main_header ul li:hover {
	border-bottom: 3px solid white;
}

.product_detail {
	width: 100%;
	height: 700px;
	overflow: scroll;
}

.product_detail::-webkit-scrollbar {
	display: none;
}

.main_footer {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 15px 5px;
	margin: 20px 0 5px;
	border-bottom: 1px solid #8aa1a1;
}

.main_footer h2 {
	font-weight: 500;
	line-height: 1.2;
	font-size: 1.3em;
	text-align: left;
	font-family: sans-serif;
	color: #5a656e;
	margin: 0;
}

.main_footer button {
	border: 1px solid #5a656e;
	background-color: #5a656e;
	padding: 0;
	margin: 0;
	width: 150px;
	height: 28px;
	color: white;
}

.review_table {
	width: 100%;
	border-bottom: 1px solid #bbb;
	text-align: center;
}

.review_table td {
	padding: 10px;
}
</style>
<script src="https://kit.fontawesome.com/8af996bb56.js"></script>
</head>
<body>
	<div style="margin: 50px auto">
		<div class="w3-margin-top w3-main" style="margin: auto; width: 60%;">
			<form action="#" method="post">
				<div class="product_select_haader">
					<h3 class="title">${product.productName}</h3>
					<div>
						<c:if test="${auth == 'A'}">
							<button type="button"
								onclick="productEditForm('${product.productId}')">수정</button>
							<button type="button"
								onclick="productDelete('${product.productId}')">삭제</button>
						</c:if>
					</div>
				</div>
				<div class="w3-margin-bottom w3-border prodcut_inf">
					<div class="prodcut_inf_img">
						<img alt="상품1" src="assets/img/products/${product.imageFileName}">
					</div>
					<div class="prodcut_inf_menu">
						<div>
							<span class="prodcut_inf_menu_kate">상품코드</span> <span>${product.productId}</span>
						</div>
						<div>
							<span class="prodcut_inf_menu_kate">판매가</span> <span><strong>${product.productPrice}</strong>원</span>
						</div>
						<div>
							<span class="prodcut_inf_menu_kate">브랜드</span> <span>${product.productBrand}</span>
						</div>
						<div>
							<span class="prodcut_inf_menu_kate">상품재고</span> <span>${product.productQuantity}개</span>
						</div>
						<button type="button" onclick="cartInsert('${product.productId}')">장바구니</button>
						<button type="button"
							onclick="productPurchaseForm('${product.productId}')">구매하기</button>
						<c:if test="${auth == 'A' && product.recommend == null }">
							<button type="button" onclick="productRecommend(1)">MD추천
								등록</button>
						</c:if>
						<c:if test="${auth == 'A' && product.recommend == 'MD' }">
							<button type="button" onclick="productRecommend(2)">MD추천
								등록 취소</button>
						</c:if>
					</div>
				</div>
			</form>
			<form id="frm1" action="productEditForm.do" method="post">
				<input type="hidden" id="productId" name="productId"
					value="'${product.productId}'">
			</form>
			<form id="frm2" action="productDelete.do" method="post">
				<input type="hidden" id="productId" name="productId"
					value="'${product.productId}'">
			</form>
			<form id="frm3" action="cartInsert.do" method="post">
				<input type="hidden" id="productId" name="productId"
					value="'${product.productId}'">
			</form>
			<form id="frm4" action="productPurchaseForm.do" method="post">
				<input type="hidden" id="productId" name="productId"
					value="'${product.productId}'">
			</form>
			<div class="main_header">
				<ul>
					<li><a href="#productDetail">상품 상세정보</a></li>
					<li><a href="#reveiwTable">상품 후기</a></li>
					<li><a href="boardAll.do">문의하기</a></li>
				</ul>
			</div>
			<div class="product_detail" id="productDetail">${product.productDetail}</div>
			<div>
				<div class="main_footer" id="reveiwTable">
					<h2>상품후기</h2>
					<button type="button" onclick="reviewInsert()">상품후기 글쓰기</button>
				</div>
				<table class="review_table">
					<c:forEach items="${reviews}" var="r">
						<tr>
							<td width="13%"><c:forEach begin="1" end="${r.reviewRate}"
									step="1">
									<i class="fa-solid fa-star" style="color: #fad900;"></i>
								</c:forEach></td>
							<td style="text-align: left; cursor: pointer;"
								onclick="location.href='reviewSelect.do?reviewId=${r.reviewId}'">${r.reviewTitle}</td>
							<td width="15%">${r.memberId}</td>
							<td width="15%">${r.reviewDate}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function productRecommend(num) {
			let productId = "${product.productId}";
			let url = "ajaxUpdateRecommend.do?productId="+productId;
			
			if(num == 1) {
				fetch(url)
				.then(response => response.text())
				.then(text => htmlProcess(text, 1));
			}
			if(num == 2) {
				fetch(url)
				.then(response => response.text())
				.then(text => htmlProcess(text, 2));
			}
		}
		
		function htmlProcess(data, num){
			if(num == 1) {
				if(data == 'complete'){
					alert("'${product.productName}' 상품이 MD추천 상품으로 등록되었습니다.");
					location.reload()
				}else if(data == 'fail'){
					alert("MD추천 상품 등록에 실패했습니다.");
					location.reload()
				}	
			} else if(num == 2) {
				if(data == 'complete'){
					alert("'${product.productName}' 상품이 MD추천 상품에서 제외되었습니다.");
					location.reload()
				}else if(data == 'fail'){
					alert("MD추천 상품 등록 취소에 실패했습니다.");
					location.reload()
				}
			}	
		}
		
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

		function cartInsert(id){
			if (confirm("장바구니에 추가 하시겠습니까?")){
				let singIn = "${id}";
				if (singIn == "") {
					alert("장바구니는 로그인 후 사용하실 수 있습니다.")
					location.href = 'memberLoginForm.do';
				} else{
				let frm = document.getElementById("frm3")
				frm.productId.value = id
				frm.submit();
				}
			}
		}
		
		function productPurchaseForm(id){
			let singIn = "${id}";
			if (singIn == "") {
				alert("장바구니는 로그인 후 사용하실 수 있습니다.")
				location.href = 'memberLoginForm.do';
			} else {
				let frm = document.getElementById("frm4")
				frm.productId.value = id
				frm.submit();
			}
		}
			
		function reviewInsert() {
			let id = "${id}";
			let productId = "${product.productId}";
			console
			if(id != "") {
				location.href="reviewInsertForm.do?productId=" + productId;
			} else {
				alert("로그인 후 이용가능 합니다.");
				location.href="memberLoginForm.do";
			}
		}
	</script>
</body>
</html>