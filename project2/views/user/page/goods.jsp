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
<link rel="stylesheet" href="${path}/css/goods.css">
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d5cbdd87fa636fd19281386c302b0dd"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>상품페이지</title>
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

	<!-- 상품판매페이지 -->
	<div class="Goods_Container">
		<!-- 카테고리 사이드바 -->
		<div class="Category">
			<ul class="Cateul">
				<li id="allCate"><a href="#">전체</a></li>
				<li id="Cate"><a href="#">인형</a></li>
				<li id="Cate"><a href="#">피규어</a></li>
				<li id="Cate"><a href="#">키링</a></li>
				<li id="Cate"><a href="#">기타</a></li>
			</ul>
		</div>
		<!-- 상품 리스트 -->
		<div class="Goods_Contents">
			<ul>
				<li>
					<ul class="Goods_list">
						<c:forEach var="goods" items="${goodsList}">
							<li><a href="goodsDetail.do?goodsId=${goods.goodsId }">
									<img src="${goods.goodsImgPath }" width="220px" height="220px">
									<div>${goods.goodsId}</div>
									<div>${goods.goodsName}</div>
									<div>${goods.goodsDetail}</div> 
							</a></li>
						</c:forEach>
					</ul>
				</li>
			</ul>
		</div>
		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
					<c:if test="${pageMaker.prev}">
						<li class="pageInfo_btn previous"><a
							href="${pageMaker.startPage-1}">Previous</a></li>
					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a
							href="${num}">${num}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next}">
						<li class="pageInfo_btn next"><a
							href="${pageMaker.endPage + 1 }">Next</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<form id="goodsForm" method="get" action="/page/goods.do">
			<input type="hidden" name="pageNumCri" id="pageNum"
				value="${pageMaker.cri.pageNum}"> <input type="hidden"
				name="amount" value="${pageMaker.cri.amount }">
		</form>
	</div>
	<script>
		$(".pageInfo a").on("click", function(e) {
			e.preventDefault();
			$("#pageNum").val($(this).attr("href"));
			$("#goodsForm").submit();
		})
	</script>

</body>
</html>