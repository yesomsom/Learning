<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
  <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <% request.setCharacterEncoding("UTF-8"); %>
        <!DOCTYPE html>
        <html lang="ko">
      <head>
          <meta charset="UTF-8">
          <title>사이드바</title>
        </head>

        <body>
          <div class="side-container">
            <a href="#"><img style="width:15px;"src="${contextpath}/image/chevron-icon.png"></a> 
            <div id="side-list">최근 본 매장</div>
            <div>
              <div>
                <img style="width:100px;"src="${contextpath}/image/shop1.jpg">
              </div>
              <button>
                <img style="width:15px;"src="${contextpath}/image/left-icon.png">
              </button>
              <span> 매장 1</span>
              <button>
                <img style="width:15px;"src="${contextpath}/image/right-icon.png">
              </button>
            </div>
            <div id="side-list">찜 목록</div>
            <div id="side-list">예약 확인</div>
            <div id="side-list">고객 센터<br>
              <a href="tel:xxx-xxxx"><img style="width: 15px;"
                src="${contextpath}/image/phone-icon.png" >xxx-xxxx</a>
              <br>
              SNS
              <hr>
            </div>
            
            <div>
              <img style="width:25px;"src="${contextpath}/image/kakaotalk.png">              
              <img style="width:25px;"src="${contextpath}/image/facebook.png">              
              <img style="width:25px;"src="${contextpath}/image/instargram.png">              
            </div>
            <a href="#"><img style="width:15px;"src="${contextpath}/image/chevron2-icon.png"></a>
          </div>
        </body>

        </html>