<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*, sec01.ex01.*"
    %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="m1" class="sec01.ex01.MemberBean"  />
<jsp:setProperty name="m1" property="*"  />
<jsp:useBean id="membersList" class="java.util.ArrayList"  />
<jsp:useBean id="membersMap" class="java.util.HashMap"  />
<%
	membersMap.put("id", "park2");
	membersMap.put("pwd", "4321");
	membersMap.put("name", "박지성");
	membersMap.put("email", "park2@test.com");
	
	MemberBean m2 = new MemberBean("son", "1234", "손흥민", "son@test.com");
	MemberBean m3 = new MemberBean("xi", "0000", "시아", "xi@test.com");
	membersList.add(m1);
	membersList.add(m2);
	membersList.add(m3);
	membersMap.put("membersList1", membersList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table align="center" border="1"  >
		<tr align="center" bgcolor="#E7F0C3"  >
			<td width="20%" ><b>아이디</b></td>
			<td width="20%" ><b>비밀번호</b></td>
			<td width="20%" ><b>이름</b></td>
			<td width="20%" ><b>이메일</b></td>
		</tr>
		<tr align="center">
			<td>${membersMap.id}</td>
			<td>${membersMap.pwd}</td>
			<td>${membersMap.name}</td>
			<td>${membersMap.email}</td>
		</tr>
		<tr align="center">
			<td>${membersMap.membersList1[0].id}</td>
			<td>${membersMap.membersList1[0].pwd}</td>
			<td>${membersMap.membersList1[0].name}</td>
			<td>${membersMap.membersList1[0].email}</td>
		</tr>
		<tr align="center">
			<td>${membersMap.membersList1[1].id}</td>
			<td>${membersMap.membersList1[1].pwd}</td>
			<td>${membersMap.membersList1[1].name}</td>
			<td>${membersMap.membersList1[1].email}</td>
		</tr>
		<tr align="center">
			<td>${membersMap.membersList1[2].id}</td>
			<td>${membersMap.membersList1[2].pwd}</td>
			<td>${membersMap.membersList1[2].name}</td>
			<td>${membersMap.membersList1[2].email}</td>
		</tr>
		
	</table>
</body>
</html>