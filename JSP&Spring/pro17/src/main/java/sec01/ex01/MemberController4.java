package sec01.ex01;
//package sec01.ex01;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
///**
// * Servlet implementation class MemberController
// */
//@WebServlet("/mem.do")
//public class MemberController extends HttpServlet {
//	MemberDAO memberDAO;
//	
//	public void init() throws ServletException {
//		memberDAO = new MemberDAO();
//	}
//
//	public void destroy() {
//		// TODO Auto-generated method stub
//	}
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doHandle(request, response);
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doHandle(request, response);
//	}
//	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
//		response.setContentType("text/html;charset=utf-8");
//		List<MemberVO> membersList = memberDAO.listMembers();
//		request.setAttribute("membersList", membersList);
//		RequestDispatcher dispatch = request.getRequestDispatcher("test01/listMembers.jsp");
//		dispatch.forward(request, response);
//	}
//}
