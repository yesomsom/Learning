<%@page import="mango.mango.model.MemberDto"%>
<%@page import="mango.mango.model.TheaterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%
MemberDto login = (MemberDto) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString());
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/header.css">
<link rel="stylesheet" href="${path}/css/reserve.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<!-- MATERIAL DESIGN ICONIC FONT -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<div class="header-nav-wrapper">
		<div class="header-inner">

			<%
			if (login != null) {
			%>
			<div>
				<button><%=login.getName()%>님 환영합니다
				</button>
			</div>
			<div>
				<a href="/page/myPage.do"><button>마이페이지</button></a>
			</div>
			<div>
				<a href="/page/logout.do"><button>로그아웃</button></a>
			</div>
			<%
			} else {
			%>
			<div>
				<a href="/page/login.do"><button>로그인</button></a>
			</div>
			<div>
				<a href="/page/register.do"><button>회원가입</button></a>
			</div>
			<%
			}
			%>
		</div>
		<nav class="nav-wrapper">
			<div class="logo-wrapper">
				<a href="main.do"><img class="mangoLogo"
					src="${path }/images/mangoLogo.png"></a>
			</div>
			<div class="nav-content">
				<div class="movieLogo-wrapper">
					<img class="mangoMovie" src="${path }/images/movie_icon2.png">
				</div>
				<div class="nav-inner">
					<div>
						<button>
							<a href="${path }/page/main.do">영화</a>
						</button>
					</div>
					<div>
						<button>
							<a href="${path }/page/reserve.do">예매</a>
						</button>
					</div>
					<div>
						<button>
							<a href="${path }/page/theater.do">극장</a>
						</button>
					</div>
					<div>
						<button>
							<a href="${path }/page/goods.do">상품</a>
						</button>
					</div>
					<div>
						<button>
							<a href="${path }/page/cart.do">장바구니</a>
						</button>
					</div>
					<div>
						<button>
							<a href="${path }/page/serviceCenter.do">고객센터</a>
						</button>
					</div>
					<div class="search-wrapper">
						<input>
						<button class="searchButton">검색</button>
					</div>
				</div>
			</div>
			<div></div>
			<div></div>
		</nav>


	</div>
	<!-- 탭 tab -->
	<script type="text/javascript">
		$(document).ready(function() {

			$('ul.tabs li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current');
			})

		})
		$(document).ready(function() {

			$('ul.tabs1 li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs1 li').removeClass('current1');
				$('.tab1-content').removeClass('current1');

				$(this).addClass('current1');
				$("#" + tab_id).addClass('current1');

				$('ul.tabs1 li').removeClass('current3');
				$('.tab1-content').removeClass('current3');

				$(this).addClass('current3');
				$("#" + tab_id).addClass('current3');
			})

		})
	</script>
	<div class="reserve-container">
		<div class="movie-part">
			<div class="reserve-title">영화</div>
			<ul class="sort-wrapper tabs">
				<li class="sort-rate sort-selected tab-link current"
					data-tab="tab-1">예매율순</li>
				<li class="sort-korean sort-selected tab-link" data-tab="tab-2">가나다순</li>
			</ul>
			<!--          <div class="movie-list-wrapper">
            <div id="tab-1" class="movie-list tab-content current"></div>
            <div id="tab-2" class="movie-list-korean tab-content"></div>
         </div> -->
			<div id="tab-1" class="movie-list-wrapper tab-content current">
				<div class="movie-list"></div>
			</div>
			<div id="tab-2" class="movie-list-wrapper-ko tab-content">
				<c:forEach var="movieListKo" items="${movieListKo}">
					<div class="movie-list">
						<button class="movie-list-title">${movieListKo.movieTitle}</button>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="theater-part">
			<div class="reserve-title">극장</div>
			<div class="theater-container">
				<div class="theater-wrapper">
					<ul class="theater-location-wrapper tabs1">
						<li class="theater-location tab1-link current1" data-tab="tab1-1">CGV</li>
						<li class="theater-location tab1-link" data-tab="tab1-2">롯데시네마</li>
						<li class="theater-location tab1-link" data-tab="tab1-3">메가박스</li>
					</ul>
					<div id="tab1-1"
						class="theater-place-wrapper tab1-content current1">
						<c:forEach var="CGVTheaterList" items="${CGVTheaterList}">
							<button class="theater-place">${CGVTheaterList.branchnm}</button>
						</c:forEach>
					</div>
					<div id="tab1-2" class="theater-place-wrapper tab1-content">
						<c:forEach var="LotteTheaterList" items="${LotteTheaterList}">
							<button class="theater-place">${LotteTheaterList.branchnm}</button>
						</c:forEach>
					</div>
					<div id="tab1-3" class="theater-place-wrapper tab1-content">
						<c:forEach var="MegaTheaterList" items="${MegaTheaterList}">
							<button class="theater-place">${MegaTheaterList.branchnm}</button>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="day-part">
			<div class="reserve-title">날짜</div>
			<div class="reserve-date"></div>
		</div>
		<div class="time-part">
			<div class="reserve-title">시간</div>
			<div class="reserve-time">
				<div class="reserve-where">4관(Sweet) 6층(총 240석)</div>
				<div class="reserve-time-wrapper">
					<button class="reserve-time-button">
						<span class="reserve-time-want">12:20</span> <span
							class="reserve-time-remain">240석</span>
					</button>
					<button class="reserve-time-button">
						<span class="reserve-time-want">14:20</span> <span
							class="reserve-time-remain">240석</span>
					</button>
					<button class="reserve-time-button">
						<span class="reserve-time-want">16:20</span> <span
							class="reserve-time-remain">240석</span>
					</button>
					<button class="reserve-time-button">
						<span class="reserve-time-want">18:20</span> <span
							class="reserve-time-remain">240석</span>
					</button>

				</div>
			</div>
			<div>
				<form class="seatForm" action="seat.do" method="post">
					<input type="hidden" class="title" name="title"> <input
						type="hidden" class="movieAge" name="movieAge"> <input
						type="hidden" class="selectedTheater" name="selectedTheater">
					<input type="hidden" class="theaterKind" name="theaterKind"
						value="CGV"> <input type="hidden" class="reserveDate"
						name="movieDate"> <input type="hidden" class="runningTime"
						name="runningTime">
					<button class="seatButton" type="button">예약하기</button>
				</form>
			</div>
		</div>

	</div>
	<script src="${path}/js/reserve.js"></script>
	<script>
		$('.theater-location').click(function() {
			var k = $(this).text();
			$('input[name=theaterKind]').attr('value', k);
		})
	</script>
	<script>
		$('.theater-location').click(function() {
			var k = $(this).text();
			$('input[name=theaterKind]').attr('value', k);
		})
	</script>
</body>
</html>