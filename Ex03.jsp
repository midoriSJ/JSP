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
			<hr width="50%" color = "red">
				<h2>회원 정보 입력 폼 페이지</h2>
			<hr width = "50%" color = "red">
			<br><br>
			
			<form action = "member" method = "get">
				<table border = "1">
					<tr>
						<th>ID</th>
						<td>
						<input type = "text" name = "ID">
						</td>
					</tr>
					
					<tr>
						<th>password</th>
						<td>
						<input type = "password" name = "pw">
						</td>
					</tr>
					
					<tr>
						<th>회원 이름</th>
						<td>
						<input type = "text" name = "name">
						</td>
					</tr>
					
					<tr>
						<th>회원 연락처</th>
						<td>
						<input type = "text" name = "phone">
						</td>
					</tr>
					
					<tr>
						<th>회원 주소</th>
						<td>
						<input type = "text" name = "addr">
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="center">
						<input type = "submit" value="회원가입">&nbsp;
						<input type = "reset" value = "다시작성">
						</td>
					</tr>
				</table>
			</form>
		</div>
</body>
</html>