<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align = "center">
		<h2> 입력 폼(Ex02.jsp)에서 넘어온 데이터</h2>
		
		<h3>
			입력받은 아이디 >>> <%= request.getParameter("id") %> <br>
			입력받은 비밀번호 >>> <%= request.getParameter("pw") %> <br>
		</h3>
		<hr>
		<h2> 세션에서 넘어온 데이터 </h2>
		<h3>
			세션으로 받은 이름 >>>  <%= session.getAttribute("name") %> <br/>
			세션으로 받은 연락처 >>>  <%= session.getAttribute("phone") %> <br/>
		</h3>
	</div>
</body>
</html>