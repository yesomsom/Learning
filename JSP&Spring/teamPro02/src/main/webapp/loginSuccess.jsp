<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- 네이버 로그인 API -->
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<!-- 카카오 로그아웃 -->
    <a href="#0" id="kakaoLogout">카카오 로그아웃</a>
<!--     <a href="#0" id="secession">탈퇴</a> -->
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>

        window.Kakao.init('1e193fb98402ca8ad1190504d5faff19');
        window.Kakao.Auth.setAccessToken(JSON.parse(sessionStorage.getItem('AccessKEY'))); //sessionStorage에 저장된 사용자 엑세스 토큰 받아온다.
        
        function kakaoLogout() {
            if (!Kakao.Auth.getAccessToken()) {
                console.log('Not logged in.');
                return;
            }
            Kakao.Auth.logout(function(response) {
                /* alert(response +' logout'); */
                alert('로그아웃 완료');
                window.location.href='/TeamPro01/login.jsp'
            });
        };

        const logout = document.querySelector('#kakaoLogout');
        logout.addEventListener('click', kakaoLogout);
        
// 카카오 탈퇴
/*         function secession() {
            Kakao.API.request({
                url: '/v1/user/unlink',
                success: function(response) {
                    console.log(response);
                    //callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
                    window.location.href='/'
                },
                fail: function(error) {
                    console.log('탈퇴 미완료')
                    console.log(error);
                },
            });
        }; 
        const sion = document.querySelector('#secession');        
        sion.addEventListener('click', secession);        
        
        */	
    </script>
    
<!-- 네이버 로그인 성공시 정보 받아옴 -->
<script type="text/javascript">
		  var naver_id_login = new naver_id_login("9fJ2_QsV_QB304XSw40_", "http://localhost:8080/TeamPro01/loginSuccess.jsp");
		  // 접근 토큰 값 출력
		  /* alert(naver_id_login.oauthParams.access_token); */
		  // 네이버 사용자 프로필 조회
		  naver_id_login.get_naver_userprofile("naverSignInCallback()");
		  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		  /* function naverSignInCallback() {
		    alert(naver_id_login.getProfileData('email'));
		    alert(naver_id_login.getProfileData('nickname'));
		    alert(naver_id_login.getProfileData('age'));
		  } */
		  
</script>

<a href="#0" id="naverLogout">네이버 로그아웃</a>
<script type="text/javascript">
	function naverLogout() {
/* 		naver_id_login.logout(); */
		alert('로그아웃 완료');
		location.replace("login.jsp");
	}
    const n_logout = document.querySelector('#naverLogout');
    n_logout.addEventListener('click', naverLogout);
</script>

</body>
</html>