<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${path}/css}/css/serviceCenter.css">
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

//   // 자주 묻는 질문 바탕색 구분
//   function Color()
//   {
//     // 회원
//     var color = document.getElementById("qes_backcontent")
//     color.style.backgroundColor='red';
//   }

//   function Color2()
//   {
//     // 주문/결제
//     var color2 = document.getElementById("qes_backcontent")
//     color2.style.backgroundColor='blue';
//   }

//   function Color3()
//   {
//     // 예약 취소
//     var color3 = document.getElementById("qes_backcontent")
//     color3.style.backgroundColor='green';
//   }

//   function Color4()
//   {
//     // 이벤트/쿠폰
//     var color4 = document.getElementById("qes_backcontent")
//     color4.style.backgroundColor='violet';
//   }
// </script>

<script>
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

<body>
  <div class="cust_top">
      <h1>고객센터</h1>

      <!-- 검색창 -->
      <div class="cust_search">
        <div>
          <input type="search" placeholder="궁금한 점을 검색해주세요.">
        </div>
        <div>
          <button type="submit" class="search_botton"><img src="${path}/img/icons8-zoom-30.png"></button>
        </div>
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
<!-- 탭 -->
<div class="container">
	<ul class="tabs">
		<li class="menu tab-link current" data-tab="tab-1">
      <div>
        <a href="#">
          <img src="${path}/img/person_icon1.png" alt="문의사항-회원" id="img1">
          <p>회원</p>
        </a>
      </div>
    </li>
		<li class="menu tab-link" data-tab="tab-2">
      <div>
        <a href="#">
          <img src="${path}/img/icon2.png" alt="문의사항-주문/결제" id="img2">
          <p>주문/결제</p>
        </a>
      </div>
    </li>
		<li class="menu tab-link" data-tab="tab-3">
      <div>
        <a href="#">
          <img src="${path}/img/icon3.png" alt="문의사항-예약취소" id="img3">
          <p>예약 취소</p>
        </a>
      </div>
    </li>
    <li class="menu tab-link" data-tab="tab-4">
        <div>
          <a href="#">
            <img src="${path}/img/icon4.png" alt="문의사항-이벤트/쿠폰" id="img4">
            <p>이벤트/쿠폰</p>
          </a>
        </div>
    </li>
	</ul>
<!-- tab1 탭1 (회원 문의) -->
  <div id="tab-1" class="tab-content current">
    <div class="tab-1_content_all">
      <div class="tab-1_content">
        <div class="tab-1_content_title">
          Q. 로그인 아이디가 생각나지 않아요.
        </div>
        <div class="tab-1_content_answer">
          √ 로그인창에서 아이디 찾기 진행
          아이디 혹은 비밀번호를 분실하였다면,
          본인인증을 통해 ID 찾기 및 비밀번호를 재설정 할 수 있습니다. (본인인증 가능한 수단: 휴대폰/이메일/아이핀)
        </div>
      </div>
      <div class="tab-1_content">
        <div class="tab-1_content_title">
          Q. 회원가입시 이미 가입되어 있는 정보라고 나옵니다.
        </div>
        <div class="tab-1_content_answer">
          √ 아이디 찾기 또는 비밀번호 찾기 진행
          회원가입 하신 사실을 잊으셨거나 제휴사이트를 통해 가입된 경우가 많습니다.
          아이디 찾기 또는 비밀번호 찾기를 진행해주세요.
        </div>
      </div>
      <div class="tab-1_content">
        <div class="tab-1_content_title">
          Q. 아이디를 여러 개 사용할 수 있나요?
        </div>
        <div class="tab-1_content_answer">
          √ 실명인증된 1개의 아이디만 사용 가능
          지마켓에서는 실명인증된 1개의 아이디만 사용 가능합니다.
          단, 사업자 판매회원은 판매 편의성 개선을 위해 하나의 사업자등록번호로
          최대 3개까지 아이디 신청이 가능 합니다.
        </div>
      </div>
      <div class="tab-1_content">
        <div class="tab-1_content_title">
          Q. 탈퇴하면 개인정보는 모두 삭제되나요?
        </div>
        <div class="tab-1_content_answer">
          √ 개인정보는 탈퇴 즉시 삭제
          정보통신망 이용 촉진 및 정보보호에 관한 법률 규정상 사후 문제 발생 가능성에 대비하여
          최소한의 기본 정보와 거래내역은 아래 명시한 기간 동안 G마켓에서 보관합니다.
          1. 계약 또는 청약철회 등에 관한 기록 : 5년
          2. 대금결제 및 재화 등의 공급에 관한 기록 : 5년
          3. 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
        </div>
      </div>
    </div>
  </div>  

<!-- tab2 탭2 (주문/결제 문의) -->
	<div id="tab-2" class="tab-content">
    <div class="tab-2_content_all">
      <div class="tab-2_content">
        <div class="tab-2_content_title">
          Q. 신용카드 결제 중 오류가 난 경우 어떻게 하나요?
        </div>
        <div class="tab-2_content_answer">
          아래의 상황을 확인하여 조치할 수 있습니다.

