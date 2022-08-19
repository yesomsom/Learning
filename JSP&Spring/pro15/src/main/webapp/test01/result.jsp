<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<C:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<C:set var="file1" value="${param.param1}" />
<C:set var="file2" value="${param.param2}" />
<title>이미지 파일 출력하기</title>
</head>
<body>
	매개변수 1:
	<C:out value="${file1}" /><br>
	매개변수 2:
	<C:out value="${file2}" /><br>
	<C:if test="${not empty file1}">
		<img src="${contextPath}/download.do?fileName=${file1}" width=300 height=300 /><br>
	</C:if>	
	파일1 내려받기 :<br>
	<a href="${contextPath}/download.do?fileName=${file1}">
	파일1 내려받기 </a><br>	
	<br>
	<C:if test="${not empty file2}">
		<img src="${contextPath}/download.do?fileName=${file2}" width=300 height=300 /><br>
	</C:if>	
	파일2 내려받기 :<br>
	<a href="${contextPath}/download.do?fileName=${file2}">
	파일2 내려받기 </a><br>
</body>
</html>