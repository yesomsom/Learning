<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!DOCTYPE html>
<html>
<head>
<link href="${path}/css}/css/login.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">

<!-- jQuery 최신 cdn -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- 네이버 로그인 API cdn -->
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
	
<!-- 탭 tab -->
<script type="text/javascript">
$(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

})
</script>

<title>login page</title>
</head>

<body>
	
<!-- 로그인 전체 묶음 div -->	
<div class="container">
<!-- tab (회원 / 비회원 클릭 탭) -->
	<ul class="tabs">
		<li class="tab-link current" data-tab="tab-1">회원 로그인</li>
		<li class="tab-link" data-tab="tab-2">비회원 예약 조회</li>
	</ul>
	
<!-- tab1 회원 로그인 -->
	<div id="tab-1" class="tab-content current">
		<form name="frmLogin_mem" method="post" action="${path}/page/login.do" enctype="utf-8">
        	<br>
        	<div><input class="input_all input_id" type="text" name="memberId" placeholder="아이디"></div> 
			<div><input class="input_all input_pwd"type="password" name="memberPwd" placeholder="비밀번호"></div>
			
			<div class="remember_id">
			
				<div class="save_id">&nbsp
					<input type="checkbox" name="saveLoginCheck" value="yn">&nbsp아이디 저장&nbsp
				</div>
				
				<div class="find_id_pwd">
					<a href="#">아이디 찾기&nbsp</a>|			
					<a href="#">&nbsp비밀번호 찾기&nbsp&nbsp</a>
				</div>
				
			</div>
     			<div id="submit_all">
				<input class="submit_login" type="submit" value="로그인">
     			<input class="join_memberform" type="button" value="회원가입">
<!-- <div class="join_memberform">회원가입</div>	 -->
			</div>
		</form>
	</div>
	
<!-- tab2 비회원 예약 조회 -->
	<div id="tab-2" class="tab-content">
		<form name="frmLogin_nonMem" method="post" action="${page}/" enctype="utf-8">
        	<br>
			<div><input class="input_all input_orderName" type="text" name="id" placeholder="주문자명"></div> 
			<div><input class="input_all input_orderNum"type="password" name="pwd" placeholder="주문번호"></div>
			<div><input class="input_all input_orderPwd"type="password" name="pwd" placeholder="주문 비밀번호"></div>
     			
     			<div id="submit_all_2">				
				<input class="submit_login" type="submit" value="비회원 예약 조회">
     			<input class="join_memberform" type="button" value="회원가입">
			</div>
		</form>
	</div>


<!-- API 전체 -->
<!-- 카카오 로그인 API -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
        function saveToDos(token) { //item을 localStorage에 저장합니다. 
            typeof(Storage) !== 'undefined' && sessionStorage.setItem('AccessKEY', JSON.stringify(token)); 
        };

        window.Kakao.init('');
        
        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    saveToDos(response.access_token)  // 로그인 성공하면 사용자 엑세스 토큰 sessionStorage에 저장
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                            alert('로그인 성공');
                            window.location.href='/TeamPro01/loginSuccess.jsp'
                        }
                    });
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        };

        const login = document.querySelector('#kakaoLogin');
        login.addEventListener('click', kakaoLogin);    
</script>
<br>
  <div class="login_api">
			<!-- 카카오 이미지 로그인 -->
			<!--     	<a href="#0" id="kakaoLogin"><img src="img/kakao_login.png" alt="카카오계정 로그인" style="height: 100px;"/></a> -->
<!-- 			<a href="#0" id="kakaoLogin" onClick="kakaoLogin()">카카오 로그인</a> -->
			<div class="kakaoLogin" onClick="kakaoLogin()">
				<img alt="카카오 로그인" src="${path}/img/kakao_login.png" width="418px" height="100px">
			</div>
<!-- 네이버 로그인 -->
<!-- 			<a href="#0" id="naverLogin" onClick="naverLogin()">네이버 로그인</a> -->
 			<div id="naver_id_login"></div>

			<script type="text/javascript">
			  	var naver_id_login = new naver_id_login("", "http://localhost:8080/TeamPro01/loginSuccess.jsp");
			  	var state = naver_id_login.getUniqState();
			  	naver_id_login.setButton("green", 3, 90);
			  	naver_id_login.setDomain("http://localhost:8080/TeamPro01/login.jsp");
			  	naver_id_login.setState(state);
