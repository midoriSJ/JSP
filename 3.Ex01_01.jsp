<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 서버에서 보낸 쿠키를 받아주어야 함.
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			out.println("cookies[" + i + "] name >>> " + cookies[i].getName() + "<br>");
			out.println("cookies[" + i + "] name >>> " + cookies[i].getValue() + "<br>");
		}
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>