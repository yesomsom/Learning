package com.spring.ex02;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberServlet
 */
@WebServlet("/mem13.do")
public class MemberServlet extends HttpServlet {

	public void init() throws ServletException {
		System.out.println("init호출");
	}

	public void destroy() {
		System.out.println("destroy호출");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		MemberDAO dao = new MemberDAO();
		String name = dao.selectName();
		String pwd = dao.selectPwd();
		PrintWriter pw = response.getWriter();
		pw.write("<script>");
		pw.write("alert(' 이름: " + name + "');");
		pw.write("alert(' 비밀번호: " + pwd + "');");
		pw.write("</script>");
	}

}
