/* 유효성 검사 */ 
/* 미입력시 form 정보 전송 불가능 */

document.addEventListener('DOMContentLoaded', () => {

	
})
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
  if(objPhoneNum2.value=='') {
		alert("전화번호를 입력해주세요.");
    objPhoneNum2.focus(); //전화번호 input에 커서가 깜빡임
		return false;
	}
  if(objSMSNum.value=='') {
		alert("SMS 인증번호를 입력해주세요.");
    objSMSNum.focus(); //SMS 인증번호 input에 커서가 깜빡임
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