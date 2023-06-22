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

.title {
	font-weight: 500;
	line-height: 1.2;
	font-size: 1.3em;
	text-align: center;
	font-family: sans-serif;
	color: #5a656e;
	margin: 50px;
}

</style>
</head>
<body>
	<div align="center" style="margin: 50px;">
		<h1 class="title">${message}</h1>
		<br>
		<br>
		<input class="but" type="button" value="목록"
			onclick="location.href='productList.do'">
	</div>
</body>
</html>