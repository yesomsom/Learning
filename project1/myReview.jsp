<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/myReview.css">
<div class="all">

<!-- 마이페이지 사이드바 mypage side bar -->
	<div class="myReser_sideBar">
		<div class="profile">
			<div class="profile_img">
				<a href="#"><img alt="" src="${path}/img/icons8-male-user-100.png"></a>
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
	
<!-- my 리뷰 내용 -->
	<div class="container">
	
<!-- 타이틀 title -->
	<h1>MY 리뷰</h1>

<!-- top icon (상단 메뉴 아이콘)-->
	<div class="reser_icon_all">
<!-- top icon (전체 리뷰) -->
		<div class="reser_icon_set">
			<div class="reser_icon_img">
				<a href="#"><img alt="전체 예약" src="${path}/img/icons8-four-squares-70.png"></a>
			</div>
			<div class="reser_icon_ct">
				<a href="#">전체 리뷰</a>
			</div>
		</div>
<!-- top icon (스터디카페) -->		
		<div class="reser_icon_set">
			<div class="reser_icon_img">
				<a href="#"><img alt="스터디카페" src="${path}/img/icons8-study-70 (1).png"></a>
			</div>
			<div class="reser_icon_ct">
				<a href="#">스터디카페</a>
			</div>
		</div>
<!-- top icon (컨퍼런스룸) -->		
		<div class="reser_icon_set">
			<div class="reser_icon_img">
				<a href="#"><img alt="컨퍼런스룸" src="${path}/img/icons8-meeting-room-70.png"></a>
			</div>
			<div class="reser_icon_ct">
				<a href="#">컨퍼런스룸</a>
			</div>
		</div>
	</div>
	
<!-- 기간 조회 -->
	<div class="btn_all">
		<input class="btn" type="button" value="7일">
		<input class="btn" type="button" value="6개월">
		<input class="btn" type="button" value="1년">
		<input type="date">
		<span>~</span>
		<input type="date">
		<input class="btn" type="button" value="조회">
	</div>
	
<!-- content (리뷰 내용) -->
	<div class="reser_content">	
	
<!-- 리뷰 상세1 detail -->
		<div class="content_detail">
<!-- 리뷰 상세1 head(아이콘 & 이름) -->		
			<div class="content_head">		
				<div class="img_bg">
					<img alt="스터디카페" src="${path}/img/icons8-study-70 (1).png" width="30px">
				</div>		
				<div class="ct">
					<a href="#">어셈블 스터디 대전점</a>
				</div>			
			</div>
<!-- 예약 상세1 body(이미지 & 내용) -->
			<div class="content_body">
				<div>
					<a href="#"><img alt="" src="${path}/img/study1.jpg" width="150px"></a>
				</div>
				<div class="ct">
					예약 일시: 22.09.05 월 오전 9:00 ~ 11:00 <br>
					자리: A1<br>
					별점: ★★★★☆<br>
					리뷰: 시설이 청결해서 마음에 들었는데...
				</div>
			</div>
		</div>
		
<!-- 리뷰 상세2 detail -->
		<div class="content_detail">
<!-- 리뷰 상세2 head(아이콘 & 이름) -->
			<div class="content_head">
				<div class="img_bg">
					<img alt="컨퍼런스룸" src="${path}/img/icons8-meeting-room-70.png" width="30px">
				</div>
				<div class="ct">
					<a href="#">그린아트룸 대전둔산점</a>
				</div>
			</div>
<!-- 예약 상세2 body(이미지 & 내용) -->
			<div class="content_body">
				<div>
					<a href="#"><img alt="" src="${path}/img/study2.jpg" width="150px"></a>
				</div>
				<div class="ct">
					예약 일시: 22.09.05 월 오전 9:00 ~ 11:00 <br>
					룸: 101호<br>
					별점: ★★★★★<br>
					리뷰: 오픈한 지 얼마 안돼서 그런지 시설...
				</div>
			</div>
		</div>
		
<!-- 리뷰 상세3 detail -->
		<div class="content_detail">
<!-- 리뷰 상세3 head(아이콘 & 이름) -->		
			<div class="content_head">		
				<div class="img_bg">
					<img alt="스터디카페" src="${path}/img/icons8-study-70 (1).png" width="30px">
				</div>		
				<div class="ct">
					<a href="#">어셈블 스터디 대전점</a>
				</div>			
			</div>
<!-- 예약 상세3 body(이미지 & 내용) -->
			<div class="content_body">
				<div>
					<a href="#"><img alt="" src="${path}/img/study1.jpg" width="150px"></a>
				</div>
				<div class="ct">
					예약 일시: 22.09.05 월 오전 9:00 ~ 11:00 <br>
					자리: A1<br>
					별점: ★★★★☆<br>
					리뷰: 시설이 청결해서 마음에 들었는데...
				</div>
			</div>
		</div>

<!-- 리뷰 상세4 detail -->		
		<div class="content_detail">
<!-- 리뷰 상세4 head(아이콘 & 이름) -->
			<div class="content_head">
				<div class="img_bg">
					<img alt="컨퍼런스룸" src="${path}/img/icons8-meeting-room-70.png" width="30px">
				</div>
				<div class="ct">
					<a href="#">그린아트룸 대전둔산점</a>
				</div>
			</div>
<!-- 예약 상세4 body(이미지 & 내용) -->
			<div class="content_body">
				<div>
					<a href="#"><img alt="" src="${path}/img/study2.jpg" width="150px"></a>
				</div>
				<div class="ct">
					예약 일시: 22.09.05 월 오전 9:00 ~ 11:00 <br>
					룸: 101호<br>
					별점: ★★★★★<br>
					리뷰: 오픈한 지 얼마 안돼서 그런지 시설...
				</div>
			</div>
		</div>
	</div>
</div>	
</div>