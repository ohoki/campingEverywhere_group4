<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>

<style type="text/css">
input:autofill, input:autofill:hover, input:autofill:focus, input:autofill:active
	{
	-webkit-text-fill-color: #000;
	-webkit-box-shadow: 0 0 0px 1000px #fff inset;
	box-shadow: 0 0 0px 1000px transparent inset;
	transition: background-color 5000s ease-in-out 0s;
}
</style>
</head>
<body>
	<!-- ======= Header Top======= -->
	<header id="header_top" class="d-flex align-items-center">
		<div
			class="container d-flex align-items-center justify-content-between">

			<div class="logo">
				<a href="main.do"><img src="assets/img/favicon.png" alt="로고"></a>
				<form action="#" method="post" name="search">
					<input type="text" placeholder="검색" name="search">
					<button>
						<i class="fa-solid fa-magnifying-glass" style="color: #9c9c9c;"></i>
					</button>
				</form>
			</div>
			<nav id="navbar" class="navbar">
				<ul>
					<c:if test="${empty id }">
						<li><a class="small nav-link scrollto"
							href="memberLoginForm.do">로그인</a></li>
						<li><a class="small nav-link scrollto" href="memberJoin.do">회원가입</a></li>
					</c:if>
					<c:if test="${not empty id }">
						<li><a class="small nav-link scrollto" href="memberLogout.do">로그아웃</a></li>
					</c:if>
					<c:if test="${auth == 'A' }">
						<li><a class="small nav-link scrollto"
							href="productInsertForm.do">상품등록</a></li>
					</c:if>
					<li><a class="small nav-link scrollto"
						href="javascript:cart()">장바구니</a></li>
					<li><a class="small nav-link scrollto" href="javascript:myPage()">마이페이지</a></li>
					<li><a class="small nav-link scrollto"
						href="javascript:delivery()">주문/배송조회</a></li>
					<li><a class="small nav-link scrollto" href="boardList.do">고객센터</a></li>
					<li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
		</div>
	</header>

	<!-- hero -->
	<section id="hero"
		class="d-flex flex-column align-items-center justify-content-center">
		<h1>Camping Everywhere</h1>
	</section>

	<!-- ======= Header Bottom======= -->
	<header id="header" class="d-flex align-items-center">
		<div
			class="container d-flex align-items-center justify-content-center">
			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto" href="productList.do">전체상품</a></li>
					<li><a class="nav-link scrollto"
						href="productIndividualList.do?value=텐트/타프">텐트/타프</a></li>
					<li><a class="nav-link scrollto"
						href="productIndividualList.do?value=의자/테이블/퍼니처류">의자/테이블/퍼니처류</a></li>
					<li><a class="nav-link scrollto"
						href="productIndividualList.do?value=소품/액세서리">소품/액세서리</a></li>
					<li><a class="nav-link scrollto"
						href="productIndividualList.do?value=코펠/쿨러/식기류">코펠/쿨러/식기류</a></li>
					<li><a class="nav-link scrollto" href="campingRecommend.do">캠핑장추천</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<script type="text/javascript">
		function delivery() {
			let singIn = "${id}";
			if (singIn == "") {
				alert("주문배송 페이지는 로그인 후 사용하실 수 있습니다.")
				location.href = 'memberLoginForm.do';
			} else {
				location.href = 'deliveryList.do';
			}
		}
		function myPage() {
			let singIn = "${id}";
			if (singIn == "") {
				alert("마이페이지는 로그인 후 사용하실 수 있습니다.")
				location.href = 'memberLoginForm.do';
			} else {
				location.href = 'myPage.do';
			}
		}
	</script>
</body>
</html>