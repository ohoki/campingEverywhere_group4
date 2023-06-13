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
		
		<div><h1>게시글 수정</h1></div>
		<div>
			<form id="frm" action="boardUpdate.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="150">작성자</th>
							<td width="150">
								${board.memberId}
							</td>
							<th width="150">작성일자</th>
							<td width="150">
								<input type="date" id="boardWdate" name="boardWdate" value="${board.boardeWdate}">
							</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="3">
								<input type="text" id="boardTitle" name="boardTitle" size="98" value="${board.boardTitle}">
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="3">
								<textarea rows="10" cols="100" id="boardSubject" name="boardSubject">${board.boardSubject}</textarea>
							</td>
						</tr>
					</table>
				</div><br>
				<div>
					<input type="hidden" name="boardId" value="${board.boardId}">
				</div>
				<div>
					<input type="submit" value="등록">&nbsp;&nbsp;
					<input type="reset" value="취소">&nbsp;&nbsp;
					<input type="button" value="목록" onclick="location.href='boardList.do'">&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
</body>
</html>