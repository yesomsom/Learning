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
<!-- 회원가입 폼 form -->
<form method="post" action="${contextPath}/">
	<h1>회원가입</h1>
	
	<div class="mem_id">
		<div>아이디</div>
		<div><input class="" type="text"></div>
		<div>아이디 중복체크</div>
	</div>
	
	<div class="mem_pwd">
		<div>비밀번호</div>
		<div><input class="" type="password"></div>
		<div>비밀번호 유효성 검사</div>
	</div>
	
	<div class="mem_pwd_check">
		<div>비밀번호</div>
		<div><input class="" type="password"></div>
		<div>비밀번호 일치 확인</div>
	</div>
	
	<div class="mem_name">
		<div>이름</div>
		<div><input class="" type="text"></div>
		<div></div>
	</div>
	
	<div class="mem_phone">
		<div>휴대전화</div>
		<div class="phone_num">
			<div class="phone_num_first">
				<select name='num_first'>
				    <option value='010' selected>010</option>
				    <option value='011'>011</option>
				    <option value='070'>070</option>
				    <option value=''></option>
				</select>
			</div>
			<div class="phone_num_second">
				<input type="text">
			</div>
			<div class="phone_num_third">
				<input type="text">
			</div>
		</div>
		<div>
			<input type="button" value="인증">
		</div>
	</div>
	
	<div class="message_confirm">
		<div>SMS 인증번호</div>
		<div><input type="text"></div>
		<div>
			<input type="button" value="확인">
		</div>
	</div>
	
	<div>
		<div>생년월일</div>
		<div>
			<input type="date">
		</div>
		<div></div>
	</div>
	
	<div>
		<div>이메일</div>
		<div class="email_all">
			<div class="email_first">
				<input type="text">
			</div>
			<div class="email_second">@</div>
			<div class="email_third">
				<select name="select_email">
					<option value="naver">naver.com</option>
					<option value="gmail">gmail.com</option>
					<option value="daum">daum.net</option>
					<option value="hanmail">hanmail.net</option>
					<option value="nate">nate.com</option>
					<option value="hotmail">hotmail.com</option>
				</select>			
			</div>
		</div>
	</div>
	
	<!-- 버튼 button -->
	<div id="button_all">
		<input class="btn" type="submit" value="가입">
		<input class="btn" type="reset" value="취소">
	</div>
	
	
	
<!-- 회원가입 테이블 table -->
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
<!-- 버튼 button -->
	<div id="button_all">
		<input class="btn" type="submit" value="가입">
		<input class="btn" type="reset" value="취소">
	</div>
</form>
</body>
</html>