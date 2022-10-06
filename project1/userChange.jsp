<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 수정 페이지</title>
    <link rel="stylesheet" href="${path}/css}/css/userChange.css">
</head>
<script type="text/javascript">
    //수정 클릭시 비활성화 풀림
    //비밀번호
    function Pw()
    {
        // const target = document.getElementById('change_pw');
        // target.disabled = false;
    }

    //휴대전화
    function Phone()
    {
        // const target = document.getElementById('change_phone');
        // target.disabled = false;
    }

    //이메일(앞자리, 뒷자리 전부 포함)
    function Email()
    {
        // const target = document.getElementById('change_email');
        // const target2 = document.getElementById('change_email2');
        // target.disabled = false;
        // target2.disabled = false;
    }
    function a()
    {
        // var a = document.myform.name.value;
        var b = document.myform.pw.value;
        var c = document.myform.phone.value;
        var d = c.length;
        var reg = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*\W).{6,20}$/;
        var objPwd = document.getElementById("change_pw");

        if(confirm("수정하시겠습니까?"))
        {
            // if(a=="")
            // {
            //     alert("이름이 비어있어 수정할 수 없습니다.");
            //     document.myform.name.focus();
            //     return false;
            // }

            if(b=="")
            {
                alert("비밀번호가 비어있어 수정할 수 없습니다.");
                document.myform.pw.focus();
                return false;
            }

            if(!reg.test(objPwd.value)) {
                alert("비밀번호는 6-20자리 영문,숫자,특수문자 조합으로만 입력해주세요");
                objPwd.focus(); //비밀번호 input에 커서가 깜빡임
                return false;
	        }

            if(c=="")
            {
                alert("휴대전화번호가 비어있어 수정할 수 없습니다.");
                document.myform.phone.focus();
                return false;
            }

            if(d!=11)
            {
                alert("정확한 휴대전화번호를 입력하세요.");
                document.myform.phone.focus();
                return false;
            }
        }
        else
        {
            return false;
        }
    }
</script>
<body>
    <!--회원 정보 수정 메인-->
    <!--이름, 아이디-->
    <form name="myform" method="post">
    <div class = "change_user">
        <h1 class="title">회원 정보 수정</h1>
        <hr class="line" width="900px">
        <p>
            이름<input class="input_all" type="text" style="margin-left:18%;" name="name" disabled>
        </p>
        <p>
            아이디<input class="input_all" type="text" style="margin-left:16.3%;" disabled>
        </p>
    
    <!--비밀번호, 휴대전화, 이메일(수정 버튼 존재)-->
    <div id="change2">
        <p>
            <!--style의 경우 간격을 맞추기 위해 설정-->
            비밀번호<input class="input_all" id="change_pw" type="password" style="margin-left:14.5%;" name="pw">
            <span id="pwd_success"></span>
            <button class="btn" onclick="Pw()">수정</button>
        </p>

        <p>
             <!--style의 경우 간격을 맞추기 위해 설정-->
            휴대전화<input class="input_all" type="text" id="change_phone"
                          oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" 
                          style="margin-left:14.5%;" name="phone"/>
                          <!--번호 이외의 텍스트 입력 불가-->
            <button class="btn" style="margin-left:16.5%;" onclick="Phone()">수정</button>
        </p>

        <p>
             <!--style의 경우 간격을 맞추기 위해 설정-->
            이메일<input class="input_all" type="text" id="change_email" style="margin-left:16.3%;"/> 
                  @ 
                  <select class="input_email select_box_email" name="select_email">
					<option value="naver">naver.com</option>
					<option value="gmail">gmail.com</option>
					<option value="daum">daum.net</option>
					<option value="hanmail">hanmail.net</option>
					<option value="nate">nate.com</option>
					<option value="hotmail">hotmail.com</option>
					<option value="writeEmail">직접 입력</option>
				</select>

            <button class="btn" onclick="Email()">수정</button>
        </p>
    </div>
<!-- 비밀번호 pwd 유효성 검사(6-20자:영문,숫자,특수문자조합 조건 만족시 사용가능한 비밀번호) -->
<script>
	var userPwd = document.querySelector("#change_pw")
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
        <p>
             <!--style의 경우 간격을 맞추기 위해 설정-->
             <!--동의 체크 박스-->
            마케팅 수신동의
           <input type="checkbox" name="" value='' style="margin-left:8%;">이메일 수신 동의
           <input type="checkbox" name="" value=''/>SMS 수신 동의
        </p>

        <!--수정완료, 회원탈퇴 버튼-->
        <div id = "change_button">
            <button class="btn_footer" onclick="return a()">수정완료</button>
            <button class="btn_footer">회원탈퇴</button>
        </div>

    </div>
    </form>
</body>
</html>