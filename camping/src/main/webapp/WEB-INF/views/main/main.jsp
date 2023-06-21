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
	color: #5a656e;
	transition: all 0.3s ease-in-out;
}

a:hover {
	color: #FF873D;
}

.portfolio-wrap {
	height: 320px;
}

.img-fluid {
	max-height: 100%;
	height: 100%;
	width: 100%;
}
</style>
</head>
<body>
	<div>
		<main id="main">
			<section id="main_img"></section>
			<section id="portfolio" class="portfolio section-bg">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 d-flex justify-content-center">
							<ul id="portfolio-flters">
								<li><a href="#new">NEW 신상품</a></li>
								<li><a href="#best">BEST 제품</a></li>
								<li><a href="#md">MD 추천</a></li>
								<li><a href="#review">구매 후기</a></li>
							</ul>
						</div>
					</div>
					<div class="row portfolio-container">
						<h2 id="new">NEW</h2>
						<c:forEach items="${products1}" begin="0" end="2" step="1" var="p">
							<div class="col-lg-4 col-md-6 portfolio-item">
								<div class="portfolio-wrap">
									<img src="assets/img/products/${p.imageFileName}"
										class="img-fluid" alt="">
									<div class="portfolio-info">
										<h4>${p.productName}</h4>
										<p>${p.productPrice}원</p>
									</div>
									<div class="portfolio-links">
										<a href="assets/img/products/${p.imageFileName}"
											data-gallery="portfolioGallery" class="portfolio-lightbox"
											title="${p.productName}"><i class="bx bx-plus"></i></a> <a
											href="productSelect.do?productId=${p.productId}" title="상품 페이지로"><i
											class="bx bx-link"></i></a>
									</div>
								</div>
							</div>
						</c:forEach>

						<h2 id="best">BEST</h2>
						<c:forEach items="${products2}" begin="0" end="2" step="1" var="p">
							<div class="col-lg-4 col-md-6 portfolio-item">
								<div class="portfolio-wrap">
									<img src="assets/img/products/${p.imageFileName}"
										class="img-fluid" alt="">
									<div class="portfolio-info">
										<h4>${p.productName}</h4>
										<p>${p.productPrice}원</p>
									</div>
									<div class="portfolio-links">
										<a href="assets/img/products/${p.imageFileName}"
											data-gallery="portfolioGallery" class="portfolio-lightbox"
											title="${p.productName}"><i class="bx bx-plus"></i></a> <a
											href="productSelect.do?productId=${p.productId}" title="상품 페이지로"><i
											class="bx bx-link"></i></a>
									</div>
								</div>
							</div>
						</c:forEach>

						<h2 id="md">MD 추천</h2>
						<c:forEach items="${products3}" begin="0" end="2" step="1" var="p">
							<div class="col-lg-4 col-md-6 portfolio-item">
								<div class="portfolio-wrap">
									<img src="assets/img/products/${p.imageFileName}"
										class="img-fluid" alt="">
									<div class="portfolio-info">
										<h4>${p.productName}</h4>
										<p>${p.productPrice}원</p>
									</div>
									<div class="portfolio-links">
										<a href="assets/img/products/${p.imageFileName}"
											data-gallery="portfolioGallery" class="portfolio-lightbox"
											title="${p.productName}"><i class="bx bx-plus"></i></a> <a
											href="productSelect.do?productId=${p.productId}" title="상품 페이지로"><i
											class="bx bx-link"></i></a>
									</div>
								</div>
							</div>
						</c:forEach>

						<h2 id="review">구매 후기</h2>
						<div class="col-lg-4 col-md-6 portfolio-item filter-new">
							<div class="portfolio-wrap">
								<img src="assets/img/portfolio/portfolio-1.jpg"
									class="img-fluid" alt="">
								<div class="portfolio-info">
									<h4>짱구</h4>
									<p>가격</p>
								</div>
								<div class="portfolio-links">
									<a href="assets/img/portfolio/portfolio-1.jpg"
										data-gallery="portfolioGallery" class="portfolio-lightbox"
										title="짱구"><i class="bx bx-plus"></i></a> <a
										href="productSelect.do?productId=${p.productId}" title="상품 페이지로"><i
										class="bx bx-link"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>
	</div>
</body>
</html>