타임아웃 : 일시적인 오류로 잠시 후 재결제 시도
카드정보 오류 : 카드번호, 비밀번호, CVC 정보 재확인
할부개월수 : 체크카드, 기프트카드, 법인카드는 일시불만 결제 가능
안심클릭, ISP결제 등 결제서비스 오류 : 해당 카드사 문의
카드오류 : 한도초과, 사용중지 등인 경우
확인 후에도 해결에 어려움이 있으시다면 고객센터(1566-5701)로 문의하시면 도와드리겠습니다.
        </div>
      </div>
      <div class="tab-2_content">
        <div class="tab-2_content_title">
          Q. 결제방법을 변경하고 싶어요.
        </div>
        <div class="tab-2_content_answer">
          결제 완료 이후에는 결제방법을 변경할 수 없습니다.
          결제방법 변경이 필요하다면 주문한 상품을 취소 후 재구매해 주셔야 합니다.
        </div>
      </div>
      <div class="tab-2_content">
        <div class="tab-2_content_title">
          Q. 결제 시 오류가 나요.
        </div>
        <div class="tab-2_content_answer">
          PC 결제 오류 시 하기와 같은 방법으로 해결 가능합니다.
          인터넷(IE) 실행 > 도구 > 인터넷 옵션 > 일반 > 검색 기록 삭제
        </div>
      </div>
      <div class="tab-2_content">
        <div class="tab-2_content_title">
          Q. 취소된 상품을 다시 주문할 수 있나요?
        </div>
        <div class="tab-2_content_answer">
          상품이 판매 중이라면 재구매할 수 있습니다.
상품 재구매를 원하신다면 주문 내역에서 상품명을 클릭하여 상품을 다시 구매할 수 있습니다.
※ 주문 시 사용했던 할인 쿠폰은 취소 완료와 동시에 자동 복구되며, 사용 기한이 만료된 쿠폰도 취소 완료 후 3일 동안 재사용이 가능합니다.
        </div>
      </div>
    </div>
	</div>

<!-- tab3 탭3 (예약 취소 문의) -->  
	<div id="tab-3" class="tab-content">
    <div class="tab-3_content_all">
      <div class="tab-3_content">
        <div class="tab-3_content_title">
          Q. 취소 완료 후 환불은 언제 되나요?
        </div>
        <div class="tab-3_content_answer">
          결제수단에 따라 상이합니다.
          1. 무통장입금 : 포인트 환불 선택 시 취소 완료 즉시 재 적립 / 내 계좌로 환불 시 취소 완료일 +1일(영업일 기준) 소요
          2. 신용/체크카드 : 3~5일(영업일 기준) / 체크카드는 승인 취소 후 해당 계좌로 입금 
          3. 휴대폰 소액결제 (스마일캐시로 환불되는 경우에는 즉시 확인 가능)
        </div>
      </div>
      <div class="tab-3_content">
        <div class="tab-3_content_title">
          Q. 예약 취소하고 싶어요.
        </div>
        <div class="tab-3_content_answer">
          마이페이지-마이예약-취소를 클릭해주세요.
        </div>
      </div>
      <div class="tab-3_content">
        <div class="tab-3_content_title">
          Q. 환불되었다고 하는데 통장으로 입금된 돈이 없어요.
        </div>
        <div class="tab-3_content_answer">
          취소 시 선택한 환불 방법에 따라 포인트 또는 내 계좌로 환불이 가능합니다.
        </div>
      </div>
      <div class="tab-3_content">
        <div class="tab-3_content_title">
          Q. 왜 포인트로 환불이 되나요?
        </div>
        <div class="tab-3_content_answer">
          취소 시 선택한 환불 방법에 따라 포인트 또는 내 계좌로 환불이 가능합니다.
        </div>
      </div>
    </div>
	</div>

<!-- tab4 탭4 (이벤트/쿠폰 문의) -->
  <div id="tab-4" class="tab-content">
    <div class="tab-4_content_all">
      <div class="tab-4_content">
        <div class="tab-4_content_title">
          Q. 할인쿠폰이 적용되지 않아요.
        </div>
        <div class="tab-4_content_answer">
          유효기간 만료 또는 쿠폰 조건, 일부 품목/카테고리에 따라 사용이 불가능할 수 있습니다.
        </div>
      </div>
      <div class="tab-4_content">
        <div class="tab-4_content_title">
          Q. 포인트는 어떻게 사용하나요?
        </div>
        <div class="tab-4_content_answer">
          상품 구매 시 현금처럼 사용할 수 있습니다.
사용하려는 금액을 직접 입력하시거나 『전액사용』 버튼을 눌러 주세요.
스마일캐시 잔액이 결제금액보다 적을 경우 타결제수단과 함께 복합결제도 가능합니다.
        </div>
      </div>
      <div class="tab-4_content">
        <div class="tab-4_content_title">
          Q. 취소할 경우 사용한 쿠폰은 복구가 되나요?
        </div>
        <div class="tab-4_content_answer">
          상품 구매 후 취소가 될 경우 사용한 쿠폰은 다시 이용 가능합니다.
유효기간 경과 후에는 일정기간 내 사용되지 않을 경우 소멸되므로 빠른 이용 부탁드립니다.
무통장 입금 선택 후 미입금으로 인한 취소의 경우는 쿠폰 복구가 불가합니다.
(판매자 취소/구매자취소/입금기한 경과에 따른 취소 모두 해당)
        </div>
      </div>
      <div class="tab-4_content">
        <div class="tab-4_content_title">
          Q. 포인트는 어떻게 얻을 수 있나요?
        </div>
        <div class="tab-4_content_answer">
          회원가입 시 1000 포인트가 지급됩니다. 
          또한 리뷰를 작성하거나 이벤트 참여 시 포인트를 얻을 수 있습니다.
        </div>
      </div>
    </div>
  </div>
  <br>
  <div><a href="#">>전체 문의 보기</a></div>
</div>

  <!-- 문의하기 -->
  <div class="q_container">

    <div class="qes_tit_icon">
      <img src="${path}/img/person-88-1.png" alt="회원icon"> 
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
      <img src="${path}/img/person-88-2.png" alt="비회원icon">
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