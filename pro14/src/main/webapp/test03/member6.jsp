<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List dataList = new ArrayList();
	dataList.add("hello");
	dataList.add("world");
	dataList.add("안녕하세요!!");
%>
<C:set var="list" value="<%=dataList %>"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 실습</title>
</head>
<body>
	<C:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
		i= ${i} &nbsp;&nbsp;&nbsp; 반복횟수: ${loop.count} <br>
	</C:forEach>
	<br>
	<C:forEach var="i" begin="1" end="10" step="2">
		5*${i} = ${5*i}<br>
	</C:forEach>
	<br>
	<C:forEach var="data" items="${list}" >
		${data}<br>
	</C:forEach>
	<br>
	<C:set var="fruits" value="사과, 파인애플, 바나나, 망고, 귤"  />
	<C:forTokens var="token" items="${fruits}" delims=",">${token}<br>
	</C:forTokens>
</body>
</html>