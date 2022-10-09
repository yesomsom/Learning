<%@page import="java.util.List"%>
<%@page import="mango.mango.model.ReserveDto"%>
<%@page import="mango.mango.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<%
MemberDto login = (MemberDto) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString());
List<ReserveDto> list = (List<ReserveDto>) request.getAttribute("reserveList");
%>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/header.css">
<link rel="stylesheet" href="${path}/css/myPage.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<!-- MATERIAL DESIGN ICONIC FONT -->

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
	<div>
		<div class="my-page-container">
			<div class="my-page-wrapper">
				<div class="my-page-header">예약한 영화 목록</div>
				<div class="movie-reserve-list">
					<%
					if (list == null) {
					%>
					<div>예약한 영화가 없습니다</div>
					<%
					} else {
					for (int i = 0; i < list.size(); i++) {
						ReserveDto reserveDto = list.get(i);
					%>
					<div class="movie-reserve">
						<%-- <div class="movie-reserve-age"><%=reserveDto.getMovieAge()%></div> --%>
						<div class="movie-reserve-title"><%=reserveDto.getTitle()%></div>
						<div class="movie-reserve-theater-wrapper">
							<div><%=reserveDto.getSelectedTheater()%></div>
							&nbsp;/&nbsp;
							<div class="ticket-numeber"><%=reserveDto.getTicketNumber()%>장
							</div>
						</div>
						<div class="movie-reserve-seats"><%=reserveDto.getSelectedSeat()%></div>
						<div class="movie-reserve-date-wrapper">
							<div class="movie-reserve-date"><%=reserveDto.getMovieDate()%></div>
							<div class="movie-reserve-runningTime"><%=reserveDto.getRunningTime()%></div>
						</div>
						<div class="movie"></div>

						<div class="pay-information-wrapper">
							<div class="pay-information-date-wrapper">
								<div class="pay-information-date-title">결제한 날</div>
								<div class="pay-information-date"><%=reserveDto.getPayDto().getPayDate()%></div>
							</div>

							<div class="pay-information-money-wrapper">
								<div class="pay-information-money-title">결제한 비용</div>
								<div class="pay-information-money"><%=reserveDto.getPayDto().getPayMoney()%>원
								</div>
							</div>

							<div class="barcode-wrapper">
								<div>mango</div>
								<img src="${path }/images/barcode.png">
							</div>

						</div>
					</div>
					<%
					}
					%>

					<%
					}
					%>




				</div>

			</div>
		</div>
	</div>
	<form action="/page/myPage/insert.do" method="post"></form>
</body>

</html>