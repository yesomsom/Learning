<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 검색창 </title>
</head>
<body>
<form action="${contextPath }/mem15.do">
   <input type="hidden" name="action" value="searchMember" />
   이름 : <input type="text" name="name" /> <br>
   이메일 : <input type="text" name="email" /> <br>
   <input type="submit" value="검색" />
</form>
</body>
</html>