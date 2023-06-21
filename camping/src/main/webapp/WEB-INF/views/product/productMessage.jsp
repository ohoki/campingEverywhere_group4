<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.but {
	height: 35px;
	width: 150px;
	background-color: #8aa1a1;
	color: white;
	border: 2px solid #8aa1a1;
}

</style>
</head>
<body>
	<div align="center">
		<h1>${message}</h1>
		<br>
		<br>
		<input class="but" type="button" value="목록"
			onclick="location.href='productList.do'">
	</div>
</body>
</html>