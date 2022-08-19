<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<C:set var="id" value="hong" scope="page"  />
<C:set var="pwd" value="1234" scope="page"  />
<C:set var="name" value="${'홍길동'}" scope="page"  />
<C:set var="age" value="${22}" scope="page"  />
<C:set var="height" value="${177}" scope="page"  />
<C:remove var="age"  />
<C:remove var="height"   />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table align="center" border=1  >
		<tr align="center" bgcolor="lightgreen"  >
			<td width="7%" ><b>아이디</b></td>
			<td width="7%" ><b>비밀번호</b></td>
			<td width="7%" ><b>이름</b></td>
			<td width="7%" ><b>나이</b></td>
			<td width="7%" ><b>키</b></td>
		</tr>
		<tr align="center">
			<td>${id}</td>
			<td>${pwd}</td>
			<td>${name}</td>
			<td>${age}</td>
			<td>${height}</td>
		</tr>
	</table>
</body>
</html>