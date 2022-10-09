<%@page import="mango.mango.model.ReserveDto"%>
<%@page import="mango.mango.model.MemberDto"%>
<%@page import="mango.mango.model.TheaterVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MemberDto login = (MemberDto) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString());
%>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/header.css">
<link rel="stylesheet" href="${path }/css/theater.css"></link>
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d5cbdd87fa636fd19281386c302b0dd"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>영화관 위치</title>
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
	<div class=category_container>

		<!-- 영화관 table -->
		<div>
			<table>
				<thead>
					<tr>
						<th class="th_header">영화관</th>
					</tr>

				</thead>
				<tbody>
					<c:forEach var="the" items="${TheaterList}">
						<tr>
							<td class="poinm" data-code="${the.mcatecd }">${the.poinm }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- sido table -->
		<div>
			<table>
				<thead>
					<tr>
						<th class="th_header">특별시/도</th>
					</tr>
				</thead>
				<tbody class="sido_table">
				</tbody>
			</table>
		</div>
		<div>
			<!-- sgg table -->
			<table>
				<thead>
					<tr>
						<th class="th_header">시/군/구</th>
					</tr>
				</thead>
				<tbody class="sgg_table">
				</tbody>
			</table>
		</div>
		<!-- bra table -->
		<div>
			<table>
				<thead>
					<tr>
						<th class="th_header">지점명</th>
					</tr>
				</thead>
				<tbody class="bra_table">
				</tbody>
			</table>
		</div>

	</div>
	<div id="map">
		<button id="gps_check" onclick="gps_tracking();">현위치</button>
	</div>

	<script type="text/javascript" src="${path }/js/gpsmap.js"></script>
	<!-- gps 권한js -->
	<script type="text/javascript" src="${path }/js/theater.js"></script>
	<!-- 카테고리 js -->
</body>
</html>