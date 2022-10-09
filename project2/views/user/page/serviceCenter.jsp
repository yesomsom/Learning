<%@page import="mango.mango.model.MemberDto"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/reset.css">
<link rel="stylesheet" href="${path}/css/header.css">
<link rel="stylesheet" href="${path}/css/serviceCenter.css">
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
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


	<div class="cs_container">
		<div class="cust_top">
			<h1>고객센터</h1>

			<!-- 검색창 -->
			<!-- <div class="cust_search">
      <div>
        <input type="search" placeholder="궁금한 점을 검색해주세요.">
      </div>
      <div>
        <button type="submit" class="search_botton">
          <img src="${path}/img/icons8-zoom-30.png">
        </button>
      </div>
    </div> -->

			<!-- 자주 묻는 질문 -->
			<!-- 탭 -->
			<div class="container">
				<ul class="tabs">
					<li class="menu tab-link current" data-tab="tab-1">
						<div>
							<a href="#"> <img src="${path}/images/qa.png"
								style="width: 50px;" id="img1">
								<p id="h_p">자주 묻는 질문</p>
							</a>
						</div>
					</li>
					<li class="menu tab-link" data-tab="tab-2">
						<div>
							<a href="/page/askForm.do"> <img src="${path}/images/qes.png"
								style="width: 50px;" id="img2">
								<p id="h_p">1:1문의</p>
							</a>
						</div>
					</li>
					<li class="menu tab-link" data-tab="tab-3">
						<div>
							<a href="#"> <img src="${path}/images/notice.png"
								style="width: 50px;" id="img3">
								<p id="h_p">공지 사항</p>
							</a>
						</div>
					</li>

				</ul>

				<body>
					<!-- 모달 -->
					<button class="modal_button_1">내용 확인하기</button>
					<div class="modal_1">
						<div class="modal_content_1" title="클릭하면 창이 닫힙니다.">
							<div>Q. 로그인 아이디가 생각나지 않아요.</div>
							<div>√ 로그인창에서 아이디 찾기 진행 아이디 혹은 비밀번호를 분실하였다면, 본인인증을 통해 ID 찾기
								및 비밀번호를 재설정 할 수 있습니다. (본인인증 가능한 수단: 휴대폰/이메일/아이핀)</div>
						</div>
					</div>
					<!-- 모달 -->
					<button class="modal_button_2">내용 확인하기</button>
					<div class="modal_2">
						<div class="modal_content_2" title="클릭하면 창이 닫힙니다.">
							<div>Q. 회원가입시 이미 가입되어 있는 정보라고 나옵니다.</div>
							<div>√ 아이디 찾기 또는 비밀번호 찾기 진행 회원가입 하신 사실을 잊으셨거나 제휴사이트를 통해 가입된
								경우가 많습니다. 아이디 찾기 또는 비밀번호 찾기를 진행해주세요.</div>
						</div>
					</div>
					<!-- 모달 -->
					<button class="modal_button_3">내용 확인하기</button>
					<div class="modal_3">
						<div class="modal_content_3" title="클릭하면 창이 닫힙니다.">
							<div>Q. 아이디를 여러 개 사용할 수 있나요?</div>
							<div>√ 실명인증된 1개의 아이디만 사용 가능 지마켓에서는 실명인증된 1개의 아이디만 사용 가능합니다.
								단, 사업자 판매회원은 판매 편의성 개선을 위해 하나의 사업자등록번호로 최대 3개까지 아이디 신청이 가능 합니다.</div>
						</div>
					</div>
					<!-- 모달 -->
					<button class="modal_button_4">내용 확인하기</button>
					<div class="modal_4">
						<div class="modal_content_4" title="클릭하면 창이 닫힙니다.">
							<div>Q. 탈퇴하면 개인정보는 모두 삭제되나요?</div>
							<div>√ 개인정보는 탈퇴 즉시 삭제 정보통신망 이용 촉진 및 정보보호에 관한 법률 규정상 사후 문제
								발생 가능성에 대비하여 최소한의 기본 정보와 거래내역은 아래 명시한 기간 동안 G마켓에서 보관합니다. 1. 계약
								또는 청약철회 등에 관한 기록 : 5년 2. 대금결제 및 재화 등의 공급에 관한 기록 : 5년 3. 소비자의 불만
								또는 분쟁처리에 관한 기록 : 3년</div>
						</div>
					</div>
					<!-- 모달 -->
					<button class="modal_button_5">내용 확인하기</button>
					<div class="modal_5">
						<div class="modal_content_5" title="클릭하면 창이 닫힙니다.">
							<div>영화관람권 가격 변경 안내</div>
							<div>안녕하십니까, 망고 입니다. 아래와 같이 영화관람권 가격이 변경되오니, 이용에 참고 부탁드립니다.
								1. 적용 일시: 2022년 7월 8일 (금) 2. 적용 채널: 전국 망고, 온라인 스토어 3. 주요 변경 내용
								2D일반관람권 (기존) 11,000원 → (변경) 13,000원 ※ 영화관 현장에서 10장 단위로 구매 가능</div>
						</div>
					</div>
					<!-- 모달 -->
					<button class="modal_button_6">내용 확인하기</button>
					<div class="modal_6">
						<div class="modal_content_6" title="클릭하면 창이 닫힙니다.">
							<div>2D 일반 관람권 활용 스페셜관 이용 안내</div>
							<div>안녕하십니까. 망고 입니다. 2D 일반 관람권 운영 정책이 아래와 같이 변경 되어 안내 드리오니
								이용에 참고 부탁드립니다. ■ 기존 ㆍ2D 일반 관람권은 2D 일반 영화에 한하여 적용 가능 ■변경 ㆍ샤롯데,
								씨네패밀리를 제외한 스페셜관, 스페셜좌석 (씨네커플석, 씨네컴포트석), 3D 상영 영화 예매 시 차액 결제 후 2D
								일반 관람권 적용 가능 ㆍ차액 : 동일 회차 기준 2D 일반 요금과의 차이 금액</div>
						</div>
					</div>
					<!-- 모달 -->
					<button class="modal_button_7">내용 확인하기</button>
					<div class="modal_7">
						<div class="modal_content_7" title="클릭하면 창이 닫힙니다.">
							<div>V3 백신 엔진 악성코드 오진 안내</div>
							<div>안녕하십니까 망고입니다. 8/8(일) 오전 08시 경부터 Ahn Lab사의 V3 백신 프로그램에서
								엔진 업데이트 후 일부 시스템의 장애로 망고를 악성코드 어플리케이션으로 탐지하는 오류가 발생했습니다. 이에 Ahn
								Lab사의 공식 답변을 받아 안내드립니다.</div>
						</div>
					</div>
					<!-- 모달 -->
					<button class="modal_button_8">내용 확인하기</button>
					<div class="modal_8">
						<div class="modal_content_8" title="클릭하면 창이 닫힙니다.">
							<div>GS&POINT 시스템 작업안내</div>
							<div>안녕하십니까, 망고 입니다. 항상 저희 망고를 사랑해주시는 고객님들께 진심으로 감사 드립니다.
								GS&POINT 내부시스템 작업이 예정되어있어 서비스 이용에 제한되오니 참고해주시기 바랍니다. [작업안내] 1.
								작업 일시 : 2022년 09월 24일(토) 13:00 ~ 16:00 (3시간) 2. 작업 내용 - GS&POINT
								네트워크 긴급점검</div>
						</div>
					</div>
					<!-- tab1 탭1 (자주 묻는 질문) -->
					<div id="tab-1" class="tab-content current">
						<div class="tab-1_content_all">
							<div class="tab-1_content">
								<div class="tab-1_content_title">Q. 로그인 아이디가 생각나지 않아요.</div>
								<div class="tab-1_content_answer">√ 로그인창에서 아이디 찾기 진행 아이디
									혹은 비밀번호를 분실하였다면, 본인인증을 통해 ID 찾기 및 비밀번호를 재설정 할 수 있습니다. (본인인증 가능한
									수단: 휴대폰/이메일/아이핀)</div>
							</div>


							<div class="tab-1_content">
								<div class="tab-1_content_title">Q. 회원가입시 이미 가입되어 있는 정보라고
									나옵니다.</div>
								<div class="tab-1_content_answer">√ 아이디 찾기 또는 비밀번호 찾기 진행
									회원가입 하신 사실을 잊으셨거나 제휴사이트를 통해 가입된 경우가 많습니다. 아이디 찾기 또는 비밀번호 찾기를
									진행해주세요.</div>
							</div>

							<div class="tab-1_content">
								<div class="tab-1_content_title">Q. 아이디를 여러 개 사용할 수 있나요?</div>
								<div class="tab-1_content_answer">√ 실명인증된 1개의 아이디만 사용 가능
									지마켓에서는 실명인증된 1개의 아이디만 사용 가능합니다. 단, 사업자 판매회원은 판매 편의성 개선을 위해 하나의
									사업자등록번호로 최대 3개까지 아이디 신청이 가능 합니다.</div>
							</div>

							<div class="tab-1_content">
								<div class="tab-1_content_title">Q. 탈퇴하면 개인정보는 모두 삭제되나요?</div>
								<div class="tab-1_content_answer">√ 개인정보는 탈퇴 즉시 삭제 정보통신망
									이용 촉진 및 정보보호에 관한 법률 규정상 사후 문제 발생 가능성에 대비하여 최소한의 기본 정보와 거래내역은 아래
									명시한 기간 동안 G마켓에서 보관합니다. 1. 계약 또는 청약철회 등에 관한 기록 : 5년 2. 대금결제 및 재화
									등의 공급에 관한 기록 : 5년 3. 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</div>
							</div>
						</div>
						<a id="all_asktag" href="/page/qaList.do">전체 문의 보기</a>
					</div>

					<!-- tab3 탭3 (공지 사항) -->
					<div id="tab-3" class="tab-content">
						<div class="tab-3_content_all">
							<div class="tab-3_content">
								<div class="tab-3_content_title">영화관람권 가격 변경 안내</div>
								<div class="tab-3_content_answer">안녕하십니까, 망고 입니다. 아래와 같이
									영화관람권 가격이 변경되오니, 이용에 참고 부탁드립니다. 1. 적용 일시: 2022년 7월 8일 (금) 2. 적용
									채널: 전국 망고, 온라인 스토어 3. 주요 변경 내용 2D일반관람권 (기존) 11,000원 → (변경)
									13,000원 ※ 영화관 현장에서 10장 단위로 구매 가능</div>
							</div>
							<div class="tab-3_content">
								<div class="tab-3_content_title">2D 일반 관람권 활용 스페셜관 이용 안내</div>
								<div class="tab-3_content_answer">안녕하십니까. 망고 입니다. 2D 일반
									관람권 운영 정책이 아래와 같이 변경 되어 안내 드리오니 이용에 참고 부탁드립니다. ■ 기존 ㆍ2D 일반 관람권은
									2D 일반 영화에 한하여 적용 가능 ■변경 ㆍ샤롯데, 씨네패밀리를 제외한 스페셜관, 스페셜좌석 (씨네커플석,
									씨네컴포트석), 3D 상영 영화 예매 시 차액 결제 후 2D 일반 관람권 적용 가능 ㆍ차액 : 동일 회차 기준
									2D 일반 요금과의 차이 금액</div>
							</div>
							<div class="tab-3_content">
								<div class="tab-3_content_title">V3 백신 엔진 악성코드 오진 안내</div>
								<div class="tab-3_content_answer">안녕하십니까 망고입니다. 8/8(일) 오전
									08시 경부터 Ahn Lab사의 V3 백신 프로그램에서 엔진 업데이트 후 일부 시스템의 장애로 망고를 악성코드
									어플리케이션으로 탐지하는 오류가 발생했습니다. 이에 Ahn Lab사의 공식 답변을 받아 안내드립니다.</div>
							</div>
							<div class="tab-3_content">
								<div class="tab-3_content_title">GS&POINT 시스템 작업안내</div>
								<div class="tab-3_content_answer">안녕하십니까, 망고 입니다. 항상 저희
									망고를 사랑해주시는 고객님들께 진심으로 감사 드립니다. GS&POINT 내부시스템 작업이 예정되어있어 서비스
									이용에 제한되오니 참고해주시기 바랍니다. [작업안내] 1. 작업 일시 : 2022년 09월 24일(토) 13:00
									~ 16:00 (3시간) 2. 작업 내용 - GS&POINT 네트워크 긴급점검</div>
							</div>
						</div>
						<a id="all_notice" href="/page/noticeList.do">전체 공지 보기</a>
					</div>
			</div>

		</div>
		<!-- 고객센터 이용안내 -->
		<div class="qes_info">
			<h1 id="qes_tit2">고객센터 이용안내</h1>
			<div class="qes_infoCon">
				<div class="qes_con">
					<p class="qes_stit">일반회원/비회원</p>
					<p class="qes_con1">0000-0000(평일: 09:00~18:00)</p>
				</div>
				<div>
					<p class="qes_stit">사업자회원</p>
					<p class="qes_con1">0000-0001(평일: 09:00~18:00)</p>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(
				function() {
					$('.menu').each(function(index) {
						$(this).attr('menu-index', index);
					}).click(
							function() {
								var index = $(this).attr('menu-index');
								$('.menu[menu-index=' + index + ']').addClass(
										'clicked_menu');
								$('.menu[menu-index!=' + index + ']')
										.removeClass('clicked_menu');
							});

				});
	</script>

	<script>
		$(document).ready(function() {

			$('ul.tabs li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current');
			})

		})
	</script>

	<!-- 모달창 스크립트 -->
	<script>
		$(function() {
			$(".modal_button_1").click(function() {
				$(".modal_1").fadeIn();
			});

			$(".modal_content_1").click(function() {
				$(".modal_1").fadeOut();
			});
		});
		$(function() {
			$(".modal_button_2").click(function() {
				$(".modal_2").fadeIn();
			});

			$(".modal_content_2").click(function() {
				$(".modal_2").fadeOut();
			});
		});
		$(function() {
			$(".modal_button_3").click(function() {
				$(".modal_3").fadeIn();
			});

			$(".modal_content_3").click(function() {
				$(".modal_3").fadeOut();
			});
		});

		$(function() {
			$(".modal_button_4").click(function() {
				$(".modal_4").fadeIn();
			});

			$(".modal_content_4").click(function() {
				$(".modal_4").fadeOut();
			});
		});
		$(function() {
			$(".modal_button_5").click(function() {
				$(".modal_5").fadeIn();
			});

			$(".modal_content_5").click(function() {
				$(".modal_5").fadeOut();
			});
		});
		$(function() {
			$(".modal_button_6").click(function() {
				$(".modal_6").fadeIn();
			});

			$(".modal_content_6").click(function() {
				$(".modal_6").fadeOut();
			});
		});
		$(function() {
			$(".modal_button_7").click(function() {
				$(".modal_7").fadeIn();
			});

			$(".modal_content_7").click(function() {
				$(".modal_7").fadeOut();
			});
		});
		$(function() {
			$(".modal_button_8").click(function() {
				$(".modal_8").fadeIn();
			});

			$(".modal_content_8").click(function() {
				$(".modal_8").fadeOut();
			});
		});
	</script>
</body>


</html>