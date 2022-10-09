<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <title>헤더</title>
</head>
<body>
  <div id="main_logo">
    <a href="${path}/css }/main.do"><h1>Assemble</h1></a>
    <ul class="gnbicon">       
      <li> <img src="${path}/img/icon1.png"></li>
      <li> <img src="${path}/img/icon1.png"></li>
      <li> <img src="${path}/img/icon1.png"></li>
      <li>
      <c:choose>
          <c:when test="${isLogOn == true}">
            <a href="${path}/css}/page/logout.do">logout</a>
          </c:when>
          <c:otherwise>
	        <a href="${path}/css}/page/login.do">login</a>
	      </c:otherwise>
	   </c:choose>
	   <li>        
    </ul>
  </div>
  <div class="gnbnav">
    <ul>
      <li><a href="${path}/css }/page/best.do">BEST</a></li>
      <li><a href="${path}/css }/page/studyCafe.do">Study Cafe</a></li>
      <li><a href="${path}/css }/page/conferenceRoom.do">Conference Room</a></li>
      <li><a href="${path}/css }/page/community.do">Community</a></li>
      <li><a href="${path}/css }/page/event.do">Event / Coupon</a></li>
      <li><a href="${path}/css }/page/serviceCenter.do">Customer Center</a></li>
    </ul>
  </div>
</body>

</html>