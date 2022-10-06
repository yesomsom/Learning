<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link href="${path}/css }/css/myGrade.css" rel="stylesheet" type="text/css">
	<title>회원 등급 안내</title>
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
		<!-- 회원 등급 내용 -->
		<div class="container">
			<!-- 회원 등급 타이틀&안내 -->
			<div class="lev_all">
				<h1>회원 등급 안내</h1>
				<div id="lev_stitl">
					<P>등급에 따른 할인크폰은 매월 자동으로 발급됩니다.
						발급된 쿠폰은 <b>'마이페이지>보유쿠폰'</b>에서 확인 가능합니다.</P>
				</div>
				<!-- 회원 등급 테이블 -->
				<div>
					<table class="lev_table">
						<tr>
							<td>구분</td>
							<td>WELCOME</td>
							<td>SILVER</td>
							<td>GOLD</td>
							<td>VIP</td>
						</tr>
						<tr>
							<td>회원 등급</td>
							<td class="lev_grade1">FAMILY</td>
							<td class="lev_grade2">SILVER</td>
							<td class="lev_grade3">GOLD</td>
							<td class="lev_grade4">FAMILY</td>
						</tr>
						<tr>
							<td>등급 조건</td>
							<td>가입 회원</td>
							<td>한 달 이용 금액<br> 20만원 이상</td>
							<td>한 달 이용 금액<br> 50만원 이상</td>
							<td>한 달 이용 금액<br> 80만원 이상</td>
						</tr>
						<tr>
							<td>혜택</td>
							<td>-</td>
							<td>10% 할인<br> 쿠폰 발급</td>
							<td>15% 할인<br> 쿠폰 발급</td>
							<td>20% 할인<br> 쿠폰 발급</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>

</html>