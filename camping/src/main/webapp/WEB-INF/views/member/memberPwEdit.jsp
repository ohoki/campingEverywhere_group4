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
		<form id="frm" action="memberPwEdit.do" onsubmit="return formCheck()"
			method="post">
			<div>
				<table>
					<tr>
						<th>기존 비밀번호</th>
						<td><input type="password" id="currPw" name="currPw"
							required="required"></td>
					</tr>
					<tr>
						<th>새로운 비밀번호</th>
						<td><input type="password" id="memberPw" name="memberPw"
							required="required"></td>
					</tr>
					<tr>
						<th>새로운 비밀번호 확인</th>
						<td><input type="password" id="memberPw1" name="memberPw1"
							required="required"></td>
					</tr>
				</table>
			</div>
			<div>
				<input type="hidden" id="memberId" name="memberId" value="${id }">
			</div>
			<div>
				<input type="submit" value="수정">&nbsp;&nbsp; <input
					type="reset" value="취소">&nbsp;&nbsp;
			</div>
		</form>
	</div>
	<script type="text/javascript">
	// 비밀번호 체크
  	function formCheck() {
  		let frm = document.getElementById("frm");
  		// 기존비밀번호가 일치할때
  		if (frm.currPw.value == ${pw }){
  			// 새로운 비밀번호가 서로 같을때
  			if(frm.memberPw.value == frm.memberPw1.value){
  				// 기존 비밀번호와 바꿀 비밀번호가 일치하지않을때
  				if(frm.currPw.value != frm.memberPw.value ){
  					// 기존 비밀번호와 두번째 새로운 비밀번호가 일치하지않을때
  					if(frm.currPw.value != frm.memberPw1.value ) {
  						alert("비밀번호 변경 완료 ! \n로그아웃 후 메인화면으로 돌아갑니다")
  						
  						return true;
  						
  					}else {
  						alert("새로운 비밀번호를 확인해주세요")
  						frm.memberPw.value = "";
  						frm.memberPw1.value = "";
  						return false;
  					}
  		
  				} else {
  					alert("기존 비밀번호와 새로운 비밀번호가 일치합니다")
  						frm.currPw.value = "";
  					  	frm.memberPw.value = "";
  						frm.memberPw1.value = "";
  					return false;
  				}
  			}else {
  				alert("새로운 비밀번호가 서로 일치하지않습니다")
  				  	frm.memberPw.value = "";
  					frm.memberPw1.value = "";
  				return false;
  			}
  			
  		} else {
  			alert("기존 비밀번호가 일치하지않습니다")
  				frm.currPw.value = "";
  			return false;
  		}
  		return true;
  	}


	</script>
</body>
</html>