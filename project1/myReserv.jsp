<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <!-- <link href="../css/myQA.css" rel="stylesheet" type="text/css"> -->
  <link href="../css/myReserv.css" rel="stylesheet" type="text/css">
  <title>MY예약/결제</title>
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

    <!-- 나의 예약 내용 -->
    <div class="container">

      <!-- 나의 예약 타이틀 -->
      <div class="reserv_all">
        <h1>MY 예약/결제</h1>
        <!-- 예약/결제 탭 -->
        <div class="reserv_body">
          <div id="pr_stitl">
            <ul>
              <li>
                <a href="#"><span>예약 내역</span></a>
                <a href="#"><span>결제 내역</span></a>
              </li>
            </ul>
          </div>
          <!-- 예약 기간 설정 -->
          <div class="pr_date">
            <form>
              <input type="date" id="currentDate">
              ~
              <input type="date" id="currentDate">
              <input type="button" value="조회">
            </form>
          </div>

          <!-- 예약 리스트 =>반복 작업 필요-->
          <div class="pr_list">
            <div class="room_info">
              <a href="#"><img src="../image/conference room1.jpg"></a>
            </div>
            <div class="room_info">
              <a href="#"><p>예약 명</li></a>
              <p>예약일</li>
              <p>00,000원</li>
            </div>
            <div class="room_info">
              <p>업체명</p>
              <p>0000-0000</p>
            </div>
            <div class="room_info">
              <a href="#">상세 정보</a>
            </div>
          </div>

        </div>
      </div>
    </div>