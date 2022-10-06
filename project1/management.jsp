<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/management.css">
<div class="user_container">
    <div class="user_info">

        <!--사용자 이미지-->
        <img src="${path}/img/dot.jpg">
        <p>assemble님</p>

        <!--side 구간 각종 마이페이지 정보-->
        <div id="reserve">
            <p>
                <li>예약</li>
                <li>보유 쿠폰</li>
                <li>포인트</li>
            </p>
        </div>

        <!--side 구간 각종 마이페이지 링크-->
        <div id="mysearch">
            <a href="#">
                <h1>MY 예약</h1>
            </a>
            <hr><br>
            <a href="#">
                <h1>찜 목록</h1>
            </a>
            <hr><br>
            <a href="#">
                <h1>MY 리뷰</h1>
            </a>
            <hr><br>
            <a href="#">
                <h1>MY 문의</h1>
            </a>
        </div>

    </div>
    <div class="take">
        <section id="new">

            <h1 style="margin-left: 100px;">찜한 매장</h1>

            <!--버튼-->
            <button style="margin-left:-120px">전체 선택</button>
            <button>삭제</button>

            <!--사진1-->
            <div class="item">
                <ul>
                    <input type="checkbox" style="float:left;">
                    <a href="detail4.html"><img src="${path}/img/new_01.jpg" width="210" height="210"></a>
                </ul>
            </div>

            <!--사진2-->
            <div class="item">
                <ul>
                    <input type="checkbox" style="float:left;">
                    <a href="#"><img src="${path}/img/new_02.png" width="210" height="210"></a>
                </ul>
            </div>

            <!--사진3-->
            <div class="item">
                <ul>
                    <input type="checkbox" style="float:left;">
                    <a href="#"><img src="${path}/img/new_03.jpg" width="210" height="210"></a>
                </ul>
            </div>

            <!--사진4-->
            <div class="item">
                <ul>
                    <input type="checkbox" style="float:left;">
                    <a href="#"><img src="${path}/img/new_04.jpg" width="210" height="210"></a>
                </ul>
            </div>

            <!--사진5-->
            <div class="item">
                <ul>
                    <input type="checkbox" style="float:left;">
                    <a href="#"><img src="${path}/img/new_05.jpg" width="210" height="210"></a>
                </ul>
            </div>

            <!--사진6-->
            <div class="item">
                <ul>
                    <input type="checkbox" style="float:left;">
                    <a href="#"><img src="${path}/img/new_06.jpg" width="210" height="210"></a>
                </ul>
            </div>

    </div>
