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
	String sellerName = request.getParameter("sellerName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/header.css">
<link rel="stylesheet" href="${path}/css/cart.css">
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
   <div class="cart_wrapper">
      <div class="cart_title">장바구니</div>
      <div class="chk_all_wrapper">
         <input type="checkbox" class="chk_all" checked="checked"> <span
            class="check_all_title">전체 선택</span>
      </div>
      <div class="order_card_serveral">
      <!-- 신규로 장바구니에 넣은 상품 -->
            <div class="order_card">
               <div class="cart_product_top">
                  <div>
                     <input type="checkbox" class="chk"
                        value="${(cart.goodsPrice * cart.goodsQty) + cart.deliveryPrice}"
                        checked="checked"> <span
                        class="font_bold_big seller_name"><%=sellerName%></span>
                  </div>
               </div>
               <div class="cart_product_middle">
                  <div class="cart_product_img">
                     <%--                      ${cart.goodsImg} --%>
                     <%-- <img class="cart_product_img" src="${path}/images/tor.png"> --%>
                     <img class="cart_product_img" src="${cart.goodsImg}">
                  </div>
                  <div class="cart_product_name">${cart.goodsName}</div>
                  <div class="cart_product_price">
                     <div>상품금액</div>
                     <div class="font_bold_big">
                        <fmt:formatNumber pattern="###,###,###"
                           value="${cart.goodsPrice}" />
                        원
                     </div>
                  </div>
                  <div class="cart_product_qty">
                     <div>수량</div>
                     <div>
                        <div>
                           <input class="cart_product_qty_input quantity_input" type="text" value="${cart.goodsQty}" disabled>
                           <span>개</span>
                        </div>                           
                        <button class="quantity_btn plus_btn">+</button>
                        <button class="quantity_btn minus_btn">-</button>   
                        <button class="quantity_modify_btn" data-cartId="${cart.cartId}">변경</button>
                                                                  
<%--                         <input class="cart_product_qty_input" type="number"
                           value="${cart.goodsQty}" min="0" max="100"> --%>
                        <%--                         <fmt:formatNumber pattern="###,###,###"
                           value="${cart.goodsQty}" /> 개--%>
                     </div>
                  </div>
                  <div>
                     <div>배송비</div>
                     <div class="font_bold_big">
                        <fmt:formatNumber pattern="###,###,###"
                           value="${cart.deliveryPrice}" />
                        원
                     </div>
                  </div>
               </div>
               <div class="cart_product_bottom">
                  <div>
                     <div>선택상품금액</div>
                     <div class="font_bold_big">
                        <fmt:formatNumber pattern="###,###,###"
                           value="${cart.goodsPrice}" />
                        원
                     </div>
                  </div>
                  <div>x</div>
                  <div>
                     <div>수량</div>
                     <div class="cart_qty_change">
                        <fmt:formatNumber pattern="###,###,###" value="${cart.goodsQty}" />
                        개
                     </div>
                  </div>
                  <div>+</div>
                  <div class="cart_total_delivery">
                     <div>총배송비</div>
                     <div class="font_bold_big">
                        <fmt:formatNumber pattern="###,###,###"
                           value="${cart.deliveryPrice}" />
                        원
                     </div>
                  </div>
                  <div class="order_price_all">
                     <span class="order_price_all_title">주문금액</span> <span
                        class="font_bold_big"><fmt:formatNumber
                           pattern="###,###,###"
                           value="${(cart.goodsPrice * cart.goodsQty) + cart.deliveryPrice}" />원</span>
                  </div>
               </div>
            </div>
		<!-- 기존에 장바구니에 넣어 놓은 상품 -->
         <c:forEach var="cart" items="${cartList}">
            <div class="order_card">
               <div class="cart_product_top">
                  <div>
                     <input type="checkbox" class="chk"
                        value="${(cart.goodsPrice * cart.goodsQty) + cart.deliveryPrice}"
                        checked="checked"> <span
                        class="font_bold_big seller_name">${cart.sellerName}</span>
                  </div>
               </div>

               <div class="cart_product_middle">
                  <div class="cart_product_img">
                     <%--                      ${cart.goodsImg} --%>
                     <%-- <img class="cart_product_img" src="${path}/images/tor.png"> --%>
                     <img class="cart_product_img" src="${cart.goodsImg}">
                  </div>
                  <div class="cart_product_name">${cart.goodsName}</div>
                  <div class="cart_product_price">
                     <div>상품금액</div>
                     <div class="font_bold_big">
                        <fmt:formatNumber pattern="###,###,###"
                           value="${cart.goodsPrice}" />
                        원
                     </div>
                  </div>
                  <div class="cart_product_qty">
                     <div>수량</div>
                     <div>
                        <div>
                           <input class="cart_product_qty_input quantity_input" type="text" value="${cart.goodsQty}" disabled>
                           <span>개</span>
                        </div>                           
                        <button class="quantity_btn plus_btn">+</button>
                        <button class="quantity_btn minus_btn">-</button>   
                        <button class="quantity_modify_btn" data-cartId="${cart.cartId}">변경</button>
                                                                  
<%--                         <input class="cart_product_qty_input" type="number"
                           value="${cart.goodsQty}" min="0" max="100"> --%>
                        <%--                         <fmt:formatNumber pattern="###,###,###"
                           value="${cart.goodsQty}" /> 개--%>
                     </div>
                  </div>
                  <div>
                     <div>배송비</div>
                     <div class="font_bold_big">
                        <fmt:formatNumber pattern="###,###,###"
                           value="${cart.deliveryPrice}" />
                        원
                     </div>
                  </div>
               </div>
               <div class="cart_product_bottom">
                  <div>
                     <div>선택상품금액</div>
                     <div class="font_bold_big">
                        <fmt:formatNumber pattern="###,###,###"
                           value="${cart.goodsPrice}" />
                        원
                     </div>
                  </div>
                  <div>x</div>
                  <div>
                     <div>수량</div>
                     <div class="cart_qty_change">
                        <fmt:formatNumber pattern="###,###,###" value="${cart.goodsQty}" />
                        개
                     </div>
                  </div>
                  <div>+</div>
                  <div class="cart_total_delivery">
                     <div>총배송비</div>
                     <div class="font_bold_big">
                        <fmt:formatNumber pattern="###,###,###"
                           value="${cart.deliveryPrice}" />
                        원
                     </div>
                  </div>
                  <div class="order_price_all">
                     <span class="order_price_all_title">주문금액</span> <span
                        class="font_bold_big"><fmt:formatNumber
                           pattern="###,###,###"
                           value="${(cart.goodsPrice * cart.goodsQty) + cart.deliveryPrice}" />원</span>
                  </div>
               </div>
            </div>
         </c:forEach>

      </div>
      <br> <br> <br> <br> <br> <br>
   </div>
   </div>

<!-- 하단 결제하기 바 -->
   <div class="total_price_wrapper">
      <form class="cartForm" action="/page/orders.do" method="post">
         <input type="hidden" class="goodsId" name="goodsId"> 
         <input type="hidden" class="goodsName" name="goodsName"> 
         <input type="hidden" class="goodsQty" name="goodsQty" value="${cart.goodsQty}"> 
         <input type="hidden" class="id" name="id"> 
         	<span class="total_price_title">총 주문금액</span> 
         	<span class="total_price font_bold_big"> 
         		<c:set var="total" value="0" /> 
         		<c:forEach var="cart" items="${cartList}">
                <c:set var="total" value="${total + ((cart.goodsPrice * cart.goodsQty) + cart.deliveryPrice)}" />
            	</c:forEach> 
            	<fmt:formatNumber pattern="###,###,###" value="${total}" /> 원
			</span> 
		<input type="hidden" class="totalPrice" name="totalPrice" value="${total}"> <input class="btn" type="submit" value="주문하기">
      </form>
   </div>


<!-- 수량 조정 form -->
   <form action="/page/cart/update.do" method="post" class="quantity_update_form">
      <input type="hidden" name="cartId" class="update_cartId">
      <input type="hidden" name="goodsQty" class="update_goodsQty">
   </form> 
 
   
<!-- js -->     
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <script type="text/javascript">
      /* 수량버튼 */
      $(".plus_btn").on("click", function(){
         let quantity = $(this).parent("div").find("input").val();
         $(this).parent("div").find("input").val(++quantity);
         
      });
      $(".minus_btn").on("click", function(){
         let quantity = $(this).parent("div").find("input").val();
         if(quantity > 1){
            $(this).parent("div").find("input").val(--quantity);
         }
      });   

   </script>
   
<!-- 수량 수정 -->   
   <script>
   $(".quantity_modify_btn").on("click", function(){
      let cartId = $(this).data("cartid");
      let goodsQty = $(this).parent("div").find("input").val();
      $(".update_cartId").val(cartId);
      $(".update_goodsQty").val(goodsQty);
      $(".quantity_update_form").submit();         
   });
   </script>
   
<!-- 전체 체크박스 설정 및 해제 & 장바구니 총액 계산 -->
   <script type="text/javascript">
      $(document).ready(
            function() {
               $(".chk_all").click(function() {
                  var chk = $(".chk_all").prop("checked");
                  if (chk) {
                     $(".chk").prop("checked", true);
                     itemSum();
                  } else {
                     $(".chk").prop("checked", false);
                     itemSum();
                  }
               });
               $(".chk").click(function() {
                  itemSum();
                  var total = $(".chk").length;
                  var checked = $(".chk:checked").length;
                  if (total != checked)
                     $(".chk_all").prop("checked", false);
                  else
                     $(".chk_all").prop("checked", true);

               });
               function itemSum() {
                  var str = "";
                  var sum = 0;
                  var count = $(".chk").length;
                  for (var i = 0; i < count; i++) {
                     if ($(".chk")[i].checked == true) {
                        sum += parseInt($(".chk")[i].value);
                     }
                  }
                  var sumComma = sum.toString().replace(
                        /\B(?=(\d{3})+(?!\d))/g, ',');

                  $(".total_price").text(sumComma);
                  $('input[name=totalPrice]').attr('value', sumComma);
               }
            });
   </script>
</body>
</html>