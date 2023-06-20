<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 70%;
	border-collapse: collapse;
	border: 1px solid black;
	text-align: center;
}

td, th {
	border: 1px solid black;
	padding: 5px 0;
}
</style>
</head>
<body>
	<div align="center">
		<div>
		
		<div>
			<h1>문의하기</h1>
		</div>
			<div class="container d-flex align-items-center justify-content-center">
			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto" href='boardList.do'>공지사항</a></li>
					<li><a class="nav-link scrollto" href='boardReviewList.do'>구매후기</a></li>
					<li><a class="nav-link scrollto" href='boardQnaList.do'>문의하기</a></li>
				</ul>
			</nav>
		</div>
		<table>
			<thead>
				<tr>
					<th>게시물 번호</th>
					<th>카테고리</th>
					<th>작성자</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boards}" var="b">
					<tr onclick=boardChoice(${b.boardId});>
						<td>${b.boardId}</td>
						<td>${b.boardKate}</td>
						<td>${b.memberId}</td>
						<td>${b.boardTitle}</td>
						<td>${b.boardSubject}</td>
						<td>${b.boardWdate}</td>
						<td>${b.boardHit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<div align="center">
		<form method="post" name="search" action="#">
			<select name="kate" id="kate">
					<option value="title">제목</option>
					<option value="subject">내용</option>
					<option value="writer">작성자</option>
			</select>
			<input type="text" placeholder="검색어 입력" name="search" id="search">
			<button type="submit">검색</button>
		</form>
	</div>
	<div align="center">
		<c:if test="${not empty id }">
			<button type="button" onclick="location.href='boardInsertForm.do'">글작성</button>
		</c:if> 
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