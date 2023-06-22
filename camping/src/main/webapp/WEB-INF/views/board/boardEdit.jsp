<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
.editForm {
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
	text-align: left;
}

.board_bottom input {
	border: 1px solid #5a656e;
	background-color: #5a656e;
	padding: 0;
	margin: 0;
	width: 70px;
	height: 28px;
	color: white;
}

table {
	width: 100%;
}

th {
	width: 10%;
}

td {
	padding: 5px 0;
}

textarea {
	resize: none;
	border: 1px solid #bbb;
}

#boardTitle {
	margin: 10px 0;
	padding: 5px 0;
	border: 1px solid #bbb;
}

.board_bottom {
	margin-bottom: 40px;
	text-align: center;
}
</style>
<body>
	<div class="editForm">
		<div><h1 class="title">게시글 수정</h1></div>
		<div>
			<form id="frm" action="boardUpdate.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="150">작성자</th>
							<td width="150">
								${board.memberId}
							</td>
							<th width="100">분류</th>
								<td width="100">
									<select id="boardKate" name="boardKate" required="required">
										<option value="공지사항">공지사항</option>
										<option value="문의사항">문의사항</option>
									</select>
								</td>
							<%-- <th width="150">작성일자</th>
							<td width="150">
								<input type="date" id="boardWdate" name="boardWdate" value="${board.boardWdate}">
							</td> --%>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="3">
								<input type="text" id="boardTitle" name="boardTitle" value="${board.boardTitle}" style="width: 100%;">
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="3">
								<textarea rows="10" cols="100" id="boardSubject" name="boardSubject" style="width: 100%;">${board.boardSubject}</textarea>
							</td>
						</tr>
					</table>
				</div><br>
				<div>
					<input type="hidden" name="boardId" value="${board.boardId}">
				</div>
				<div class="board_bottom">
					<input type="submit" value="저장">&nbsp;&nbsp;
					<input type="reset" value="취소">&nbsp;&nbsp;
					<input type="button" value="목록" onclick="location.href='boardList.do'">&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
</body>
</html>