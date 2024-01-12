package sbs;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public JoinServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 깨짐 방지 설정
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 1단계 : Ex04.jsp 홈페이지에서 넘어온 정보들을 받아주자.
		String member_id = request.getParameter("id");
		String member_pw = request.getParameter("pw");
		String member_name = request.getParameter("name");
		String member_phone = request.getParameter("phone");
		String member_addr = request.getParameter("addr");
		String[] hobbys = request.getParameterValues("hobby");
		
		
		// 2단계 : 웹브라우저에 요청한 결과를 보여주자.
		// 문자스트림을 생성한다.
		PrintWriter out = response.getWriter();
		
		out.println("<html><head></head><body>");
		out.println("<div align='center'>");
		out.println("<table border=1>");
		
		out.println("<tr>");
		out.println("<th>회원 아이디</th>");
		out.println("<td>" + member_id + "</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>회원 비밀번호</th>");
		out.println("<td>" + member_pw + "</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>회원 이름</th>");
		out.println("<td>" + member_name + "</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>회원 연락처</th>");
		out.println("<td>" + member_phone + "</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>회원 주소</th>");
		out.println("<td>" + member_addr + "</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>회원 취미</th>");
		out.println("<td>");
		
		for(int i=0; i<hobbys.length; i++) {
			out.println(hobbys[i]+"&nbsp;");
		}
		out.println(Arrays.toString(hobbys));
		out.println("</td>");
		out.println("</tr>");
		
		
		
		out.println("</div></body></html>");
	}

}
