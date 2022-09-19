<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<script>
			
			  window.fbAsyncInit = function() {
			    FB.init({
			      appId      : '635833504838047',
			      cookie     : true,
			      xfbml      : true,
			      version    : 'v3.0'
			    });
			    
				  FB.getLoginStatus(function(response) {
				      statusChangeCallback(response);
				  });
			      
/* 			    FB.AppEvents.logPageView(); */   
			      
			  };
			
			  (function(d, s, id){
			     var js, fjs = d.getElementsByTagName(s)[0];
			     if (d.getElementById(id)) {return;}
			     js = d.createElement(s); js.id = id;
			     js.src = "https://connect.facebook.net/en_US/sdk.js";
			     fjs.parentNode.insertBefore(js, fjs);
			   }(document, 'script', 'facebook-jssdk'));
			  


			  


/* 			  {
			      status: 'connected',
			      authResponse: {
			          accessToken: '...',
			          expiresIn:'...',
			          signedRequest:'...',
			          userID:'...'
			      }
			  } */
			  function statusChangeCallback(response) {
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
<fb:login-button
	scope="public_profile,email"
	onlogin="checkLoginState();">
</fb:login-button>
<div>

</div>
<button class="favorite styled"
        type="button" scope="public_profile,email"
	onlogin="checkLoginState();">
    Add to favorites
</button>
<input type="button" onClick="checkLoginState()" value="로그인">
<input type="button" oncClick="javascript:fblogout();" value="로그아웃" />
<div id="status" />	
</body>
</html>