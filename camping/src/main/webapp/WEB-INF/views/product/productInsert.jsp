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
		
		<div><h1>제 품 등 록</h1></div>
		<div>
			<form id="frm" action="productInsert.do" method="post">
				<div>
					<table border="1">
					  	<tr>
							<th width="100">*제품 ID</th>
							<td width="100">
								<input type="text" id="productId" name="productId" required="required">
							</td>
						</tr>
						<tr>
							<th width="150">*제품명</th>
							<td width="150">
								<input type="text" id="productName" name="productName" required="required">
							</td>
						</tr>
						<tr>
							<th width="150">*가격 </th>
							<td width="150">
								<input type="text" id="productPrice" name="productPrice">
								<input type="hidden" id="productSales" name="productSales" value="0">
							</td>
						</tr>
						
						<tr>
							<th >제품 카테고리</th>
							<td>
								<select id="productKategorie" name="productKategorie" size="1" multiple>
									<option value="텐트">텐트</option>
									<option value="타프">타프</option>
									<option value="의자">의자</option>
									<option value="테이블">테이블</option>
									<option value="퍼니처류">퍼니처류</option>
									<option value="액세서리">액세서리</option>
								</select> 
							</td>
						</tr>
						<tr>
							<th >입고일</th>
							<td >
								<input type="date" id="productDate" name="productDate">
							</td>
						</tr>
						<tr>
							<th>제품이미지</th>
							<td>
							<!-- 파일 객체를 사용하는것이기 때문에 id명이 db와 같을 필요가 없다. -->
							<!-- 객체로 사용가능한 이유 : from 속성중 enctype="multipart/form-data가 있기 떄문.-->
								<input type="file" id="pfile" name="pfile">
							</td>
						</tr>
					</table>
				</div><br>
				<div>
					<input type="submit" value="등록">&nbsp;&nbsp;
					<input type="reset" value="취소">&nbsp;&nbsp; 
					<input type="button" value="목록" onclick="location.href='productList.do'">
				</div>
			</form>
		</div>
	</div>
</body>
</html>