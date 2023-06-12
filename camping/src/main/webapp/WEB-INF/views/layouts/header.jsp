<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
	<!-- ======= Header Top======= -->
	<header id="header_top" class="d-flex align-items-center">
	    <div class="container d-flex align-items-center justify-content-between">
	    
			<div class="logo">
			  <a href="main.do"><img src="assets/img/favicon.png" alt="로고"></a>
			  <form action="#" method="post" name="search">
			    <input type="text" placeholder="검색" name="search">
			    <button><i class="fa-solid fa-magnifying-glass" style="color: #9c9c9c;"></i></button>
			  </form>
			</div>
	
		<nav id="navbar" class="navbar">
			<ul>
			  <li><a class="small nav-link scrollto" href="#">로그인</a></li>
			  <li><a class="small nav-link scrollto" href="#">회원가입</a></li>
			  <li><a class="small nav-link scrollto" href="#">장바구니</a></li>
			  <li><a class="small nav-link scrollto" href="#">마이페이지</a></li>
			  <li><a class="small nav-link scrollto" href="#">주문/배송조회</a></li>
			  <li><a class="small nav-link scrollto" href="#">고객센터</a></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
	
	    </div>
	</header>

	<!-- hero -->
	<section id="hero" class="d-flex flex-column align-items-center justify-content-center">
	  <h1>Camping Everywhere</h1>
	</section>

	<!-- ======= Header Bottom======= -->
	<header id="header" class="d-flex align-items-center">
		<div class="container d-flex align-items-center justify-content-center">
			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto" href="#">텐트/타프</a></li>
					<li><a class="nav-link scrollto" href="#">의자/테이블/퍼니처류</a></li>
					<li><a class="nav-link scrollto" href="#">소품/액세서리</a></li>
					<li><a class="nav-link scrollto" href="#">코펠/쿨러/식기류</a></li>
					<li><a class="nav-link scrollto" href="campingRecommend.do">캠핑장 추천</a></li>
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>