<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"
    import="java.util.*,sec02.ex02.*"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<C:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
	<C:choose>
		<C:when test='${msg=="addMember"}'>
			<script type="text/javascript">
				window.onload = function () {
					alert("회원을 등록했습니다.");
				}
			</script>
		</C:when>
		<C:when test='${msg=="modified"}'>
			<script type="text/javascript">
				window.onload = function () {
					alert("회원 정보를 수정했습니다.");
				}
			</script>
		</C:when>
		<C:when test='${msg=="deleted"}'>
			<script type="text/javascript">
				window.onload = function () {
					alert("회원 정보를 삭제했습니다.");
				}
			</script>
		</C:when>
	</C:choose>
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
			<td>수정</td>
			<td>삭제</td>
		</tr>
		<C:choose>
			<C:when test="${empty membersList}">
				<tr align="center">
					<td colspan="7">
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
						<td><a href="${contextPath}/member/modMemberForm.do?id=${mem.id}">수정</a></td>
						<td><a href="${contextPath}/member/delMember.do?id=${mem.id}">삭제</a></td>
					</tr>
				</C:forEach>
			</C:when>
		</C:choose>
	</table>
	<a href="http://localhost:8080/pro17/test03/MemberForm.jsp">
		<p class="cls2" align="center">회원 가입</p>
	</a>
</body>
</html>