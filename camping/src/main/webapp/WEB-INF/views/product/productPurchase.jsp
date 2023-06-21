<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div class="container">
			<!-- 내용 작성 -->
			<h2>주문 정보 입력</h2>
			<form action="주문 처리 파일의 URL" method="POST">
				<label for="name">이름</label> <input type="text" id="name"
					name="name" placeholder="이름을 입력해주세요." required> <label
					for="email">이메일</label> <input type="email" id="email" name="email"
					placeholder="이메일을 입력해주세요." required> <label for="address">주소</label>
				<input type="text" id="address" name="address"
					placeholder="주소를 입력해주세요." required> <label for="phone">전화번호</label>
				<input type="tel" id="phone" name="phone"
					placeholder="전화번호를 입력해주세요." required>
				<button type="submit">주문하기</button>
			</form>
		</div>

		<div align="right">
			<p>최종 결제 금액</p>
			<h3>${product.productPrice}<span>원</span>
			</h3>
		</div>
	</div>
</body>
</html>