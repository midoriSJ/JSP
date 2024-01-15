package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/student")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StudentServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답 시 한글 깨짐 방지
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String snum = request.getParameter("num");
		String name = request.getParameter("name");
		String major = request.getParameter("major");
		int age = Integer.parseInt(request.getParameter("age"));
		String phone = request.getParameter("phone");
		String[] subject = request.getParameterValues("subject");
		
		out.println("<html><head></head><body>");
		out.println("<div align = 'center'>");
		out.println("<h2> 회원 정보 <h2>");
		out.println("<table border = '1'>");
		
		out.println("<tr>");
		out.println("<th>학생 학번</th>");
		out.println("<td>" + snum + "</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>학생 이름</th>");
		out.println("<td>"+name+"</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>학생 나이</th>");
		out.println("<td>"+age+"</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>학생 연락처</th>");
		out.println("<td>"+phone+"</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>전공 과목</th>");
		out.println("<td>" + Arrays.toString(subject));
		out.println("</tr>");
		out.println("</table></div>");
		out.println("</body></html>");
		
		
	}

}
