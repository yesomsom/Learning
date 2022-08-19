<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
</head>
<body>
	<form action="result10.jsp">
		아이디: <input type="text" size=20 name="user_id" /><br>
		비밀번호: <input type="password" size=20 name="user_pw" /><br>
		<input type="submit" value="로그인"  /><input type="reset" value="다시입력"  />
	</form>
	<br><br>
	<a href="${pageContext.request.contextPath}/test01/memberForm2.jsp">회원가입하기</a>
</body>
</html>