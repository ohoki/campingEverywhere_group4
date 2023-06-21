<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myInfo</title>
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

.but1:hover {
	background-color: black;
	border: 2px solid black;
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
	<form id="frm" action="memberEdit.do" onsubmit="return formCheck()" method="post">
		<div class="container">
			<div class="insert">
				<h2>내정보 수정</h2>
				<table>
					<tr>
						<td class="col1">이름<span class="num"> *</span></td>
						<td class="col2"><input type="text" id="memberName"
							name="memberName" maxlength="10" required="required"
							value="${name}"></td>
					</tr>
					<tr>
						<td class="col1">비밀번호<span class="num"> *</span></td>
						<td class="col2"><input class="but2" type="button"
							value="비밀번호 수정" onclick="location.href='memberPwEditForm.do'">
							<p>
								※비밀번호는 <span class="num">문자, 숫자, 특수문자의 조합 10 ~ 16자리</span>로 입력이
								가능합니다.
							</p></td>
					</tr>
					<tr>
						<td class="col1">전화번호<span class="num"> *</span></td>
						<td class="col2"><input type="tel" id="memberTel"
							name="memberTel" required="required" maxlength="13"
							value="${tel}" />
					</tr>
					<tr>
						<td class="col1">주소<span class="num"> *</span></td>
						<td class="col2"><input type="text" id="memberAddr"
							name="memberAddr" required="required" maxlength="65" class="addr"
							value="${addr}" />
					</tr>
				</table>
			</div>
			<div class="create">
				<input type="hidden" name="memberId" value="${id}"> <input
					class="but2" type="button" value="홈으로"  onclick="location.href='main.do'"> <input class="but2"
					type="submit" value="정보 수정">
			</div>
		</div>
	</form>
	<script type="text/javascript">>
	function formCheck() {
		let frm = document.getElementById("frm");
		if (frm.memberName.value != null){
			alert("개인정보 수정 완료 ! \n 로그아웃 후 메인화면으로 돌아갑니다")
			return true;
		}else
			alert("개인정보 변경 실패 !")
	}
	
	window.onload = function() {
		if("${edit}" == "seccess") {
			alert("회원정보가 변경되었습니다. n\ 로그아웃 후 메인화면으로 돌아갑니다.");
			
		} 
	}
	
	</script>

</body>
</html>