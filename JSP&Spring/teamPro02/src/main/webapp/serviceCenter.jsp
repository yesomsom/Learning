<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html kabg="ko">
<link rel="stylesheet" type="text/css" href="serviceCenter.css">
<script src='http://code.jquery.com/jquery-3.3.1.js'></script>

<head>
  <meta charset="utf-8">
  <title>고객 센터</title>
</head>

<script type="text/javascript">
	$(document).ready(function(){
		$('.menu').each(function(index){
			$(this).attr('menu-index', index);
		}).click(function(){
			var index = $(this).attr('menu-index');
			$('.menu[menu-index=' + index + ']').addClass('clicked_menu');
			$('.menu[menu-index!=' + index + ']').removeClass('clicked_menu');
		});


	});

  // 자주 묻는 질문 바탕색 구분
  function Color()
  {
    // 회원
    var color = document.getElementById("qes_backcontent")
    color.style.backgroundColor='red';
  }

  function Color2()
  {
    // 주문/결제
    var color2 = document.getElementById("qes_backcontent")
    color2.style.backgroundColor='blue';
  }

  function Color3()
  {
    // 예약 취소
    var color3 = document.getElementById("qes_backcontent")
    color3.style.backgroundColor='green';
  }

  function Color4()
  {
    // 이벤트/쿠폰
    var color4 = document.getElementById("qes_backcontent")
    color4.style.backgroundColor='violet';
  }

</script>

<body>
  <div class="cust_top">
      <h1>고객센터</h1>

      <!-- 검색창 -->
      <div id="cust_search">
        <!--로고예정-->
        <img src="#" alt="">
        <input type="search" placeholder="궁금한 점을 검색해주세요.">
      </div>


      <!-- 추천검색어 -->
      <div id="cust_recomend">
        
        <div class="cust_tit">
          추천 검색어
        </div>
        
        <div class="cust_tit">
          <input type="button" value="#예약 확인">
        </div>

        <div class="cust_tit">
          <input type="button" value="#예약 취소">
        </div>

        <div class="cust_tit">
          <input type="button" value="#환불/교환">
        </div>

        <div class="cust_tit">
          <input type="button" value="#회원 가입">
        </div>
      </div>
    </div>
    <!-- 자주 묻는 질문 -->
    <div id="qes_container">
      <div id="re_qes">
        자주 묻는 질문
      </div>
      <div id="qes_list">
        <div class = "menu">
          <a href="#">
            <img src="./img/person_icon1.png" alt="문의사항-회원" id="img1" onclick="Color()">
            <p>회원</p>
          </a>
        </div>
        <div class = "menu">
          <a href="#">
            <img src="img/icon2.png" alt="문의사항-주문/결제" id="img2" onclick="Color2()">
            <p>주문/결제</p>
          </a>
        </div>
        <div class = "menu">
          <a href="#">
            <img src="img/icon3.png" alt="문의사항-예약취소" id="img3" onclick="Color3()">
            <p>예약 취소</p>
          </a>
        </div>
        <div class = "menu">
          <a href="#">
            <img src="img/icon4.png" alt="문의사항-이벤트/쿠폰" id="img4" onclick="Color4()">
            <p>이벤트/쿠폰</p>
          </a>
        </div>
      </div>
    </div>
  </div>
  <!-- 안내 슬라이드 -->
  <div id="qes_backcontent">
    <p class="qes_arrow">
    <div class="qes_content">
      <a href="#">
        <p class="cot_tit">Q.회원가입이 안돼요</p>
        <p>먼저, 이미 회원가입 하지 않았는지 확인을 해 주시길 바랍니다.</p>
      </a>
    </div>
    <div class="qes_content">
      <a href="#">
        <p class="cot_tit">Q.회원가입이 안돼요</p>
        <p>먼저, 이미 회원가입 하지 않았는지 확인을 해 주시길 바랍니다.</p>
      </a>
    </div>
    <div class="qes_content">
      <a href="#">
        <p class="cot_tit">Q.회원가입이 안돼요</p>
        <p>먼저, 이미 회원가입 하지 않았는지 확인을 해 주시길 바랍니다.</p>
      </a>
    </div>
    <div class="qes_content">
      <a href="#">
        <p class="cot_tit">Q.회원가입이 안돼요</p>
        <p>먼저, 이미 회원가입 하지 않았는지 확인을 해 주시길 바랍니다.</p>
      </a>
    </div>
  </div>
  <!-- 문의하기 -->
  <div class="q_container">

    <div class="qes_tit_icon">
      <img src="img/person-88-1.png" alt="회원icon"> 
      <b style="font-size:24px;">회원</b>
    </div>

    <div class="qes_box">
      <div id="qes_mem_box1">
        <a href="#">
          <!-- <p class="qes1_box1">1:1 문의하기</p> -->
          <p>1:1 문의하기</p>
        </a>
      </div>


      <div class="qes_mem_box2">
        <div>
          <a href="#">
            <p id="qes_mem_scont" style="width: 290px;">문의내역 확인하기</p>
          </a>
        </div>

        <div>
          <a href="#">
            <p id="qes_mem_scont" style="width: 290px;">아이디/비밀번호 찾기</p>
          </a>
        </div>
      </div>
    </div>

    <div class="qes_tit_icon">
      <img src="img/person-88-2.png" alt="비회원icon">
      <b style="font-size:24px;">비회원</b>
    </div>

    <div class="qes_box">
      <a href="#">
        <div id="qes_nmem_scont1" style="width: 290px;"><p>1:1 문의하기</p></div>
      </a>
      <a href="#">
        <div id="qes_nmem_scont1" style="width: 290px;"><p>문의내역 확인하기</p></div>
      </a>
    </div>


  </div>
  <!-- 고객센터 이용안내 -->
  <div class="qes_info">
    <h1 id="qes_tit2">고객센터 이용안내</h1>
    <div class="qes_infoCon">
      <div class="qes_con">
        <p class="qes_stit">일반회원/비회원</p>
        <p class="qes_con1">0000-0000(평일: 09:00~18:00)</p>
      </div>
      <div>
        <p class="qes_stit">사업자회원</p>
        <p class="qes_con1">0000-0001(평일: 09:00~18:00)</p>
      </div>
    </div>
  </div>
</body>

</html>