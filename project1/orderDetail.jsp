<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/orderdetail.css">
<!-- 주문상세 페이지 -->
  <div class="order_container">
    <div>
      <h1>주문상세</h1>
      <h3>2022. 9. 5 예약 - 예약 번호 65123589</h3>
    </div>

    <!--주문내역 확인카드-->
    <div class="order_card">


      <!--주문내역 좌측-->
      <div id="card_left">
        <h3>미사용</h3>

        <!--주문내역 섬네일사진-->
        <div id="t_left">
          <div><img src="${path}/img/room.jpg" alt="">
          </div>

          <div>
            그린 아트 컨퍼런스 룸 1005호, 중형 회의실, 성인 10명
2022년 9월 6일(월) 14:00 ~ 2022년 9월 6일(월) 16:00<br>
120,000 원  2시간
          </div>

        </div>

        <!--취소 내역시간-->
        <div id="cancle_time">
          <img src="" alt="">
          2022년 9월 1일(목) 23:59까지 무료취소
        </div>

        <!--티켓형 예약카드-->
        <div id="order_t_card">

          <!--사용여부 확인-->
          <div id="used">
            <div><b>예약 확정 (미사용)</b></div><br>
            <div>2022.9.6 14:00
              ~ 2022.9.6 16:00</div>
          </div>

          <!--티켓 번호-->
          <div id="n_ticket">
            <div><b>티켓 번호</b></div><br>
            <div>123asd-213124152</div>
            <div>120,000원</div>
          </div>
          <!--마케팅 수신동의 문자, 이메일 발송-->
          <div id="send_ticket">
            <button>문자 발송하기</button>
            <button>메일 발송하기</button>
          </div>          
        </div>

      </div>

      <!--예약 취소 및 매장 정보-->
      <div id="card_right">
        <div>
          <button>예약 취소</button>
        </div>
        <div>
          <button>매장 정보</button>
        </div>
      </div>
    </div>


    <!--예약 카드(요청사항 포함)-->
    <div class="order_ticket">
      <h1>그린 아트</h1>

      <!--예약 상품 정보-->
      <div id="order_goods">
        <h4><b>컨퍼런스 룸 중형 회의실(1005호)</b></h4>
        <h4>성인 10명 | 2022년 9월 6일(월) 14:00 ~ 2022년 9월 6일(월) 16:00, 총 2시간</h4>
      </div>

      <!--고객 작성 정보-->
      <div id="order_goods_u">
        <p>방문객 이름(대표자) : 홍길동</p>
        <p>이메일 : test@test.com</p>
        <p>연락처(핸드폰) : 010-xxxx-xxxx
        </p>
        <p>고객 요청사항 : 프로젝트 빔을 준비해주세요.</p>
      </div>
    </div>

    <!--사용자 정보-->
    <div class="user_inf">
      <div>
        <h1>사용자 정보</h1>        
      </div>
      <div>
        <p>수령인 : 홍길동</p>
        <p>연락처(핸드폰) : 010-xxxx-xxxx
        </p>
      </div>
    </div>

    <!--결제 정보-->
    <div class="pay_inf">

      <div>
        <h1>결제 정보</h1>
      </div>

      <div id="pay_inf_f">

        <div id="h_pay">
          
          <div id="h_pay_l">
            결제 수단<br>
            xx카드 / 일시불
          </div>

          <div id="m_pay">
            <div>총 상품가격</div>
            <div><b>120,000원</b></div>
          </div>
          
        </div>
        <div id="h_pay">
          
          <div>            
          </div>

          <div id="m_pay">
            <div>xx카드 / 일시불<br><br>
            총 결제금액</div>
            <div><b>120,000원</b><br>
            <h3>120,000원</h3>
          </div>
          </div>
          
        </div>
      </div>

    </div>

    <!--결제영수증 정보-->
    <div>
      <h1>결제영수증 정보</h1>
    </div>
    <div class="payment_inf">
      <!--카드영수증 target:blink 사용-->
      <div id="payment_detail">
        <div>
          해당 주문건에 대해 구매 카드영수증 확인이 가능합니다.
        </div>
        <button>카드영수증</button>
      </div>

      <!--거래명세서 target:blink 사용-->
      <div id="trade_detail">
        <div>
          해당 주문건에 대해 거래명세서 확인이 가능합니다.
        </div>
        <button>거래명세서</button>
      </div>
    </div>






  </div>