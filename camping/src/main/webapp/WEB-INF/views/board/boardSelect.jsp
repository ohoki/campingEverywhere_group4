<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.board_box {
	width: 60%;
	margin: 0 auto;
}

.title {
	font-weight: 500;
	line-height: 1.2;
	font-size: 1.3em;
	font-family: sans-serif;
	color: #5a656e;
	margin: 10px 0;
}

.board_bottom button {
	border: 1px solid #5a656e;
	background-color: #5a656e;
	padding: 0;
	margin-bottom: 20px;
	width: 70px;
	height: 28px;
	color: white;
}

.view {
	color: #5a656e;
}

table {
	width: 100%;
	margin: 0 auto;
	text-align: center;
}

table th {
	width: 10%;
	border: 2px solid #bbb;
	font-size: 1.2em;
}

table td {
	width: 25%;
	padding: 0 1.2%;
	border: 2px solid #bbb;
	
}
</style>
</head>
<body>
	<div class="board_box">
		<h1 class="title">게시글 보기</h1>
		<div class="view" align="center">
			<table>
				<tbody>
					<tr>
						<th>제목</th>
						<td>${board.boardTitle}</td>
						<th>조회수</th>
						<td>${board.boardHit}</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${board.memberId}</td>
						<th>작성일자</th>
						<td>${board.boardWdate}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td style="height: 230px; text-align: left;" colspan="3">${board.boardSubject}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<div class="board_bottom" align="center">
			<c:if test="${name eq name}">
				<button type="button" onclick="callFunction('E')">수정</button>&nbsp;&nbsp;
				<button type="button" onclick="callFunction('D')">삭제</button>&nbsp;&nbsp;
			 </c:if>
			<button type="button" onclick="location.href='boardAll.do'">목록</button>
			<div>
				<form id="frm" method="post" action="">
					<input type="hidden" id="boardId" name="boardId"
						value="${board.boardId}">
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function gopage(p) {
			search.page.value = p
			search.submit()
		}

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