<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirect</title>
</head>
<body>
	<C:redirect url="member1_1.jsp" >
		<C:param name="id" value="${'park'}"  />
		<C:param name="pwd" value="${'2222'}"  />
		<C:param name="name" value="${'park'}"  />
		<C:param name="age" value="${'28'}"  />
		<C:param name="height" value="${'165'}"  />
		<C:param name="email" value="${'park@test.com'}"  />
	</C:redirect>
</body>
</html>