<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"
    import="java.util.*,sec02.ex01.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<C:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
<style type="text/css">
	.clsl {
		font-size: 40px;
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
	<table align="center" border="1">
		<tr align="center" bgcolor="yellow">
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>가입일</td>
		</tr>
		<C:choose>
			<C:when test="${empty membersList}">
				<tr align="center">
					<td colspan="5">
						<b>등록된 회원이 없습니다.</b>
					</td>
				</tr>
			</C:when>
			<C:when test="${!empty membersList}">
				<C:forEach var="mem" items="${membersList}">
					<tr align="center">
						<td>${mem.id}</td>
						<td>${mem.pwd}</td>
						<td>${mem.name}</td>
						<td>${mem.email}</td>
						<td>${mem.joinDate}</td>
					</tr>
				</C:forEach>
			</C:when>
		</C:choose>
	</table>
	<a href="${contextPath}/member/memberForm.do">
		<p class="cls2" align="center">회원 가입하기</p>
	</a>
</body>
</html>