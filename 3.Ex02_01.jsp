<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	/*
		원래는 DB의 회원관리 테이블에서 폼에서 입력한 아이디와 입력한 비밀번호가 일치하는지
		확인을 하여 회원이면 메인 페이지로 이동
	*/
	
	String db_id = "hong";
	String db_pw = "1234";
	
	if (user_id.equals(db_id)) {
		// 아이디가 존재하는 경우
		if (user_pw.equals(db_pw)) {
			// 회원인 경우 메인페이지로 이동 => 페이지 이동
			
			// 정보를 넘겨주고 싶은 경우
			session.setAttribute("name", "홍길동");
			session.setAttribute("phone", "010-1111-1234");
			
			// 실제로 이동할 때
			RequestDispatcher rd = request.getRequestDispatcher("3.Ex02_02.jsp");
			
			// 실제 페이지 이동
			rd.forward(request, response);
		} else {
			System.out.println("비밀번호가 틀립니다.");
		}
	
	}
	else {
		System.out.println("아이디가 틀리거나 회원이 아닙니다.");
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