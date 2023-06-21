<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#frm {
	margin: 70px 0;
}

#frm h2 {
	text-align: center;
	margin: 30px 0;
}

div.create {
	width: 800px;
	text-align: center;
	padding: 30px;
	border-bottom: 1px solid #8aa1a1;
	margin: 50px auto 20px;
}

table {
	height: 300px;
	width: 900px;
	border-top: 3px solid #8aa1a1;
	margin-right: auto;
	margin-left: auto;
}

td {
	border-bottom: 1px dotted black;
	height: 80px;
}

.col1 {
	background-color: #e8e8e8;
	padding: 10px;
	text-align: center;
	font-weight: bold;
	font-size: 0.8em;
	
}

.col2 {
	text-align: left;
	padding: 10px 20px;
}

.addr {
	width: 500px;
}

.but2 {
	height: 35px;
	width: 150px;
	background-color: #8aa1a1;
	color: white;
	border: 2px solid #8aa1a1;
}


.but2:hover {
	background-color: black;
	border: 2px solid black;
}

p {
	font-size: 0.7em;
	margin: 5px 0 3px 0;
}

.a {
	font-size: 0.7em;
}

.num {
	color: red;
	font-size: 0.7em;
}
</style>

</head>
<body>
	<div align="center">
		<form id="frm"  onsubmit="return formCheck()" action="memberPwEdit.do"
			method="post">
			<div class="container">
				<div class="insert">
					<h2>비밀번호 변경</h2>
					<table>
						<tr>
							<td class="col1">기존 비밀번호</td>
							<td class="col2"><input type="password" id="currPw"
								name="currPw" required="required"></td>
						</tr>
						<tr>
							<td class="col1">새로운 비밀번호</td>
							<td class="col2"><input type="password" id="memberPw"
								name="memberPw" required="required"></td>
						</tr>
						<tr>
							<td class="col1">새로운 비밀번호 확인</td>
							<td class="col2"><input type="password" id="memberPw1"
								name="memberPw1" required="required"></td>
						</tr>
					</table>
				</div>
			</div>
			<div>
				<input type="hidden" id="memberId" name="memberId" value="${id }">
			</div>
			<div class="create">
				<input class="but2" type="submit" value="수정">&nbsp;&nbsp; <input
					class="but2" type="reset" value="취소" onclick="location.href='myPage.do'">&nbsp;&nbsp;
			</div>
		</form>
	</div>
	<script type="text/javascript">
	// 비밀번호 체크
  	function formCheck() {
  		let frm = document.getElementById("frm");
  		// 기존비밀번호가 일치할때
  		if (frm.currPw.value == "${pw }"){
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
  	}


	</script>
</body>
</html>