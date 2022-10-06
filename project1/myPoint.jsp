<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/css }/css/myPoint.css">
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
					<a href="#"> <img alt=""
						src="../image/icons8-male-user-100.png">
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

		<!-- 포인트 리스트 내용 -->
		<div class="container">

			<!-- 포인트 타이틀 -->
			<div class="point_all">
				<h1>포인트 내역</h1>
				<div class="point_body">
					<div class="point_total">
						<p>
							<b>포인트 총 잔액 : </b> $$
						</p>
					</div>
					<div class="point_list">
						<table>
							<tr>
								<td>NO</td>
								<td>적립일시</td>
								<td>만료일자</td>
								<td>적립/사용내역</td>
								<td>적립</td>
								<td>사용</td>
								<td>포인트잔액</td>
							</tr>
							<tr>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>