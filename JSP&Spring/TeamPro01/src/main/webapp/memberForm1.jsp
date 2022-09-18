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
<link href="memberForm1.css" rel="stylesheet" type="text/css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src = "memberForm.js"></script>
<title>memberForm</title>
</head>
<body>

<!-- 회원가입폼 member Form -->
<form method="post" action="${contextPath}/" onsubmit="return Validation();">

<!-- 타이틀 title -->
	<h1>회원가입</h1>

<!-- 아이디 id -->	
	<div class="mem_id">
		<div>아이디</div>
		<div><input id="id" class="second input_all" type="text" placeholder="4-20자: 영문 소문자,숫자조합"></div>
		<div class="padding_left font_small_red">아이디 중복체크</div>
	</div>

<!-- 비밀번호 pwd -->	
	<div class="mem_pwd">
		<div>비밀번호</div>
		<div><input id="pwd" class="input_all" type="password" placeholder="6-20자:영문,숫자,특수문자조합"></div>
		<div class="padding_left font_small_red">비밀번호 유효성 검사</div>
	</div>

<!-- 비밀번호 일치 확인 pwd check -->		
	<div class="mem_pwd_check">
		<div>비밀번호 확인</div>
		<div><input id="pwdCheck" class="input_all" type="password" placeholder="6-20자:영문,숫자,특수문자조합"></div>
		<div class="mismatch-message hide padding_left font_small_red">비밀번호가 일치하지 않습니다.</div>
	</div>

<!-- 이름 name -->		
	<div class="mem_name">
		<div>이름</div>
		<div><input id="userName" class="input_all" type="text"></div>
		<div class="padding_left"></div>
	</div>
	
<!-- 성별 gender -->		
	<div class="mem_gender">
		<div>성별</div>
		<div>
			<select id="gender_select" class="select_box_gender" name='mem_gender_select'>
				<option value='' selected>성별 선택</option>
				<option value='male'>남성</option>
				<option value='female'>여성</option>
			</select>
		</div>
		<div class="padding_left"></div>
	</div>

<!-- 휴대전화 phone -->	
	<div class="mem_phone">
		<div>휴대전화</div>
<!-- 휴대전화 phone number -->
		<div class="phone_num">
<!-- 휴대전화 phone number 첫번째 자리 -->
			<div class="phone_num_first">
				<select class="select_box_phone" name='num_first'>
				    <option value='010' selected>010</option>
				    <option value='011'>011</option>
				    <option value='070'>070</option>
				    <option value=''></option>
				</select>
			</div>
			<div class="div_margin">-</div>
<!-- 휴대전화 phone number 두번째 자리 -->
			<div class="phone_num_second">
				<input id="phoneNum_second" class="input_all phone_num_second_input" type="text">
			</div>
			<div class="div_margin">-</div>
<!-- 휴대전화 phone number 세번째 자리 -->
			<div class="phone_num_third">
				<input id="phoneNum_third" class="input_all phone_num_third_input" type="text">
			</div>
		</div>
		<div class="padding_left">
			<input class="btn_" type="button" value="인증">
		</div>
	</div>

<!-- SMS 인증번호 message_confirm -->	
	<div class="mem_message_confirm">
		<div>SMS 인증번호</div>
		<div><input id="SMSNum" class="input_all" type="text"></div>
		<div class="padding_left">
			<input class="btn_" type="button" value="확인">
		</div>
	</div>

<!-- 생년월일 birth -->	
	<div class="mem_birth">
		<div>생년월일</div>
		<div>
			<input id="birth" class="input_all" type="date">
		</div>
		<div class="padding_left"></div>
	</div>

<!-- 이메일 email -->	
	<div class="mem_email">
		<div>이메일</div>
<!-- 이메일 email 주소 -->	
		<div class="email_all">
<!-- 이메일 email 주소 앞자리 -->
			<div class="email_first">
				<input id="email" class="input_all email_first_input" type="text">
			</div>
			<div class="div_margin">@</div>
<!-- 이메일 email 주소 도메인 -->
			<div class="email_third">
				<select class="select_box_email" name="select_email">
					<option value="naver">naver.com</option>
					<option value="gmail">gmail.com</option>
					<option value="daum">daum.net</option>
					<option value="hanmail">hanmail.net</option>
					<option value="nate">nate.com</option>
					<option value="hotmail">hotmail.com</option>
				</select>			
			</div>
		</div>
		<div class="padding_left"></div>
	</div>
	
<!-- 버튼 button -->
	<div class="button_all">
		<input class="btn" type="submit" value="가입">
		<input class="btn" type="reset" value="취소">
	</div>
</form>
</body>
</html>
