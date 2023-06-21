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
				<form id="frmsearch" action="productSearch.do" method="post">
					<input type="text" placeholder="검색" id="search" name="search">
					<button type="submit">
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
										<!-- 다크모드 토글 -->
					<li>
						<div class="wrap">
							<div class="darkmode">
								<div class="inner">
									<input type="radio" name="toggle" id="toggle-radio-light"
										checked><label for="toggle-radio-light"
										class="tolight"><i class="fas fa-sun tolight"></i></label> <input
										type="radio" name="toggle" id="toggle-radio-dark"><label
										for="toggle-radio-dark" class="todark"><i
										class="fas fa-moon todark"></i></label>
									<div class="darkmode-bg"></div>
								</div>
							</div>
						</div>
					</li>
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
					<li><a class="nav-link scrollto" href="productList.do?value=전체상품">전체상품</a></li>
					<li><a class="nav-link scrollto"
						href="productIndividualList.do?value=텐트/타프">텐트/타프</a></li>
					<li><a class="nav-link scrollto"
						href="productIndividualList.do?value=의자/테이블/퍼니처류">의자/테이블/퍼니처류</a></li>
					<li><a class="nav-link scrollto"
						href="productIndividualList.do?value=소품/액세서리">소품/액세서리</a></li>
					<li><a class="nav-link scrollto"
						href="productIndividualList.do?value=코펠/쿨러/식기류">코펠/쿨러/식기류</a></li>
					<li><a class="nav-link scrollto" href="campingRecommend.do">캠핑장 찾기</a></li>
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
    
		function cart(){
			let singIn = "${id}";
			if (singIn == "") {
				alert("장바구니는 로그인 후 사용하실 수 있습니다.")
				location.href = 'memberLoginForm.do';
			} else {
				location.href = 'cart.do';
			}
		}
		
		/* 다크모드 스크립트 */
		
		 document.addEventListener('DOMContentLoaded', function(){
           //다크모드 토글
           if(document.querySelector('.darkmode')){
               if(localStorage.getItem("darkmode") == 'on'){
                   //다크모드 켜기
                   document.body.dataset.darkmode='on';
                   document.querySelector('#toggle-radio-dark').checked = true;
               }
               //다크모드 이벤트 핸들러
               document.querySelector('.darkmode').addEventListener("click", e=>{
                   if(e.target.classList.contains('todark')){
                       document.body.dataset.darkmode='on';
                       localStorage.setItem("darkmode", "on");
                   }else if(e.target.classList.contains('tolight')){
                       document.body.dataset.darkmode='off';
                       localStorage.setItem("darkmode", "off");
                   }
               },false);
           }else{
               localStorage.removeItem("darkmode");
           }

       })
	</script>
</body>
</html>