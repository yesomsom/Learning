<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%
	session.setAttribute("address", "수원시 팔달구");
	request.setAttribute("name", "박");
	application.setAttribute("id", "park");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table align="center" border=1  >
		<tr align="center" bgcolor="#99ccff"  >
			<td width="5%" ><b>아이디</b></td>
			<td width="5%" ><b>비밀번호</b></td>
			<td width="5%" ><b>이름</b></td>
			<td width="5%" ><b>이메일</b></td>
			<td width="5%" ><b>주소</b></td>
		</tr>
		<tr align="center">
			<td>${id}</td>
			<td>${pwd}</td>
			<td>${name}</td>
			<td>${email}</td>
			<td>${address}</td>
		</tr>		
	</table>
</body>
</html>