/* 			  	naver_id_login.setPopup(); */
			  	naver_id_login.init_naver_id_login();
			</script>
			
<!-- 			<a href="#0" id="facebookLogin" onClick="facebookLogin()">
				<img alt="페이스북 로그인" src="img/login-button-facebook.png" width="460px" height="100px">
			</a> -->
			
			
<!-- 페이스북 API 미완성 -->							
<!-- 			<script>
			
			  window.fbAsyncInit = function() {
			    FB.init({
			      appId      : '',
			      cookie     : true,
			      xfbml      : true,
			      version    : 'v3.0'
			    });
			    
				  FB.getLoginStatus(function(response) {
				      statusChangeCallback(response);
				  });
			       -->
<!-- /* 			    FB.AppEvents.logPageView(); */   
			      
/* 			  };
			
			  (function(d, s, id){
			     var js, fjs = d.getElementsByTagName(s)[0];
			     if (d.getElementById(id)) {return;}
			     js = d.createElement(s); js.id = id;
			     js.src = "https://connect.facebook.net/en_US/sdk.js";
			     fjs.parentNode.insertBefore(js, fjs);
			   }(document, 'script', 'facebook-jssdk')); */

/* 			  {
			      status: 'connected',
			      authResponse: {
			          accessToken: '...',
			          expiresIn:'...',
			          signedRequest:'...',
			          userID:'...'
			      }
			  } */ -->
<!-- 			  function statusChangeCallback(response) {
				console.log('statusChangeCallback');
				
				if (response.status == 'connected') {
					console.log(response.authResponse.accessToken);
					testAPI();
				} else if (response.status === 'not_authorized') {
					document.getElementById('status').innerHTML = 'Please log ' + 'into this app.';
				} else {
					document.getElementById('status').innerHTML = 'Please log ' + 'into Facebook.';
				}
			}
			  
			  function checkLoginState() {
				FB.getLoginStatus(function(response) {
					statusChangeCallback(response);
				});
			}
			  function testAPI() {
				console.log('Welcome! Fetching your information...');
				FB.api(
					'/me',
					{"fields":"id,name,email"},
					function(response) {
						console.log('Successful login for: ' + response.name);
						document.getElementById('status').innerHTML = JSON.stringify(response);
					}
				);
				
			}
			 
			
			</script>
			<script type="text/javascript">
		      function redirectMain() {
		          window.location.href="http://localhost:8080/TeamPro01/login.jsp";  
		        }
			</script>
			
			<div class="facebookLogin" onClick="checkLoginState()">
				<img alt="페이스북 로그인" src="img/login-button-facebook.png" width="456px" height="120px">
			</div>
			<fb:login-button
				scope="public_profile,email"
				onlogin="checkLoginState();">
			</fb:login-button> -->
<!-- 			<div id="status" />	 -->
			
  			
 
	
	 	<!-- 네이버 로그인 버튼 노출 영역 -->
	<!--		<div id="naver_id_login"></div>
			//네이버 로그인 버튼 노출 영역
			<script type="text/javascript">
			  	var naver_id_login = new naver_id_login("9fJ2_QsV_QB304XSw40_", "http://localhost:8080/TeamPro01/loginSuccess.jsp");
			  	var state = naver_id_login.getUniqState();
			  	naver_id_login.setButton("green", 3, 40);
			  	naver_id_login.setDomain("http://localhost:8080/TeamPro01/login.jsp");
			  	naver_id_login.setState(state);
			  	naver_id_login.setPopup();
			  	naver_id_login.init_naver_id_login();
			</script> 
	-->
<%
    String clientId = "9fJ2_QsV_QB304XSw40_";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8080/TeamPro01/loginSuccess.jsp", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
<%--   <a href="<%=apiURL%>"><img height="50" src="img/login-button-naver.png"/></a> --%>
</div>
</body>
</html>
