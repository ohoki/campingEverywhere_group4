<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align = "center">
		<form id = "frm" action="memberEdit.do" method="post">
			<table>
				<tr>
					<td>이름</td>
					<th><input type="text" id = "memberName" name="memberName" value="${name }"></th>
				</tr>
				<tr>
					<td>주소</td>
					<th><input type="text" id ="memberAddr" name="memberAddr" value="${addr }"></th>
				</tr>
				<tr>
					<td>전화번호</td>
					<th><input type="text" id = "memberTel" name="memberTel" value="${tel }"></th>
				</tr>
			</table>
			<div>
				<input type="hidden" id= memberId name="memberId" value="${id }">
			</div>
			<div>
				<input type="submit" value="저장">&nbsp;&nbsp;
				<input type="button" value="뒤로가기">
			</div>
		</form>
	
	</div>
</body>
</html>