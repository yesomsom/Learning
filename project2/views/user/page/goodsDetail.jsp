<%@page import="mango.mango.model.ReserveDto"%>
<%@page import="mango.mango.model.MemberDto"%>
<%@page import="mango.mango.model.TheaterVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
MemberDto login = (MemberDto) session.getAttribute("login");
if (login != null)
	System.out.println(login.toString());
%>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/header.css">
<link rel="stylesheet" href="${path}/css/goodsDetail.css">
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d5cbdd87fa636fd19281386c302b0dd"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>상세페이지</title>
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


	<!--상세페이지 컨테이너-->
	<div class="Detail_container">
		<div class="seller_wrap">
			<img alt="seller" src="${path}/images/shop_icon_50.png" style="width: 30px;">
			<span class="seller_title">애나벨샵</span>
		</div>
		<!--상품 단락-->
		<div class="Goods_intro">

			<div class="Goods_introL">
				<!--상품이미지-->
				<div class="goods_img">
					<img src="${path }/images/에나벨인형3.JPG"
						style="width: 350px; height: 350px;" alt="">
				</div>
				<div class="thums_img">
					<img src="${path }/images/에나벨인형3.JPG"
						style="width: 50px; height: 50px;" alt=""> <img
						src="${path }/images/에나벨인형3.JPG"
						style="width: 50px; height: 50px;" alt=""> <img
						src="${path }/images/에나벨인형3.JPG"
						style="width: 50px; height: 50px;" alt=""> <img
						src="${path }/images/에나벨인형3.JPG"
						style="width: 50px; height: 50px;" alt=""> <img
						src="${path }/images/에나벨인형3.JPG"
						style="width: 50px; height: 50px;" alt="">
				</div>

			</div>
			<div class="Goods_introR">
				<!--상품 제목-->
				<div class="Goods_introRTitle mb60">
					애나벨인형
					<!--<h1>${goods.goodsName}</h1> -->
				</div>
				<div class="Goods_content">
					<!--상품 가격-->
					<div class="Goods_price_wrap mb10">
						가격: <input class="goods_price text_align_right input_disabled" type="text" value="10000" disabled>원
						<!--${goods.goodsPrice}  -->
					</div>
					<!--수량체크-->
					<div class="qty_check mb10">
						<span class="qty_position">수량 :</span> <input class="goods_qty_change text_align_right" type="number" min="1" max="100"
						value="1" required> 개
					</div>				
					<!--배송비-->
					<div class="Delivery_price mb10">
						배송비 : <input class="goods_delivery_price text_align_right input_disabled" type="text" value="3000" disabled>원
						<!-- ${goods.deliveryPrice} -->
					</div>				
				</div>
				<div class="total_price">
					총 상품 금액 : <input class="goods_total_price text_align_right input_disabled font_bold_big" type="text" value="13000" disabled>원
					<!-- ${goods.goodsPrice}+${goods.deliveryPrice} -->
				</div>
				<div class="input_list">
					<input form="orders_direct" class="input_button" type="submit" name="buygoods"
						value="구매하기"> 
					<input form="cart_direct" class="input_button" type="submit"
						name="cartgoods" value="장바구니">
				</div>
			</div>
		</div>

		<div class="Detail_Content">
			<img src="${path }/images/에나벨인형3.JPG" style="width: 755px;" alt="">
			<img src="${path }/images/에나벨인형3.JPG" style="width: 755px;" alt="">
			<img src="${path }/images/에나벨인형3.JPG" style="width: 755px;" alt="">
		</div>
	</div>
	
<!-- cart로 값 전달 -->	
	<form id="cart_direct" action="/page/cart.do" method="post">
		<input class="seller_summit" type="hidden" name="sellerName" value="애나벨샵">
		<input class="goods_img_summit" type="hidden" name="goodsImgPath" value="">
		<input class="goods_price_summit" type="hidden" name="goodsPrice" value="10000">
		<input class="goods_qty_summit" type="hidden" name="goodsQty" value="1">
		<input class="goods_delivery_summit" type="hidden" name="deliveryPrice" value="3000">		
	</form>
<!-- orders로 값 전달 -->	
	<form id="orders_direct" action="/page/orders.do" method="post">
		<input class="seller_summit" type="hidden" name="sellerName" value="">
		<input class="goods_img_summit" type="hidden" name="goodsImgPath" value="">
		<input class="goods_price_summit" type="hidden" name="goodsPrice" value="10000">
		<input class="goods_qty_summit" type="hidden" name="goodsQty" value="1">
		<input class="goods_delivery_summit" type="hidden" name="deliveryPrice" value="3000">		
	</form>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
   <script type="text/javascript">
	   $(document).ready(function(){
		   <!-- 숫자 천단위마다 콤마 설정 -->
			priceComma();
			function priceComma() {
				var goodsPrice = $('.goods_price').val(); 
				var goodsDeliveryPrice = $('.goods_delivery_price').val();
				var goodsTotalPrice = $('.goods_total_price').val();
				
				var goodsPriceComma = goodsPrice.toString().replace(
                        /\B(?=(\d{3})+(?!\d))/g, ',');
				var goodsDeliveryPriceComma = goodsDeliveryPrice.toString().replace(
                        /\B(?=(\d{3})+(?!\d))/g, ',');
				var goodsTotalPriceComma = goodsTotalPrice.toString().replace(
                        /\B(?=(\d{3})+(?!\d))/g, ',');
				
				$('.goods_price').val(goodsPriceComma);
				$('.goods_delivery_price').val(goodsDeliveryPriceComma);
				$('.goods_total_price').val(goodsTotalPriceComma);
			}
			<!-- 수량 변경 시 총 가격 변경 -->
			$('.goods_qty_change').on('change', function(){
				var changeQty = parseInt($('.goods_qty_change').val());
				var goodsPriceS = parseInt($('.goods_price_summit').val()); 
				var goodsDeliveryPriceS = parseInt($('.goods_delivery_summit').val());
				var totalPriceCal = (goodsPriceS * changeQty) + goodsDeliveryPriceS;
				
				$('.goods_qty_summit').val(changeQty);
				$('.goods_total_price').val(totalPriceCal);
				priceComma();
	         
			});
		});
   </script>	
</body>
</html>