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
	if(objPwd.value=='') {
		alert("비밀번호를 입력해주세요.");
    objPwd.focus(); //비밀번호 input에 커서가 깜빡임
		return false;
	}
  if(objPwdCheck.value=='') {
		alert("비밀번호를 확인해주세요.");
    objPwdCheck.focus(); //비밀번호 확인 input에 커서가 깜빡임
		return false;
	}
  if(objUserName.value=='') {
		alert("이름를 입력해주세요.");
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
