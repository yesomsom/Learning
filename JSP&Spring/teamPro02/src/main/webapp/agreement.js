/* 전체 동의 체크 */
 
/* 
1. 전체 동의 클릭 시 아래 체크 항목 모두 체크됨
2. 전체 동의 해제 시 아래 체크 항목 모두 해제됨
3. 아래 체크 항목이 모두 체크되면 전체 동의가 자동으로 체크됨
*/
$(document).ready(function() {
	$("#cbx_chkAll").click(function() {
		if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;
		
		if(total != checked) $("#cbx_chkAll").prop("checked", false);
		else $("#cbx_chkAll").prop("checked", true); 
	});
});

/* 필수 약관 동의 체크했을 때만 넘어감 */
function Validation() {
	var check_first = document.getElementById("required_check_first");
	var check_second = document.getElementById("required_check_second");

	if(!check_first.checked) {
		alert("약관 동의를 체크해주세요.");
		check_first.focus();
		return false;
	}
	if(!check_second.checked) {
		alert("약관 동의를 체크해주세요.");
		check_second.focus();
		return false;
	}
}

