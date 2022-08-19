package sec03.ex02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet5
 */
@WebServlet("/firstServlet5")
public class FirstServlet5 extends HttpServlet {
	public void init() throws ServletException {
		System.out.println("First init 메서드 호출");
	}

	public void destroy() {
		System.out.println("First destroy 메서드 호출");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		RequestDispatcher dispatch = request.getRequestDispatcher("secondServlet5?name=Park");
		dispatch.forward(request, response);
	}

}
