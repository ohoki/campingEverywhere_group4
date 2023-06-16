<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myInfo</title>
</head>
<body>
	<br>
	<div align="center">
		<h3 align="center">${name}님의정보</h3>
		<div>
			<table>
				<tr>
					<th>${name }</th>
				</tr>
				<tr>
					<th>${addr }</th>
					<!-- 내정보 수정하는 버튼 -->
					<td><input type="button" id="memberEdit" name="memberEdit" value="내정보 변경" onclick="menuSelect('A')"></td>
				</tr> 
				<tr>
					<th>${tel }</th>
				</tr>
				<tr>
					<th>비밀번호</th>
					<!-- 버튼 수정하는 버튼 -->
					<td><input type="button" id="memberPwEdit" name="memberPwEdit" value ="비밀번호 변경"
						onclick="menuSelect('B')"></td>
				</tr>
			</table>
				<div>
					<!-- 회원 탈퇴 -->
					<input type="button" id="memberDelete" name = "memberDelete" value="회원 탈퇴" onclick="menuSelect('C')">
				</div>
		</div>
		<form id="frm" method="post" action="">
			<input type="hidden" id="memberId" name="memberId" value="${id }">
		</form>
	</div>

	<script type="text/javascript">
		function menuSelect(str) {
			// 삭제하기 전 확인창 표시
			let frm = document.getElementById("frm");
			if (str == "A") {
				frm.action = "memberEditForm.do";
				frm.submit();
				
			// 내 비밀번호 변경
			} else if (str == "B") {
						frm.action = "memberPwEditForm.do";
						frm.submit();
					//취소 눌렀을때
					
			// 회원 탈퇴
			} else if (str == "C") {
				//삭제하기전 묻는 팝업창
				var result = confirm("정말 탈퇴하시겠습니까?");
				// 확인 눌렀을때
				 if (result == true){ 
						frm.action = "memberDelete.do";
						frm.submit();
					//취소 눌렀을때
					 }else if (result == false){
					   console.log("취소되었습니다");
					 }
			}
		}
		
		
		

	</script>
</body>
</html>