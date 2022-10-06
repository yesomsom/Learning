<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/detail.css">
<!--메인 컨테이너-->
  <div class="detail_container">

    <!--상단 컨테이너 시작-->
    <div class="h_container">
      <div class="img">
        <!--확대사진(자동 슬라이드)-->
        <div id="b-img">
          <img src="${path}/img/room.jpg" alt="">
        </div>
        <!--썸네일 사진5개-->
        <div id="t-img">
          <img src="${path}/img/room.jpg" alt="">
          <img src="${path}/img/room.jpg" alt="">
          <img src="${path}/img/room.jpg" alt="">
          <img src="${path}/img/room.jpg" alt="">
          <img src="${path}/img/room.jpg" alt="">
        </div>
      </div>

      <!--예약 및 매장소개-->
      <div class="reserve">
        <!--매장, 상품명-->
        <div id="h_reserve">
          <h1>그린아트</h1>
          <h3>컨퍼런스 룸</h3>
        </div>
        <button id="btn">예약하기</button>
        <!--공유 및 상품 선택-->
        <div id="share">
          
            <img src="${path}/img/room.jpg" alt="">
          
          <select>
            <option value="" selected>선택</option>
            <option value="">add</option>
          </select>
        </div>

        <div id="introduce">
          <h4>소개</h4>
          <p>회의나 세미나, 컨퍼런스, 이벤트 등 다양한 모임을 위해 최신 시설을 갖춘 회의실이 있습니다.</p>
        </div>


        <!--매장 위치, map api사용-->
        <div id="f_reserve">
          <h4>위치</h4>
          <p>대전광역시 서구 둔산동 1160</p>
          <div id="map" style="width:220px;height:190px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d5cbdd87fa636fd19281386c302b0dd"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(36.349268551597966, 127.37767658950676),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(36.349268551597966, 127.37767658950676); 
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);    
	</script>
        </div>


      </div>
  </div>
    <!--h_container 끝-->







    <!--상세 페이지 시작-->
  <div class="detail_container">
    <!--tab -->
    <div class="d_tablist">
      <div id="d_tab">상품 선택</div>
      <div id="d_tab">상품 설명</div>
      <div id="d_tab">상품 리뷰</div>
      <div id="d_tab">상품 문의</div>
    </div>

    <!--상세 상품 리스트-->
    <table class="d_goodslist">
      <thead>
        <tr>
          <th style="width:50%;"><h2>상품</h2></th>
          <th style="width:35%;"><h2>요금</h2></th>
          <th><h2>선택</h2></th>
        </tr>
      </thead>


      <tbody>
        <!--상품-->
        <tr>
          <!--상품 칸-->
          <td>

            <ul>
              <h2>컨퍼런스룸(중형회의실)</h2>
              <li>사이즈 : 72.7㎡, 22평</li>

              <li>수용인원: 22명</li>

            </ul>
          </td>

          <!--요금 칸-->
          <td id="plc_td">

            <!--가격-->
            <h1>120,000원</h1>

            <!--적립금-->
            <div id="point">   
              최대 6,000원 적립
            </div>

            <!--정액제 가격-->
            <!--반나절-->
            <span>HALF DAY 2,400,000원</span><br>
            <!--종일-->
            <span>FULL DAY 3,000,000원</span>
          </td>

          <!--선택 버튼-->
          <td>
            <button>
              선택
            </button>
          </td>
        </tr>
        <!--상품-->
        <tr>
          <!--상품 칸-->
          <td>

            <ul>
              <h2>컨퍼런스룸(중형회의실)</h2>
              <li>사이즈 : 72.7㎡, 22평</li>

              <li>수용인원: 22명</li>

            </ul>
          </td>
          <!--요금 칸-->
          <td id="plc_td">

            <!--가격-->
            <h1>120,000원</h1>

            <!--적립금-->
            <div id="point">   
              최대 6,000원 적립
            </div>

            <!--정액제 가격-->
            <!--반나절-->
            <span>HALF DAY 2,400,000원</span><br>
            <!--종일-->
            <span>FULL DAY 3,000,000원</span>
          </td>

          <!--선택 버튼-->
          <td>
            <button>
              선택
            </button>
          </td>
        </tr>
        <!--상품-->
        <tr>
          <!--상품 칸-->
          <td>

            <ul>
              <h2>컨퍼런스룸(중형회의실)</h2>
              <li>사이즈 : 72.7㎡, 22평</li>

              <li>수용인원: 22명</li>

            </ul>
          </td>
          <!--요금 칸-->
          <td id="plc_td">

            <!--가격-->
            <h1>120,000원</h1>

            <!--적립금-->
            <div id="point">   
              최대 6,000원 적립
            </div>

            <!--정액제 가격-->
            <!--반나절-->
            <span>HALF DAY 2,400,000원</span><br>
            <!--종일-->
            <span>FULL DAY 3,000,000원</span>
          </td>

          <!--선택 버튼-->
          <td>
            <button>
              선택
            </button>
          </td>
        </tr>
        
      </tbody>
    </table>
    <!--상품 리스트 끝-->




