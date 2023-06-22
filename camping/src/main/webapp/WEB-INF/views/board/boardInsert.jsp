<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.board_bottom input {
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
	<div align="center">
		<div>
			<h1>게시글 등록</h1>
		</div>
		<div>
			<form id="frm" action="boardInsert.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="100">작성자</th>
								<td width="100"><input type="text" id="memberId"
									name="memberId" value="${name}" readonly>
								</td>
							<th width="100">카테고리</th>
							
							<td width="100">
								<select id="boardKate" name="boardKate" required="required">
									<option value="">선택</option>
									<c:if test="${auth eq 'A'}"> 
									<option value="공지사항">공지사항</option>
									</c:if>
									<option value="문의사항">문의하기</option>
								</select>
							</td>
						<tr>
							<th>제목</th>
								<td colspan="3"><input type="text" id="boardTitle" required="required"
								name="boardTitle" size="97">
								</td>
						</tr>
						<tr>
							<th>내용</th>
								<td colspan="3"><textarea rows="10" cols="99"
									id="boardSubject" name="boardSubject" required="required"></textarea>
								</td>
						</tr>
					</table>
				</div>
				<br>
				
				<div class="board_bottom">
					<input type="submit" value="등록">&nbsp;&nbsp; 
					<input type="reset" value="취소">&nbsp;&nbsp; 
					<input type="button" value="목록" onclick="location.href='boardList.do'">&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
</body>
</html>