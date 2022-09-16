/*  */
function Validation() {
	var objId = document.getElementById("id");
	var objPwd = document.getElementById("pwd");
	if(objId.value=='') {
		alert("아이디를 입력해주세요.");
		return false;
	}
		if(objPwd.value=='') {
		alert("비밀번호를 입력해주세요.");
		return false;
	}
}