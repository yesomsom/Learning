package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SecondServlet4
 */
@WebServlet("/secondServlet4")
public class SecondServlet4 extends HttpServlet {
	public void init() throws ServletException {
		System.out.println("Second init 메서드 호출");
	}

	public void destroy() {
		System.out.println("Second destroy 메서드 호출");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("dispatch를 이용한 forward 실습입니다.");
		out.println("</body></html>");
	}

}
