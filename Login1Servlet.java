package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login1Servlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답 시 한글 깨짐 방지
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// servlet으로 html을 만드려면 getWriter()를 받아와야 한다. 
		PrintWriter out = response.getWriter();
		
		// JSP에서 넘겨준 데이터를 받아주자.
		String userId = request.getParameter("id");
		String userPw = request.getParameter("pw");
		
		System.out.println("입력받은 아이디 >>> " + userId);
		System.out.println("입력받은 비밀번호 >>> " + userPw);
		
		out.println("<html><head></head><body align = 'center'>");
		out.println("<h2>");
		out.println("회원 아이디 >>> " + userId + "<br>");
		out.println("회원 비밀번호 >>> " + userPw + "<br>");
		out.println("</h2>");
		out.println("</body></html>");
	}

}
