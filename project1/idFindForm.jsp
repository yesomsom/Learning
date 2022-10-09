<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/idFindForm.css">

<!DOCTYPE html>
<html>

<head>  
     <script src="http://code.jquery.com/jquery-latest.js"></script>
   <script>
      $(function() {
         $("#id_find_btn").click(function() {
            location.href="../user/page/idFindForm.do";
         })
      })
   </script>
   <title>아이디/비밀번호 찾기</title>
</head>

<body>
  <div class="container">
    <h1>아이디/비밀번호 찾기</h1>
    <!-- 아이디 찾기 -->
    <div id="search_id">
      <h3>아이디 찾기</h3>
      <!-- 번호로 아이디 찾기 -->
      <div class="id_phone">
        <input type="radio" name="search_id" value="search_phone"> 휴대전화
        <br>
        <div id="radio">
          <input type="text" name="name" placeholder="이름"><br>
          <input type="text" name="phone" placeholder="휴대전화(-없이)">
          <input type="button" value="인증 요청">
        </div>
      </div>
     <!-- 이메일로 아이디 찾기 -->
      <div class="id_email">
        <div>
          <input type="radio" name="search_id" value="search_email"> 이메일
          <br>
          <div id="radio">
            <input type="email" placeholder="이메일">
            <input type="button" value="인증 요청">
          </div>
        </div>
      </div>
      <div id="search_btn">
        <input type="button" value="아이디찾기" id="id_find_btn">
      </div>
    </div>
    <!-- 비밀번호 찾기 -->
    <div id="search_pw">
      <h3>비밀번호 찾기</h3>
      <div class="pw_id">
        <p id="id_cont">찾으려는 비밀번호의 아이디</p>
        <input type="text"><br>
      </div>
      <div id="search_btn">
        <a href="#">
          <input type="button" value="다음">
        </a>
      </div>
    </div>
  </div>
</body>

</html>