<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align ="center">
		<hr width = "50%" color = "blue">
			<h2>Login Page</h2>
		<hr width = "50%" color = "blue">
		<br><br>
		
		<form action="LoginServlet" method = "get">
			<table border="1">
				<tr>
					<th>id</th>
					<td>
						<input type = "text" name = "id">
					</td>
				</tr>
				
				<tr>
					<th>password</th>
					<td>
						<input type = "password" name = "pw">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type = "submit" value = "login">
						<input type = "reset" value = "cancel">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>