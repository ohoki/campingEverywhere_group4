<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div></div>
		<div>
			<h1>게시글 상세보기</h1>
		</div>
		<div>
			<table border="1">
				<tr align="center">
					<th width="70">순번</th>
					<td width="50">${board.boardId}</td>
					<th width="100">작성자</th>
					<td width="150">${board.memberId}</td>
					<th width="100">작성일자</th>
					<td width="150">${board.boardWdate}</td>
					<th width="100">조회수</th>
					<td width="70">${board.boardHit}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="7">${board.boardTitle}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="7"><textarea rows="10" cols="108">${board.boardTitle}</textarea>
					</td>
				</tr>
			</table>
		</div>
		<br>
		<div>
			<c:if test="${name eq board.memberId}">
				<button type="button" onclick="callFunction('E')">수정하기</button>&nbsp;&nbsp;
				<button type="button" onclick="callFunction('D')">삭제하기</button>&nbsp;&nbsp;
			</c:if>
			<button type="button" onclick="location.href='boardList.do'">목록</button>
		</div>
		<div>
			<form id="frm" method="post" action="">
				<input type="hidden" id="boardId" name="boardId"
					value="${board.boardId}">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function callFunction(str) {
			let frm = document.getElementById("frm");
			if (str == "E") {
				frm.action = "boardEdit.do"
			} else if (str == "D") {
				frm.action = "boardDelete.do"
			}
			frm.submit();
		}
	</script>
</body>
</html>