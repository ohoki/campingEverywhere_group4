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
		<h1>${message }</h1>
		<table>
			<tr>
				<th><input type="button" id="home" name="home" value ="홈으로" onclick="location.href='main.do'"></th>
				<td><input type="button" id="loginForm" name="loginForm" value="로그인" onclick="location.href='memberLoginForm.do'"><td>
			</tr>
		</table>
	</div>
</body>
</html>