<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	td, th{
	 border: 1px solid black;
	 padding: 5px 0;
	}
</style>
</head>
<body>
	<div align="center">
		<div>
			<button type="button" onclick="location.href='boardList.do'">공지사항</button>
			<button type="button" onclick="location.href='boardList.do'">구매후기</button>
			<button type="button" onclick="location.href='boardList.do'">문의사항</button>
		</div>
		<div><h1>게시글 목록</h1></div>
		<table>
			<thead>
				<tr>
					<th>게시물 번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boards}" var="b">
					<tr onclick = boardChoice(${b.boardId});
					>
						<td>${b.boardId}</td>
						<td>${b.memberId}</td>
						<td>${b.boardTitle}</td>
						<td>${b.boardWdate}</td>
						<td>${b.boardHit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><br>
		<div align="center">
		  <select name="searchType">
		      <option value="boardTitle">제목</option>
		         <option value="boardSubject">내용</option>
		      <option value="memberId">작성자</option>
		  </select>
		  	<input type="text" name="keyword" />
		  <button type="button">검색</button>
		</div>
		<div align="center">
			<%-- <c:if test="${not empty id }"> --%>
				<button type="button" onclick="location.href='boardInsertForm.do'">글작성</button>
			<%-- </c:if> --%>
		</div>
	<div>
		<form id="frm" action="boardSelect.do" method="post">
			<input type="hidden" id="boardId" name="boardId">
		</form>
	</div>
	<script type="text/javascript">
		function boardChoice(id) {
			let frm = document.getElementById("frm");
			frm.boardId.value = id;
			frm.submit();
		}
	</script>
</body>
</html>