<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/meanMain.css">
<div class="main_container">
	<!--상단 컨테이너-->
	<div class="h_container">
		<div id="user_profile">
			<img src="${path}/img/room.jpg" />
			<p>assemble님</p>
		</div>

		<div class="u_container">
			<!--회원 등급-->
			<div id="p_grade">
				<img src="${path}/img/room.jpg" />
				<p>회원 등급</p>
				<p>등급</p>
			</div>

			<!--보유 쿠폰 -->
			<div id="p_coupon">
				<img src="${path}/img/room.jpg" />
				<p>보유 쿠폰</p>
				<p>건</p>
			</div>

			<!--회원 포인트-->
			<div id="p_point">
				<img src="${path}/img/room.jpg" />
				<p>포인트</p>
				<p>점</p>
			</div>



		</div>
	</div>





	<!--예약 현황-->

	<h1>MY 예약 현황</h1>
	<hr>
	<!--예약 컨테이너-->

	<div class="p_reserve">

		<!--매장 리스트-->

		<div id="plc_list">

			<!--매장들-->

			<div id="plc">

				<div id="plc_name">
					<h2>매장명</h2>
				</div>

				<!-- 매장 이미지 및 예약 현황-->
				<div id="plc_reserve">
					<div id="plc_reserve_img">
						<img src="${path}/img/room.jpg" alt="">
					</div>

					<div id="plc_reserve_text">
						예약 일시:<br> 22.09.05 월<br> 오전 9:00 - 11:00<br> 자리:
						A1
					</div>

				</div>

			</div>

			<div id="plc">
				<div id="plc_name">
					<h2>매장명</h2>
				</div>

				<!-- 매장 이미지 및 예약 현황-->
				<div id="plc_reserve">
					<div id="plc_reserve_img">
						<img src="${path}/img/room.jpg" alt="">
					</div>

					<div id="plc_reserve_text">
						예약 일시:<br> 22.09.05 월<br> 오전 9:00 - 11:00<br> 자리:
						A1
					</div>

				</div>

			</div>
		</div>
		<hr>
		<!--밑 부분 링크-->
		<div class="view_more">

			<!--찜 목록(폰트 사용함)-->
			<div id="heart">
				<a href="${path}/css}/img/room.jpg"> <i class="fa-solid fa-heart"></i>
					<p>찜 목록</p>
				</a>
			</div>

			<!--MY 리뷰(폰트 사용함)-->
			<div id="my_review">
				<a href="${path}/css}/img/room.jpg"> <i class="fa-regular fa-comment"></i>
					<p>MY 리뷰</p>
				</a>
			</div>

			<!--결제 내역(폰트 사용함)-->
			<div id="my_pay">
				<a href="${path}/css}/img/room.jpg"> <i class="fa-solid fa-bars"></i>
					<p>결제 내역</p>
				</a>
			</div>

			<!--MY 문의(폰트 사용함)-->
			<div id="my_mean">
				<a href="${path}/css}/img/room.jpg"> <i class="fa-solid fa-comment"></i>
					<p>MY 문의</p>
				</a>
			</div>
		</div>
	</div>
</div>