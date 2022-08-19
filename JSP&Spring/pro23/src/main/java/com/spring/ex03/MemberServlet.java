/*
 * package com.spring.ex03;
 * 
 * import java.io.IOException; import java.util.List;
 * 
 * import javax.servlet.RequestDispatcher; import
 * javax.servlet.ServletException; import javax.servlet.annotation.WebServlet;
 * import javax.servlet.http.HttpServlet; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * @WebServlet("/mem14.do") public class MemberServlet extends HttpServlet {
 * 
 * public void init() throws ServletException { System.out.println("init호출"); }
 * 
 * public void destroy() { System.out.println("destroy호출"); }
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { doHandle(request, response);
 * }
 * 
 * private void doHandle(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * request.setCharacterEncoding("utf-8");
 * response.setContentType("text/html;charset=utf-8"); MemberDAO dao = new
 * MemberDAO(); MemberVO memberVO = new MemberVO();
 * 
 * String action = request.getParameter("action"); String nextPage = "";
 * 
 * if(action == null || action.equals("listMembers")) { List<MemberVO>
 * membersList = dao.selectAllMemberList(); request.setAttribute("membersList",
 * membersList); nextPage = "test02/listMembers.jsp"; } else if
 * (action.equals("selectMemberById")) { String id =
 * request.getParameter("value"); memberVO = dao.selectMemberById(id);
 * request.setAttribute("member", memberVO); nextPage = "test02/memberInfo.jsp";
 * } else if (action.equals("selectMemberByPwd")) { String pwd =
 * request.getParameter("value"); List<MemberVO> membersList =
 * dao.selectMemberByPwd(pwd); request.setAttribute("membersList", membersList);
 * nextPage = "test02/listMembers.jsp"; }
 * 
 * RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
 * dispatch.forward(request, response); }
 * 
 * }
 */