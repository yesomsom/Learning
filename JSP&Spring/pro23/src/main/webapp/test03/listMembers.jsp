<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"
    import="java.util.*"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
   request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>  
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
<style type="text/css">
   *{
     text-decoration: none;
     
   }
   .clsl {
      
      text-align: center;     
   }
   td {
      padding:7px;
   }
   table {
   border-collapse: collapse;
}
</style>
</head>
<body>
   <table align="center" border="1" width="100%">
      <tr align="center" bgcolor="lightgreen">
         <td><b>아이디</b></td>
         <td><b>비밀번호</b></td>
         <td><b>이름</b></td>
         <td><b>이메일</b></td>
         <td><b>가입일</b></td>        
         <td><b>수정</b></td>        
         <td><b>삭제</b></td>        
      </tr>
    <c:forEach var="member" items="${membersList}">
      <tr align="center">
         <td>${member.id}</td>
         <td>${member.pwd}</td>
         <td>${member.name}</td>
         <td>${member.email}</td>
         <td>${member.joinDate}</td>
         <td><a href="${contextPath }/mem15.do?action=modmemberForm&id=${member.id}">수정하기</a></td>
         <td><a href="${contextPath }/mem15.do?action=deleteMember&id=${member.id}">삭제하기</a></td>
       </tr>
    </c:forEach>      
   </table>
   <a href="${contextPath }/test03/memberForm.jsp"><h1 class="cls2" align="center">회원 가입</h1></a>
</body>
</html>