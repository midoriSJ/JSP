<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String user_id = request.getParameter("id");
	String user_pwd = request.getParameter("pwd");
	
	/*
	  원래는 DB의 회원 관리 테이블에서 폼에서 입력한 아이디와
	  입력한 비밀번호가 일치하는지 확인을 하여 회원이면 메인 페이지로 이동
	*/
	String db_id = "hong";
	String db_pwd = "1234";
	
	if(user_id.equals(db_id)) { 
		// 아이디가 존재하는 경우
		if(user_pwd.equals(db_pwd)) {
			// 회원인 경우 ==> 메인 페이지로 이동 ==> 페이지 이동
			
			// 정보를 넘겨주고 싶은 경우
			request.setAttribute("name", "홍길동");
			request.setAttribute("phone", "010-1111-1234");
			
			// 페이지 이동
			response.sendRedirect("Ex08.jsp");
			
		}else {
			System.out.println("비밀번호가 틀립니다.~~~");
		}
	}else {
		// 아이디가 없는 경우
		System.out.println("아이디가 틀리거나 회원이 아닙니다.~~~");
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