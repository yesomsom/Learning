<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/myCoupon.css">
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>보유 쿠폰</title>
</head>

<body>

  <!-- 전체 묶음 div (사이드바 sidebar & 메인 main) -->
  <div class="all">

    <!-- 마이페이지 사이드바 mypage side bar -->
    <div class="myReser_sideBar">

      <!-- 프로필 -->
      <div class="profile">

        <div class="profile_img">
          <a href="#">
            <img alt="" src="../image/icons8-male-user-100.png">
          </a>
        </div>

        <div class="profile_name">
          <a href="#">assemble님</a>
        </div>
      </div>

      <!-- 예약, 보유쿠폰, 보유포인트 현황 -->
      <ul>
        <li>
          <div>
            <a href="#">예약</a>
          </div>

          <div class="click_point_coup">
            <a href="#">1장</a>
          </div>
        </li>

        <li>
          <div>
            <a href="#">보유 쿠폰</a>
          </div>

          <div class="click_point_coup">
            <a href="#">2장</a>
          </div>
        </li>

        <li>
          <div>
            <a href="#">포인트</a>
          </div>

          <div class="click_point_coup">
            <a href="#">1000p</a>
          </div>
        </li>
      </ul>

      <!-- side bar 사이드바 메뉴 -->
      <div class="click_menu_all">
        <div>
          <a href="#">MY 예약</a>
        </div>

        <div>
          <a href="#">찜 목록</a>
        </div>

        <div>
          <a href="#">MY 리뷰</a>
        </div>

        <div>
          <a href="#">MY 문의</a>
        </div>
      </div>
    </div>

    <!-- 쿠폰 리스트 내용 -->
    <div class="container">

      <!-- 쿠폰 타이틀 -->
      <div class="coup_all">
        <h1>보유 쿠폰</h1>
        <div class="coup_list">
          <table>
            <tr>
              <td>쿠폰번호</td>
              <td>쿠폰이름</td>
              <td>사용가능금액</td>
              <td>할인/적립액(률)</td>
              <td>사용기간</td>
            </tr>
            <tr>
              <td>-</td>
              <td>-</td>
              <td>-</td>
              <td>-</td>
              <td>-</td>
            </tr>
          </table>
        </div>

        <!-- 쿠폰 사용 주의사항 -->
        <div class="coup_info">
          <div id="info1">
            <ul>
              <li><b>* 주문 할인쿠폰 적용방법</b></li>
              <li>주문서 쿠폰 선택에서 고객님이 보유하신 [쿠폰번호]를 선택하시면 할인금액(또는 적립금액)이 나타납니다.
                <br>(정률할인(적립)의 경우, 할인율(적립률)이 나타납니다.)
              </li>
            </ul>
          </div>

          <div id="info2">
            <ul>
              <li><b>* 쿠폰 사용시 주의사항</b></li>
            </ul>
            <ol>
              <li>쿠폰마다 사용 가능 금액과 사용기한이 정해져 있으며, 1개 주문서에 1개의 쿠폰만을 사용하실 수 있습니다.</li>
              <li>쿠폰을 사용한 주문 후 반품/환불/취소의 경우 한번 사용하신 쿠폰은 다시 사용하실 수 없습니다.</li>
              <li>쿠폰 적용 품목 및 카테고리가 제한된 경우 해당 품목 또는 카테고리에서만 쿠폰을 사용하실 수 있습니다.</li>
              <li>할인/적립 쿠폰은 적립금할인 등을 제외한 실제 결제금액에 적용됩니다.</li>
              <li>모바일 아이콘 표시 쿠폰은 모바일에서만 사용이 가능합니다.</li>
            </ol>
          </div>

        </div>

      </div>

    </div>