<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<C:set var="id" value="hong" scope="page"  />
<C:set var="pwd" value="1234" scope="page"  />
<%-- <C:set var="name" value="${'홍길동'}" scope="page"  />--%>
<C:set var="age" value="${22}" scope="page"  />
<C:set var="height" value="${177}" scope="page"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>

	<table align="center" border=1  >
		<tr align="center" bgcolor="D885A3"  >
			<td width="7%" ><b>아이디</b></td>
			<td width="7%" ><b>비밀번호</b></td>
			<td width="7%" ><b>이름</b></td>
			<td width="7%" ><b>이메일</b></td>
		</tr>
	<C:choose>
		<C:when test="${empty param.id}">
			<tr align="center">
				<td colspan=5>이름을 입력하세요!!</td>
			</tr>
		</C:when>
		<C:otherwise>
		<tr align="center">
			<td><C:out value="${param.id}" /></td>
			<td><C:out value="${param.pwd}" /></td>
			<td><C:out value="${param.name}" /></td>
			<td><C:out value="${param.email}" /></td>
		</tr>
		</C:otherwise>
		</C:choose>
	</table>
</body>
</html>