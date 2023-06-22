<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 등록</title>
<style type="text/css">
.title {
	font-weight: 500;
	line-height: 1.2;
	font-size: 1.3em;
	text-align: left;
	font-family: sans-serif;
	color: #5a656e;
	margin: 0;
}

.review_form {
	border: 1px solid #bbb;
	padding: 5px;
	height: 386px;
	width: 100%;
	margin: 40px 0;
	display: flex;
}

#pfile {
	width: 39%;
	height: 99%;
	border: 1px solid #bbb;
}

.review_inf {
	width: 58%;
	margin: 0 auto;
}

.review_inf div:nth-child(1) {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 5px;
	margin-bottom: 20px;
}

label input {
	border: none;
}

#reviewTitle {
	width: 100%;
	border: 1px solid #bbb;
}

textarea {
	width: 100%;
	margin-top: 15px;
	resize: none;
	border-color: #bbb;
}

.menu_btn input {
	border: 1px solid #8aa1a1;
	background-color: #8aa1a1 !important;
	color: white !important;
	border: #8aa1a1 !important;
}

.product_detail {
	border: 1px solid #8aa1a1;
	width: 100%;
	height: 600px;
	cursor: text;
	overflow: scroll;
	resize: none;
}
</style>
</head>
<body>
	<div style="margin: 50px auto">
		<div class="w3-margin-top w3-main" style="margin: auto; width: 60%;">
			<form action="reviewUpdate.do" method="post" id="frm">
				<div class="w3-center w3-text-white w3-round">
					<h3 class="title">리뷰 수정</h3>
				</div>
				<input type="hidden" name="reviewId" value="${review.reviewId}">
				<div class="w3-margin-bottom w3-border review_form">
					<img alt="상품1" src="assets/img/review/${review.imageFileName}">
					<div class="review_inf">
						<div>
							<label for="memberId"> 작성자 <input type="text"
								value="${id}" readonly="readonly" name="memberId">
							</label> <label for="reviewRate"> 평점 <select id="reviewRate"
								name="reviewRate">
									<option value="5" selected>5점</option>
									<option value="4">4점</option>
									<option value="3">3점</option>
									<option value="2">2점</option>
									<option value="1">1점</option>
							</select>
							</label>
						</div>
						<input type="text" name="reviewTitle" id="reviewTitle"
							value="${review.reviewTitle }">
						<textarea rows="11" name="reviewSubject" id="reviewSubject">${review.reviewSubject}</textarea>
					</div>
				</div>
				<div align="center" class="menu_btn">
					<input type="button" value="취소"
						onclick="location.href='productSelect.do?productId=${review.productId}'">
					<input type="submit" value="수정"
						class="w3-button w3-white w3-round-small">
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		window.onload = function() {
			let kategories = document.getElementById("reviewRate");
			let kategorie = kategories.getElementsByTagName("option");

			for (let i = 0; i < kategorie.length; i++) {
				if (kategorie[i].value == "${review.reviewRate}") {
					kategorie[0].removeAttribute('selected');
					kategorie[i].setAttribute('selected', '');
					break;
				}
			}
		};
	</script>
</body>
</html>