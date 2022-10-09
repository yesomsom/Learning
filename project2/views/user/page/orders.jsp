<%@page import="mango.mango.model.MemberDto"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MemberDto login = (MemberDto) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString());
%>
<%
	String totalPrice = request.getParameter("totalPrice");
	totalPrice = totalPrice.replaceAll("\\B(?=(\\d{3})+(?!\\d))", ",");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order</title>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/header.css">
<link rel="stylesheet" href="${path}/css/orders.css">
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
	<div class="orders_wrapper">
		<div class="orders_wrapper_title">주문 결제</div>
<%-- 		<div class="orders_product_all">
			<div class="orders_product_all_title">
				<span>상품정보</span> <span>판매자</span> <span>배송비</span> <span>수량</span>
				<span>총 금액</span>
			</div>

			<c:forEach var="orders" items="${orderList}">
				<div class="product_detail">
					<div>사진</div>
					<div>${orders.goodsName}</div>
					<div>${orders.sellerName}</div>
					<div>배송비</div>
					<div>수량</div>
					<div>상품금액</div>
				</div>
			</c:forEach>
		</div --%>
<!-- 배송지 정보 -->
		<div class="delivery_detail detail_wrapper">
			<div class="title_bold_big">배송지</div>
			<div class="margin_top location_select">
				<div>배송지 선택: </div>
				<div class="location_select_radio">
					<input class="margin-right" type="radio" name="location" value="deliveryLocation">기본배송지
					<input type="radio" name="location" value="newLocation">신규배송지
				</div>
			</div>
			<div>수령인 이름: 망고</div>
			<div>핸드폰 번호: 010-111-2222</div>
			<div>주소: (35234)대전 서구 대덕대로 182 오라클빌딩 10층</div>
		</div>		
<!-- 구매자 정보 -->
		<div class="member_detail detail_wrapper">
			<div class="title_bold_big">구매자</div>
			<div class="margin_top">구매자 이름: 망고</div>
			<div>핸드폰 번호: 010-111-2222</div>
			<div>주소 : (35234)대전 서구 대덕대로 182 오라클빌딩 10층</div>
			<div>이메일: mango@mango.kr</div>
		</div>
<!-- 할인/쿠폰 정보 -->
		<div class="discount_detail detail_wrapper">
			<div class="title_bold_big">할인/쿠폰</div>

			<div class="margin_top coupon_discount">
				<div>쿠폰 할인</div>
				<div class="border_bottom text_align_right">0 원</div>
				<div><input class="discount_btn" type="button" value="쿠폰사용"></div>
			</div>
			<div class="point_discount">
				<div>포인트</div>
				<div class="border_bottom text_align_right">0 원</div>
				<div><input class="discount_btn" type="button" value="포인트사용"></div>
			</div>
		</div>
<!-- 결제 정보 -->
		<div class="member_detail detail_wrapper">
			<div class="title_bold_big">결제수단</div>
			<div class="margin_top"><input class="margin_right" type="radio" name="payment" value="kakaoPay">카카오페이</div>
			<div><input class="margin_right" type="radio" name="payment" value="cardPay">카드결제</div>
			<div><input class="margin_right" type="radio" name="payment" value="nocardPay">무통장입금</div>
		</div>
<!-- 결제하기 -->
		<div class="pay_detail">
			<div class="pay_total">총 결제액:  <span class="comma_price"><%=totalPrice%></span></div>
			<div class="pay_submit">
				<input class="btn" type="submit" value="결제하기">
			</div>
		</div>
	</div>
</body>
</html>