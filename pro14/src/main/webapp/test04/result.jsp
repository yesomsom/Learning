<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<C:if test="${empty param.userID }">
		아이디를 입력하세요.<br>
		<a href="login.jsp">로그인창</a>
	</C:if>
	<C:if test="${not empty param.userID }">
		<h1>환영합니다. <C:out value="${param.userID }"  />님!!!</h1>
	</C:if>
</body>
</html>