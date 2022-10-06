<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/myQA.css">
<!-- 전체 묶음 div (사이드바 sidebar & 메인 main) -->
<div class="all">

	<!-- 마이페이지 사이드바 mypage side bar -->
		<div class="myReser_sideBar">

	<!-- 프로필 -->
			<div class="profile">

				<div class="profile_img">
					<a href="#">
						<img alt="" src="${path}/img/icons8-male-user-100.png">
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
		
	<!-- my 리뷰 내용 -->
		<div class="container">

	<!-- 타이틀 title -->
		<h1>MY 문의</h1>

	<!-- top icon (상단 메뉴 아이콘)-->
		<div class="reser_icon_all">

	<!-- top icon (전체 예약) -->
			<div class="reser_icon_set">

				<div class="reser_icon_img">
					<a href="#"><img alt="전체 예약" src="${path}/img/icons8-four-squares-70.png"></a>
				</div>

				<div class="reser_icon_ct">
					<a href="#">전체 예약</a>
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
	<!-- top icon (예약 문의) -->
			<div class="reser_icon_set">

				<div class="reser_icon_img">
					<a href="#"><img alt="예약" src="${path}/img/icons8-timesheet-70 (1).png"></a>
				</div>

				<div class="reser_icon_ct">
					<a href="#">예약 문의</a>
				</div>

			</div>
	<!-- top icon (기타 문의) -->
			<div class="reser_icon_set">

				<div class="reser_icon_img">
					<a href="#"><img alt="기타" src="${path}/img/icons8-plus-70.png"></a>
				</div>
				
				<div class="reser_icon_ct">
					<a href="#">기타 문의</a>
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
		
	<!-- 문의 내용 content 전체 -->
		<div class="reser_content">	
		
	<!-- 문의 내용 상세1 detail -->
			<div class="content_detail">	
	<!-- 문의 내용 상세1 detail head -->	
				<div class="content_head">	
	<!-- 문의 내용 상세1 detail head : image 이미지 -->		
					<div class="img_bg">
						<img alt="스터디카페" src="${path}/img/icons8-study-70 (1).png" width="30px">
					</div>	
	<!-- 문의 내용 상세1 detail head : 내용 -->	
					<div class="ct">
						<a href="#">어셈블 스터디 대전점</a>
					</div>			
				</div>
	<!-- 문의 내용 상세1 detail body -->	
				<div class="content_body">
	<!-- 문의 내용 상세1 detail body : image 이미지 -->	
					<div>
						<a href="#"><img alt="" src="${path}/img/study1.jpg" width="150px"></a>
					</div>
	<!-- 문의 내용 상세1 detail body : content 내용 -->
					<div class="ct">
						Q . 스터디 카페 예약 취소하고 싶어요. 환불 규정이 어떻게 되나요?
					</div>
				</div>
			</div>
			
	<!-- 문의 내용 상세2 detail -->
			<div class="content_detail">
	<!-- 문의 내용 상세2 detail head -->	
				<div class="content_head">
	<!-- 문의 내용 상세2 detail head : image 이미지 -->	
					<div class="img_bg">
						<img alt="컨퍼런스룸" src="${path}/img/icons8-meeting-room-70.png" width="30px">
					</div>
	<!-- 문의 내용 상세2 detail head : 내용 -->	
					<div class="ct">
						<a href="#">그린아트룸 대전둔산점</a>
					</div>
				</div>
	<!-- 문의 내용 상세2 detail body -->	
				<div class="content_body">
	<!-- 문의 내용 상세2 detail body : image 이미지 -->	
					<div>
						<a href="#"><img alt="" src="${path}/img/study2.jpg" width="150px"></a>
					</div>
	<!-- 문의 내용 상세2 detail body : content 내용 -->
					<div class="ct">
						Q . 10인 이상 가능한 컨퍼런스 룸이 있나요?
					</div>
				</div>
			</div>
			
	<!-- 문의 내용 상세3 detail -->
			<div class="content_detail">	
	<!-- 문의 내용 상세3 detail head -->		
				<div class="content_head">
	<!-- 문의 내용 상세3 detail head : image 이미지 -->			
					<div class="img_bg">
						<img alt="스터디카페" src="${path}/img/icons8-study-70 (1).png" width="30px">
					</div>
	<!-- 문의 내용 상세3 detail head : 내용 -->			
					<div class="ct">
						<a href="#">어셈블 스터디 대전점</a>
					</div>			
				</div>
	<!-- 문의 내용 상세3 detail body -->	
				<div class="content_body">
	<!-- 문의 내용 상세3 detail body : image 이미지 -->	
					<div>
						<a href="#"><img alt="" src="${path}/img/study1.jpg" width="150px"></a>
					</div>
	<!-- 문의 내용 상세3 detail body : content 내용 -->
					<div class="ct">
						Q . 스터디 카페 예약 취소하고 싶어요. 환불 규정이 어떻게 되나요?
					</div>
				</div>
			</div>
			
	<!-- 문의 내용 상세4 detail -->
			<div class="content_detail">
	<!-- 문의 내용 상세4 detail head -->	
				<div class="content_head">
	<!-- 문의 내용 상세4 detail head : image 이미지 -->	
					<div class="img_bg">
						<img alt="컨퍼런스룸" src="${path}/img/icons8-meeting-room-70.png" width="30px">
					</div>
	<!-- 문의 내용 상세4 detail head : 내용 -->	
					<div class="ct">
						<a href="#">그린아트룸 대전둔산점</a>
					</div>
				</div>
	<!-- 문의 내용 상세4 detail body -->	
				<div class="content_body">
	<!-- 문의 내용 상세4 detail body : image 이미지 -->	
					<div>
						<a href="#"><img alt="" src="${path}/img/study2.jpg" width="150px"></a>
					</div>
	<!-- 문의 내용 상세4 detail body : content 내용 -->
					<div class="ct">
						Q . 10인 이상 가능한 컨퍼런스 룸이 있나요?
					</div>
				</div>
			</div>
		</div>
	</div>	
</div>