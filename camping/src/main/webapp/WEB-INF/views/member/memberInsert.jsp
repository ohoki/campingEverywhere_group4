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
	text-align: right;
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

.but1 {
	height: 30px;
	width: 100px;
	color: white;
	background-color: #8aa1a1;
	border: none;
	outline: none;
	border-radius: 7px;
}

.but2 {
	height: 35px;
	width: 150px;
	background-color: #8aa1a1;
	color: white;
	border: 2px solid #8aa1a1;
}

.but3 {
	height: 35px;
	width: 150px;
	background-color: #8aa1a1;
	color: white;
	border: 2px solid #8aa1a1;
}

.but1:hover {
	background-color: black;
	border: 2px solid black;
}

.but2:hover {
	background-color: black;
	border: 2px solid black;
}

.but3:hover {
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
	<form id="frm" action="memberInsert.do" onsubmit="return formCheck()"
		method="post">
		<div class="container">
			<div class="insert">
				<h2>회원가입</h2>
				<table>
					<tr>
						<td class="col1">이름<span class="num"> *</span></td>
						<td class="col2"><input type="text" id="memberName"
							name="memberName" maxlength="5" required="required"></td>
					</tr>
					<tr>
						<td class="col1">아이디<span class="num"> *</span></td>
						<td class="col2"><input type="text" id="memberId"
							name="memberId" maxlength="10" required="required">
							<button class='but1' type="button" id="checkId" value="No"
								onclick="idCheck()">중복확인</button></td>
					</tr>
					<tr>
						<td class="col1">비밀번호<span class="num"> *</span></td>
						<td class="col2"><input type="password" id="memberPw"
							name="memberPw" required="required" maxlength="16">
							<p>
								※비밀번호는 <span class="num">문자, 숫자, 특수문자의 조합 10 ~ 16자리</span>로 입력이
								가능합니다.
							</p></td>
					</tr>
					<tr>
						<td class="col1">비밀번호 확인<span class="num"> *</span></td>
						<td class="col2"><input type="password"  id="pwCheck" name="pwCheck"
							required="required" maxlength="16"></td>
					</tr>
					<tr>
						<td class="col1">전화번호<span class="num"> *</span></td>
						<td class="col2"><input type="tel" id="memberTender"
							name="memberTender" required="required" maxlength="13" />
					</tr>
					<tr>
						<td class="col1">주소<span class="num"> *</span></td>
						<td class="col2"><input type="text" id="memberAddr"
							name="memberAddr" required="required" maxlength="65" class="addr" />
					</tr>
				</table>

			</div>

			<div class="create">
				<input class="but2" type="reset" value="가입취소"> <input
					class="but3" type="submit" value="회원가입">
			</div>
		</div>
	</form>

	<script type="text/javascript">
 	function formCheck(){
		let frm = document.getElementById("frm");
		let sizePw = frm.memberPw.value.toString().length;
		if(10<= sizePw || sizePw <= 16 ) {
			if(frm.memberPw.value != frm.pwCheck.value){
				alert("패스워드가 일치 하지 않습니다.");
				frm.memberPw.value = "";
				frm.pwCheck.value = "";
				frm.memberPw.focus();
				return false;
			} else if(frm.checkId.value != "Yes") {
				alert("아이디 중복체크를 수행하세요.");
				return false;
			}	
		} else {
			alert("비밀 번호는 10 ~ 16자리로 입력이 가능합니다.");
			return false;
		}
		return true;
	} 
	
 	function idCheck() {
		let id = document.getElementById("memberId").value;
		let url = "ajaxCheckId.do?id="+id;
		fetch(url)  //ajax 호출
			.then(response => response.text())
			.then(text => htmlProcess(text));
	} 
	
  	function htmlProcess(data){
		if(data == 'Yes'){
			alert(document.getElementById("memberId").value + "\n 사용가능한 아이디 입니다.");
			document.getElementById("checkId").value = 'Yes';
		}else {
			alert(document.getElementById("memberId").value + "\n 이미사용하는 아이디 입니다.");
			document.getElementById("memberId").value ="";
			document.getElementById("memberId").focus();
		}
	}
</script>
</body>
</html>