<div class="toggle_content">
        <!--상품-->
      <div id="goods">
        <h1>컨퍼런스룸(중형회의실)</h1>
        <img src="${path}/img/room.jpg" alt="">        
      </div>
      
      <ul>
        <li>2 개로 구성된 글램 콘셉트의 인테리어가 돋보이는 다기능 공간</li>
        <li>30~60 인용으로 최대 90명 행사 가능</li>
        <li>빌트인 음향 시스템/마이크로폰</li>
        <li>빔 프로젝터 및 전동식 스크린</li>
        <li>생수 무료제공</li>
      </ul>

      <div id="goods">
        <h1>컨퍼런스룸(대형회의실)</h1>
        <img src="${path}/img/room.jpg" alt="">      
      </div>
      
      <ul>
        <li>2 개로 구성된 글램 콘셉트의 인테리어가 돋보이는 다기능 공간</li>
        <li>30~60 인용으로 최대 90명 행사 가능</li>
        <li>빌트인 음향 시스템/마이크로폰</li>
        <li>빔 프로젝터 및 전동식 스크린</li>
        <li>생수 무료제공</li>
      </ul>

      <div id="goods">
        <h1>컨퍼런스룸(특대형회의실)</h1>
        <img src="${path}/img/room.jpg" alt="">      
      </div>
      
      <ul>
        <li>2 개로 구성된 글램 콘셉트의 인테리어가 돋보이는 다기능 공간</li>
        <li>30~60 인용으로 최대 90명 행사 가능</li>
        <li>빌트인 음향 시스템/마이크로폰</li>
        <li>빔 프로젝터 및 전동식 스크린</li>
        <li>생수 무료제공</li>
      </ul>

    </div>    

      <!-- 더보기 란-->
      <button type="button" id="goods_inf">
        상품정보 접어두기
      </button>

  <!--사용방법-->
  <div id="goods_h1"><h1>사용방법</h1></div>
  <div class="goods_use">
     
    <!--유의사항-->
    <div id="use_left">
      <h2>유의사항</h2>
    </div>
    <!--유의사항 내용-->
    <div id="use_content">
      <!--유의사항 공지-->
      <div id="use_noti">
        <ul>
          <li>쿠폰 중복 사용이 불가합니다.</li>
          <li>모든 옵션은 대/소인 공통입니다.</li>
        </ul>
      </div>

      <!--티켓 사용방법-->
      <ul id="use_ticket">
        <p>[티켓 사용 방법]</p>
        <li>최소 이용 1시간 전 구매(당일구매/당일사용 가능)</li>
        <li>별도의 SMS는 전송되지 않습니다.</li>
        <li>현장방문, 고객 성함 및 휴대폰번호 뒷 4자리 확인 후 이용</li>
      </ul>

      <!--업체정보-->
      <ul id="plc_inf">
        <p>[업체정보]</p>
        <li>업체명 : 그린 아트 둔산점</li>
        <li>업체 주소</li>
        <li>지번 : 대전광역시 서구 둔산동 1160</li>
        <li>도로명 : 대전광역시 서구 대덕대로 182</li>
        <li>운영시간 : 24시간 운영</li>
        <li>예약마감 : 현장문의</li>
        <li>업체번호 : 041-xxxx-xxxx</li>
        <li>휴무안내 : 휴무없음</li>
        <li>주차 가능</li>
        <li>문의 전화 : 15xx-xxxx</li>
        <li>고객센터 문의시간 : 평일 09:00 ~ 18:00 (단, 토/일,공휴일은 휴무)</li>
      </ul>
    </div>

  </div>
    <!--환불-->
    <div id="goods_h1"><h1>취소/환불 규정</h1></div>
  <div class="goods_refund">


      <!--환불규정-->
      <div id="use_left">
        <h2>취소/환불규정</h2>
      </div>
      <!--환불 내용-->
      <div id="refund_content">
          <!--취소 설명-->
        <ul id="cancle_ex">
          <li>업체 확인 후 취소가 완료되는 상품입니다.</li>
          <li>유효기간 내 미사용티켓 100% 환불가능</li>
          <li>유효기간 만료 후 환불불가</li>
          <li>사용한 티켓은 환불 불가합니다.</li>
        </ul>

        <!--환불설명-->
        <ul id="refund_ex">
          <li>취소 수수료는 총 결제금액 기준으로 책정됩니다. 단 즉시할인 상품의 경우 할인 적용 전 금액으로 책정됩니다.</li>
          <li>패키지로 구성된 상품은 부분환불 불가 합니다. (구성품 중 일부 사용시 부분환불 또는 전체환불 불가)</li>
          <li>취소 마감일 : 영업일과 주말(토, 일요일) 및 공휴일 취소 가능.</li>
          <li>취소 마감 시간: 23시 59분 기준.</li>
        </ul>
      </div>
  </div>
    
  <div id="notice_inf">
    <div>상품 필수 정보 고시</div>    
  </div>

  <div id="notice_seller">
    <div>판매자 정보</div>    
  </div>

  <div class="goods_review">
    <div id="review_header">
      <div>    
      	<h1>상품 리뷰</h1>
      </div>
      <div>
      <h4>상품 리뷰 운영 원칙</h4>
      </div>
    </div>

    <div id="review_content">
      등록된 상품평이 없습니다.
    </div>
  </div>


  <div class="goods_question">
    <div id="question_header">
      <h1>상품문의</h1>
      <button>문의하기</button>
    </div>

    <div id="question_content">
      <ul>
        <li>구매한 상품의 취소/반품은 예약내역에서 신청 가능합니다.</li>
        <li>상품문의 및 상품리뷰 게시판을 통해 취소나 환불 등은 처리되지 않습니다.</li>
        <li>가격, 판매자, 환불 등 해당 상품 자체와 관련 없는 문의는 고객센터 내 1:1문의하기를 이용해주세요.</li>
        <li> "해당 상품 자체"와 관계없는 글, 양도, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 이동, 노출제한, 삭제 등의 조치가 취해질 수 있습니다.</li>
        <li>공개 게시판이므로 전화번호, 메일 주소 등 고객님의 소중한 개인정보는 절대 남기지 말아주세요.</li>
      </ul>
    </div>
  </div>
  </div>
  </div>
  <script src="${path }/js/toggle.js"></script>