<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.main_box {
	width: 60%;
	margin: 0 auto;
	text-align: center;
}

.board_header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 10px 5px;
	margin: 20px 0;
	border-bottom: 1px solid #8aa1a1;
}

.board_header a {
	text-decoration: none;
	padding: 0 10px;
	color: #5a656e;
}

.board_header a:hover {
	color: #FF873D;
}

.board_header ul {
	display: flex;
	list-style: none;
	font-size: 0.9em;
	margin: 0;
	padding: 0;
}

.title {
	font-weight: 500;
	line-height: 1.2;
	font-size: 1.3em;
	text-align: left;
	font-family: sans-serif;
	color: #5a656e;
	margin: 0;
}

table {
	width: 100%;
	margin-bottom: 30px;
}

tr {
	border-bottom: 1px solid #bbb;
}

th, td {
	padding: 10px 0;
}

.board_bottom {
	display: flex;
	justify-content: space-between;
	padding: 5px 10px;
	margin-bottom: 30px;
	align-items: center;
}

form {
	display: flex;
	align-items: center;
}

select {
	height: 28px;
	border: 1px solid #bbb;
}

.board_bottom input {
	padding: 0;
	margin: 0 10px;
	border: 1px solid #bbb;
	height: 28px;
}

.board_bottom button {
	border: 1px solid #5a656e;
	background-color: #5a656e;
	padding: 0;
	margin: 0;
	width: 70px;
	height: 28px;
	color: white;
}
</style>
</head>
<body>
	<div class="main_box">

		<div class="board_header">
			<h1 class="title">고객센터</h1>
			<ul>
				<li><a href='#'>전체 게시글</a></li>
				<li><a href='boardList.do'>공지사항</a></li>
				<li><a href='boardQnaList.do'>문의하기</a></li>
			</ul>
		</div>

		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>카테고리</th>
					<th>제목</th>
					<th>작성일</th>
					<th>작성자</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boards}" var="b">
					<tr onclick=boardChoice(${b.boardId});>
						<td style="width: 6%;">${b.boardId}</td>
						<td style="width: 14%;">${b.boardKate}</td>
						<td style="width: 45%; text-align: left;">${b.boardTitle}</td>
						<td style="width: 13%;">${b.boardWdate}</td>
						<td style="width: 15%;">${b.memberId}</td>
						<td style="width: 8%;">${b.boardHit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="board_bottom">
			<c:if test="${not empty id }">
				<button type="button" onclick="location.href='boardInsertForm.do'">글작성</button>
			</c:if>
			<form method="post" name="serarch" action="boardSearch.do">
				<select name="kate" id="kate">
					<option value="title">제목</option>
					<option value="subject">내용</option>
					<option value="writer">작성자</option>
				</select> <input type="text" placeholder="검색어 입력" name="search" id="search">
				<button type="submit">검색</button>
			</form>
		</div>
		<div>
			<form id="frm" action="boardSelect.do" method="post">
				<input type="hidden" id="boardId" name="boardId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
	
		
		function boardChoice(id) {
			let url = "ajaxBoardHit.do?boardId="+id;
			fetch(url)
			.then(response => response.text())
			.then(text => htmlProcess(text));
			
			frm.boardId.value = id;
			frm.submit();
		}
		
		function htmlProcess(hit) {
			let frm = document.getElementById("frm");
			if(hit=='complete'){
				frm.boardId.value = id;
				frm.submit();
			}else if(hit =='fail'){
				window.reload();
			}
		}
	</script>
</body>
</html>