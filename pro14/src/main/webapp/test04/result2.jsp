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
<title>로그인창</title>
</head>
<body>
	<C:if test="${empty param.userID }">
		아이디를 입력하세요.<br>
		<a href="login.jsp">로그인창</a>
	</C:if>
	<C:if test="${not empty param.userID }">
		<C:if test="${param.userID =='admin' }">
			<h1>관리자로 로그인 했습니다.</h1>
			<form>
				<input type=button value="회원정보 삭제하기" />
				<input type=button value="회원정보 수정하기" />
			</form>
		</C:if>
		<C:if test="${param.userID !='admin' }">
			<h1>환영합니다. <C:out value="${param.userID }"  />님!!!</h1>
		</C:if>
	</C:if>
</body>
</html>