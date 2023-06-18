<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.prodcut_inf {
	border: 1px solid #bbb;
	padding: 5px;
	height: 386px;
	width: 100%;
	margin: 40px 0;
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
	width: 100%;
	max-width: 100%;
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

.prodcut_inf_menu button {
	width: 100%;
	height: 35px;
	margin: 3px 10px;
	border: 1px solid #8aa1a1;
	background-color: #8aa1a1 !important;
	color: white !important;
	background-color: #8aa1a1 !important;
	margin: 3px 10px;
}
</style>
</head>
<body>
	<div style="margin: 50px auto">
		<div class="w3-margin-top w3-main" style="margin: auto; width: 60%;">
			<form action="" method="post">
				<div class="w3-center w3-text-white w3-round">
					<h3 style="color: black; text-align: left;">${product.productName}</h3>
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
						<button type="button"
							onclick="productEditForm('${product.productId}')">장바구니</button>
						<button type="button"
							onclick="productDelete('${product.productId}')">구매하기</button>
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
	</script>
</body>
</html>