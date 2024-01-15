package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class ScoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ScoreServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답 시 한글 깨짐 방지
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
				
		PrintWriter out = response.getWriter();
				
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
				
		out.println("<html><head></head><body>");
		out.println("학생 이름 >>> " + name + "<br>");
		out.println("국어 성적 >>> " + kor + "<br>");
		out.println("영어 성적 >>> " + eng + "<br>");
		out.println("수학 성적 >>> " + math + "<br>");
		out.println("</body></html>");
	}

}
