<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.but1 {
	height: 30px;
	width: 100px;
	color: white;
	background-color: #8aa1a1;
	border: none;
	outline: none;
	border-radius: 7px;
}

.but2 {
	height: 35px;
	width: 150px;
	background-color: #8aa1a1;
	color: white;
	border: 2px solid #8aa1a1;
}

.but1:hover {
	background-color: black;
	border: 2px solid black;
}

.but2:hover {
	background-color: black;
	border: 2px solid black;
}
</style>
</head>
<body>
	<div class="container" align="center">
		<br>
		<p>회원가입 성공 ! !</p>
		<br> <input class="but2" type="button" onclick="location.href='main.do'"
			id="home" name="home" value="홈으로"> 
			 <input class="but2" type="button"
			onclick="location.href='memberLoginForm.do'" id="loginpage"
			name="loginpage" value="로그인"> <br>
	</div>
</body>
</html>