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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
/* 유효성 검사 */ 
/* 미입력시 form 정보 전송 불가능 */
function Validation() {
  var objId = document.getElementById("id");
  var objPwd = document.getElementById("pwd");
  var objPwdCheck = document.getElementById("pwdCheck");
  var objUserName = document.getElementById("userName");
  var objGender_select = document.getElementById("gender_select");
  var objPhoneNum1 = document.getElementById("phoneNum_second");
  var objPhoneNum2 = document.getElementById("phoneNum_third");
  var objSMSNum = document.getElementById("SMSNum");
  var objBirth = document.getElementById("birth");
  var objEmail = document.getElementById("email");

	if(objId.value=='') {
		alert("아이디를 입력해주세요.");
    objId.focus(); //아이디 input에 커서가 깜빡임
		return false;
	}
	var RegExp = /^[a-z0-9]{4,20}$/;
  if(!RegExp.test(objId.value)) {
		alert("아이디는 4~20자리 영문 소문자,숫자로만 입력해주세요");
	  objId.focus(); //아이디 input에 커서가 깜빡임
		return false;
	}
	if(objPwd.value=='') {
		alert("비밀번호를 입력해주세요.");
    objPwd.focus(); //비밀번호 input에 커서가 깜빡임
		return false;
	}
	var reg = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*\W).{6,20}$/;
  if(!reg.test(objPwd.value)) {
		alert("비밀번호는 6-20자리 영문,숫자,특수문자 조합으로만 입력해주세요");
	  objPwd.focus(); //비밀번호 input에 커서가 깜빡임
		return false;
	}
  if(objPwdCheck.value=='') {
		alert("비밀번호를 확인해주세요.");
    objPwdCheck.focus(); //비밀번호 확인 input에 커서가 깜빡임
		return false;
	}
	if(objPwdCheck.value!==objPwd.value) {
		alert("비밀번호가 틀립니다. 다시 입력해주세요.");
		return false;
	}
  if(objUserName.value=='') {
		alert("이름을 입력해주세요.");
    objUserName.focus(); //이름 input에 커서가 깜빡임
		return false;
	}
	var nameRegExp = /^[가-힣a-zA-Z]{2,20}$/;
	if(!nameRegExp.test(objUserName.value)) {
		alert("이름이 올바르지 않습니다. 다시 입력해주세요.");
		objUserName.focus(); //이름 input에 커서가 깜빡임
		return false;
	}
  if(objGender_select.value =='') {
		alert("성별을 입력해주세요.");
    objGender_select.focus(); //성별 input에 커서가 깜빡임
		return false;
	}  
  if(objPhoneNum1.value=='') {
		alert("전화번호를 입력해주세요.");
    objPhoneNum1.focus(); //전화번호 input에 커서가 깜빡임
		return false;
	}
	var RegPhone1 = /^[0-9]{3,4}$/;
  if(!RegPhone1.test(objPhoneNum1.value)) {
		alert("전화번호는 숫자로만 입력해주세요");
	  objPhoneNum1.focus(); //전화번호 input에 커서가 깜빡임
		return false;
	}
  if(objPhoneNum2.value=='') {
		alert("전화번호를 입력해주세요.");
    objPhoneNum2.focus(); //전화번호 input에 커서가 깜빡임
		return false;
	}
	var RegPhone2 = /^[0-9]{3,4}$/;
  if(!RegPhone2.test(objPhoneNum2.value)) {
		alert("전화번호는 숫자로만 입력해주세요");
	  objPhoneNum2.focus(); //전화번호 input에 커서가 깜빡임
		return false;
	}
  if(objSMSNum.value=='') {
		alert("SMS 인증번호를 입력해주세요.");
    objSMSNum.focus(); //SMS 인증번호 input에 커서가 깜빡임
		return false;
	}
	var RegSMS = /^[0-9]{6}$/;
  if(!RegSMS.test(objSMSNum.value)) {
		alert("SMS 인증번호 6자리 숫자로만 입력해주세요");
	  objSMSNum.focus(); ///SMS 인증번호 input에 커서가 깜빡임
		return false;
	}
  if(objBirth.value=='') {
		alert("생년월일을 입력해주세요.");
    objBirth.focus(); //생년월일 input에 커서가 깜빡임
		return false;
	}
  if(objEmail.value=='') {
		alert("이메일을 입력해주세요.");
    objEmail.focus(); //이메일 input에 커서가 깜빡임
		return false;
	}
}
</script>
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
		<div id="id_success" class="padding_left font_small_red"></div>
	</div>

<!-- 아이디 id 유효성 검사(4-20자: 영문 소문자,숫자조합 조건 만족시 사용가능한 아이디) -->
<script>
	let userId = document.querySelector("#id")
	const idSuccess = document.querySelector('#id_success')
	userId.onkeyup = function() {
		if(isLength(userId.value) && isReg(userId.value)) {
			idSuccess.textContent = '사용가능한 아이디'
		} else {
			idSuccess.textContent = '4-20자: 영문 소문자,숫자조합으로 입력해주세요'
		}
	}
	function isLength(value) {
		return value.length >=4 && value.length <=20
	}
	function isReg(value) {
		let RegExp = /^[a-z0-9]{4,20}$/;
		if(RegExp.test(value) === true) {
			return true;
		} else {
			return false;
		}
	}
</script>	

<!-- 비밀번호 pwd -->	
	<div class="mem_pwd">
		<div>비밀번호</div>
		<div><input id="pwd" class="input_all" type="password" placeholder="6-20자:영문,숫자,특수문자조합"></div>
		<div id="pwd_success" class="padding_left font_small_red"></div>
	</div>

<!-- 비밀번호 pwd 유효성 검사(6-20자:영문,숫자,특수문자조합 조건 만족시 사용가능한 비밀번호) -->
<script>
	var userPwd = document.querySelector("#pwd")
	const pwdSuccess = document.querySelector('#pwd_success')
	userPwd.onkeyup = function() {
		if( isLengthPwd(userPwd.value) && isRegPwd(userPwd.value)) {
			pwdSuccess.textContent = '사용가능한 비밀번호'
		} else {
			pwdSuccess.textContent = '6-20자:영문,숫자,특수문자조합으로 입력해주세요'
		}
	}
	function isLengthPwd(value) {
		return value.length >=6 && value.length <=20
	}
	function isRegPwd(value) {
		var reg = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*\W).{6,20}$/
		if(reg.test(value) === true) {
			return true
		} else {
			return false
		}
	}
</script>	

<!-- 비밀번호 일치 확인 pwd check -->		
	<div class="mem_pwd_check">
		<div>비밀번호 확인</div>
		<div><input id="pwdCheck" class="input_all" type="password" placeholder="6-20자:영문,숫자,특수문자조합"></div>
		<div id="pwdCheck_" class="padding_left font_small_red"></div>
	</div>

<!-- 비밀번호 일치 확인 검사 -->
<script>
	var userPwd = document.querySelector("#pwd")
	var userPwdCheck = document.querySelector("#pwdCheck")
	const pwdCheckSuccess = document.querySelector('#pwdCheck_')
	userPwdCheck.onkeyup = function() {
		if(userPwd.value == userPwdCheck.value) {
			pwdCheckSuccess.textContent = '비밀번호 일치'
		} else {
			pwdCheckSuccess.textContent = '비밀번호가 일치하지 않습니다'
		}
	}
</script>	

<!-- 이름 name -->		
	<div class="mem_name">
		<div>이름</div>
		<div><input id="userName" class="input_all" type="text"></div>
		<div id="name_success" class="padding_left"></div>
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