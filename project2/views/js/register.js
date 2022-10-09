let crawlingData = [];
const idCheckButton = document.querySelector('.idCheckButton');
const id = document.querySelector('#id');
const password = document.querySelector('#password');
const passwordRepeat = document.querySelector('#passwordRepeat');
const poster = document.querySelector('#poster');
let idFlag = false;

document.addEventListener('DOMContentLoaded', () => {
    idCheckButton.addEventListener('click', function() {
        console.log(document.querySelector('#id').value);
        idCheck();
    });
    add();   
});

function idCheck() {
    $.ajax({
        url: 'idCheck.do',
        type: 'post',
        data: { id: document.querySelector('#id').value },
        success: function(data) {
            console.log(data);
            idCheckMessage(data);
        },
    });
}

function add() {
    $.ajax({
        url: 'crawling.do',
        type: 'get',
        success: function(data) {
            crawlingData = setData(data);
            if(crawlingData.length === 0){
               location.href="register.do";
            }
            let randomNumber = Math.floor(Math.random() * 7);
            console.log(randomNumber);
            poster.setAttribute('src', crawlingData[randomNumber].img);
        },
    });
}

function setData(data) {
    data = JSON.parse(data);

    return data;
}

function idCheckMessage(data) {
    toastr.options = {
        positionClass: 'toast-top-full-width',
        progressBar: true,
        timeOut: 1000,
    };
    if (id.value.length < 3) {
        toastr.error('최소 4글자 이상의 아이디를 입력해 주세요', '아이디 확인', {
            timeOut: 3000,
        });
        return;
    }

    if (data === 'null') {
        toastr.success('사용할수 있는 아이디입니다', '아이디 확인', {
            timeOut: 3000,
        });
        return idFlag = true;
        
    } else {
        toastr.error('이미 존재하는 아이디입니다', '아이디 확인', {
            timeOut: 3000,
        });
        return idFlag = false;
        
    }
}




// register.jsp의 onChange함수
function passwordValidate() {
    if (password.value == passwordRepeat.value) {
        toastr.options = {
            positionClass: 'toast-top-right',
            progressBar: true,
            timeOut: 1000,
        };
        toastr.success('비밀번호가 일치합니다', '비밀번호 확인', {
            timeOut: 3000,
        });      
        return true;
        
    } else {
        toastr.options = {
            positionClass: 'toast-top-right',
            progressBar: true,
            timeOut: 1000,
        };       
        toastr.error('비밀번호가 일치하지 않습니다', '비밀번호 확인', {
            timeOut: 3000,
        });
        return false;
    }
}



function checks(){
   
   var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); // 아이디, 비밀번호 정규식
   var getName= RegExp(/^[가-힣a-zA-Z]{2,20}$/);
   var getPhone = /^01([0|1|6|7|8|9])?([0-9]{3,4})?([0-9]{4})$/

   
   toastr.options = {
           positionClass: 'toast-top-right',
           progressBar: true,
           timeOut: 1000,
       };
   
   if($("#id").val() == ""){
      toastr.error('아이디를 입력해주세요.', '아이디 확인', {
            timeOut: 3000,
        });
      $("#id").focus();
        return false;
   }
   
   if(!getCheck.test($("#id").val())){
      toastr.error('아이디는 최소 4글자 이상이어야 합니다.\n(영문 대소문자와 숫자)', '아이디 확인', {
            timeOut: 3000,
        });
      $("#id").val("");
      $("#id").focus();
        return false;
   }  
   
   if($("#password").val() == ""){
      toastr.error('비밀번호를 입력해주세요.', '비밀번호 확인', {
            timeOut: 3000,
        });
      $("#password").focus();
        return false;
   }
   
   if(!getCheck.test($("#password").val())){
      toastr.error('비밀번호는 최소 4글자 이상이어야 합니다.\n(영문 대소문자와 숫자)', '비밀번호 확인', {
            timeOut: 3000,
        });
      $("#password").val("");
      $("#password").focus();
        return false;
   }
   
   if($("#password_check").val() == ""){
      toastr.error('비밀번호 확인을 입력해주세요.', '비밀번호 확인', {
            timeOut: 3000,
        });
      $("#password_check").focus();
        return false;
   }
   
    if(!getName.test($("#name").val())){
      toastr.error('이름은 최소 2글자 이상이어야 합니다.\n(영문 대소문자와 한글)', '이름 확인', {
            timeOut: 3000,
        });
      $("#name").val("");
      $("#name").focus();
        return false;
   }
   
   if($("#name").val() == ""){
      toastr.error('이름을 입력하세요.', '이름 확인', {
            timeOut: 3000,
        });
      $("#name").focus();
        return false;
   }
   
   if($("#phoneNumber").val() == ""){
      toastr.error('휴대전화번호를 입력하세요.', '휴대폰번호 확인', {
            timeOut: 3000,
        });
      $("#phoneNumber").focus();
        return false;
   }
   
   if(!getPhone.test($("#phoneNumber").val())){
      toastr.error('정확한 휴대전화번호를 입력하세요.', '휴대폰번호 확인', {
            timeOut: 3000,
        });
      $("#phoneNumber").val("");
      $("#phoneNumber").focus();
        return false;
   }   
   
   if(idFlag != true){
    toastr.error('아이디 중복여부를 확인해주세요.', '아이디 확인', {
            timeOut: 3000,
        });
        return false;
   }
   $("#registerForm").submit();
   
}

function goPopup(){	
	var pop = window.open("/page/jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr, zipNo){		
		var addrFEl = document.querySelector("#roadFullAddr");
		var zipEl = document.querySelector("#zipNo");
		addrFEl.value = roadFullAddr;
		zipEl.value = zipNo;
}

function opensms() {
      window.open("sendSms.do","휴대폰 인증","width=400,height=300,left=750,top=280");
      
   }


