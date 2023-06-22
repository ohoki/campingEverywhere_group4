<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

.review_haader {
	display: flex;
	justify-content: space-between;
	padding: 0 20px;
}

.review_haader button {
	background-color: #8aa1a1 !important;
	color: white !important;
	border: 1px solid #8aa1a1 !important;
	margin: 3px 5px;
	width: 80px;
	height: 40px;
}

.review_img {
	float: left;
	width: 60%;
	display: inline-block;
	height: 100%;
	justify-content: center;
	align-items: center;
	display: flex;
	justify-content: center;
	align-items: center;
}

.review_img img {
	width: 80%;
	max-width: 100%;
	max-height: 100%;
	height: 95%;
}

textarea {
	width: 100%;
	margin-top: 15px;
	resize: none;
	border: 1px solid #bbb;
	height: 70%;
}

#reviewTitle {
	width: 100%;
	border: 1px solid #bbb;
}

.review_form {
	border: 1px solid #bbb;
	padding: 5px;
	height: 386px;
	width: 100%;
	margin: 40px 0;
	display: flex;
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

.menu_btn input {
	border: 1px solid #8aa1a1;
	background-color: #8aa1a1 !important;
	color: white !important;
	border: #8aa1a1 !important;
	height: 30px;
}
</style>
<script src="https://kit.fontawesome.com/8af996bb56.js"></script>
</head>
<body>
	<div style="margin: 50px auto">
		<div style="margin: auto; width: 60%;">
			<form action="" method="post" id="frm">
				<div class="review_haader">
					<h3 class="title">리뷰 상세보기</h3>
					<div>
						<c:if test="${id == review.memberId}">
							<button type="button"
								onclick="location.href='reviewUpdateForm.do?reviewId=${review.reviewId}'">수정</button>
							<button type="button" onclick="reviewDelete()">삭제</button>
						</c:if>
					</div>
				</div>
				<div class="review_form">
					<div class="review_img">
						<img alt="상품1" src="assets/img/review/${review.imageFileName}">
					</div>
					<div class="review_inf">
						<div>
							<label for="memberId"> 작성자 <input type="text"
								value="${review.memberId}" readonly="readonly" name="memberId">
							</label> <label for="reviewRate">평점 : <c:forEach begin="1"
									end="${review.reviewRate}" step="1">
									<i class="fa-solid fa-star" style="color: #fad900;"></i>
								</c:forEach>
							</label>
						</div>
						<input type="text" name="reviewTitle" id="reviewTitle"
							value="${review.reviewTitle}" readonly="readonly">
						<textarea rows="11" name="reviewSubject" id="reviewSubject"
							readonly="readonly">${review.reviewSubject}</textarea>
					</div>
				</div>
				<div align="center" class="menu_btn">
					<input type="button" value="뒤로가기"
						onclick="location.href='productSelect.do?productId=${review.productId}'">
					<input type="button" value="홈으로" onclick="location.href='main.do'">
				</div>
				<div>
					<input type="hidden" name="productId" value="${productId}">
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function reviewDelete() {
		let reviewId = "${review.reviewId}";
		if (confirm("정말 삭제하시겠습니까?")) {
			location.href="reviewDelete.do?reviewId=" + reviewId;
		}
	}
	</script>
</body>
</html>