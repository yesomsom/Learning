<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="memberForm.css" rel="stylesheet" type="text/css">
<title>memberForm</title>
</head>
<body>
	<form method="post" action="${contextPath}/">
	<h1>회원가입</h1>

	<table>
		<tbody>
			<tr>
				<td>아이디</td>
				<td colspan="2"><input class="input_all" type="text"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td colspan="2"><input class="input_all" type="password"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td colspan="2"><input class="input_all" type="password"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td colspan="2"><input class="input_all" type="text"></td>
			</tr>
			<tr>
				<td>휴대전화</td>
				<td><input class="input_all" type="text"></td>
				<td><input class="btn" type="button" value="인증"></td>
			</tr>
			<tr>
				<td>SMS 인증번호</td>
				<td><input class="input_all" type="text"></td>
				<td><input class="btn" type="button" value="확인"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td colspan="2"><input class="input_all" type="date"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input class="input_all input_email" type="text">@
					<select name="select_email">
						<option value="naver">naver.com</option>
						<option value="gmail">gmail.com</option>
						<option value="daum">daum.net</option>
						<option value="hanmail">hanmail.net</option>
						<option value="nate">nate.com</option>
						<option value="hotmail">hotmail.com</option>
					</select>
				</td>
				<td><input class="btn" type="button" value="직접입력"></td>
			</tr>
		</tbody>
	</table>
	<div id="button_all">
		<input class="btn" type="submit" value="가입">
		<input class="btn" type="reset" value="취소">
	</div>
	</form>
</body>
</html>