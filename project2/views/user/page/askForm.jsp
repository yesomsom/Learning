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
<link rel="stylesheet" href="${path}/css/askForm.css">
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
	
	<div class="ask_container">
	<!-- 1:1문의 폼 -->

	<div>
		<h1>1:1 문의 하기</h1>
	</div>

	<form method="post" action="/page/askForm/insert.do"
		onsubmit="return fnConfirm('y');">
		<!-- <div>
			<div>
				FAQ를 이용하시면 궁금증을 더 빠르게 해결하실 수 있습니다.<br> 1:1 문의글 답변 운영시간 10:00 ~
				19:00<br> 접수 후 48시간 안에 답변 드리겠습니다.<br>
			</div>
			<ul>
				<li>고객님고객님의 문의에 답변하는 직원은 고객 여러분의 가족 중 한 사람일 수 있습니다.<br>
					고객의 언어폭력(비하, 욕설, 협박, 성희롱 등)으로부터 직원을 보호하기 위해 관련 법에 따라 수사기관에 필요한 조치를
					요구할 수 있으며,<br> 형법에 의해 처벌 대상이 될 수 있습니다.
				</li>
				<li>문의하시기 전 FAQ를 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다.</li>
			</ul>
		</div> -->

		<div>
			<h1>문의 내용</h1>
		</div>
		<!-- <div>* 필수 입력</div> -->
		<div>
			<table>
				<tbody>
					<tr>
						<th scope="row">분류 *</th>
						<td><select title="문의 내용 분류 선택" name="ask_cat">
								<option value="0" selected>분류 선택</option>
								<option value="100">영화관</option>
								<option value="200">영화</option>
								<option value="300">예매/결제</option>
								<option value="400">이벤트</option>
								<option value="500">개인정보</option>
								<option value="600">분실물</option>
						</select> <select title="문의내용 종류" name="ask_catDetail">
								<option value="0" selected>문의 종류</option>
								<option value="1">문의</option>
								<option value="2">건의</option>
						</select></td>
					</tr>

					<tr>
						<th scope="row">종류 *</th>
						<td><input type="radio" name="rdo00" id="rdo01" checkedk>
							<label for="rdo01">영화관문의</label> <span> <select
								name="ask_type" id="ask_type"
								onChange="cat1_change(this.value,aks_typeDetail)">
									<option selected>영화관 선택</option>
									<option value="1">서울</option>
									<option value="2">경기/인천</option>
									<option value="3">충청/대전</option>
									<option value="4">전라/광주</option>
									<option value="5">경북/대구</option>
									<option value="6">경남/부산/울산</option>
									<option value="7">강원</option>
									<option value="8">제주</option>
							</select> <select name="aks_typeDetail" id="aks_typeDetail">
									<option>-선택-</option>
							</select>
						</span> <input type="radio" name="rdo00" id="rdo02"> <label
							for="rdo02">기타문의</label></td>
					</tr>

					<tr>
						<th scope="row">제목 *</th>
						<td><input type="text" name="ask_subject"
							placeholder="제목을 입력하세요" title="문의 내용 제목 입력" required> <span><em>0</em>
								/한글 <em> 50</em> 자 </span></td>
					</tr>

					<tr>
						<th scope="row">내용 *</th>
						<td><textarea name="ask_content" cols="100" rows="10"
								title="문의 내용을 입력해 주세요" required
								placeholder="내용에 개인정보(카드번호, 계좌번호, 주민번호)가 포함되지 않도록 유의하여 입력해 주세요."></textarea>
							<!-- 내용 및 첨부파일에 개인정보(카드번호, 계좌번호, 주민번호)가 포함되지 않도록 유의하여 입력해 주세요. -->
							<span><em>0</em> /한글 <em>2,000</em> 자 </span></td>
						</td>
					</tr>

					<
					<!-- tr>
            <th scope="row">첨부파일</th>
            <td>
              <div>
                <input type="file" name="ask_fileName">
                <label for="file"></label>
                <span>첨부파일 형식: jpg / jpeg / png / bmp / gif / pdf (5M*1개)</span>
              </div>
            </td>
          </tr> -->

					<!--  <tr>
            <th colspe="row">답변수신 여부</th>
            <td>
              <input type="checkbox" checked>
              <label for="idEmailReplyYN">이메일 알림 받기</label>
              <input type="checkbox">
              <label for="idSmsReplyYN">SMS 알림 받기</label>
              <div>비회원 문의시 이메일로 답변 내용이 발송되므로 이메일로 답변 알림 받기는 필수 입니다.</div>
            </td>
          </tr> -->

				</tbody>
			</table>


			<div>
				<h1>고객정보</h1>
				<div>
					<span>* 필수입력</span>
				</div>
			</div>
			<div>
				<table summary="고객정보작성 테이블">
					<tbody>
						<tr>
							<th csope="row">성&nbsp;&nbsp;&nbsp;명 *</th>
							<td><input type="text" name="ask_name" title="성명을 입력해 주세요"
								required></td>
						</tr>
						<tr>
							<th scope="row">연락처 *</th>
							<td><input type="text" name="ask_hp" title="연락처"
								maxlength="11" onkeyup="onlyNum(this);"
								placeholder="-없이 입력해 주세요" required></td>
						</tr>

						<tr>
							<th scope="row">이메일 *</th>
							<td><input type="email" name="ask_email" required> <span>답변
									등록시 해당 이메일로 자동 발송 됩니다.</span></td>
						</tr>
					</tbody>
				</table>

				<div>
					<h2>개인정보 수집에 대한 동의</h2>
					<div>
						<p>문의를 통해 아래의 개인정보를 수집합니다. 수집된 개인정보는 문의 외 목적으로 사용 하지 않습니다.</p>
					</div>


					<div>
						<textarea cols="100" rows="10">
						    * 개인정보의 수집목적 및 항목
						      ① 수집 목적 : 원활한 고객 상담, 불편사항 및 문의사항 관련 의사소통 경로 확보
						      ② 수집 항목
						    *필수입력사항
						     - 이용자 식별을 위한 항목 : 성명, 연락처
						
						
						    * 개인정보의 보유 및 이용기간
						     - 입력하신 개인정보는 소비자 보호에 관한 법률 등 관계 법률에 의해 다음과 같이 보유합니다.
						     - 보유기간 : 문의접수 후 처리 완료시점으로 부터 3년
						
						    ※ 1:1문의 서비스 제공을 위한 최소한의 개인정보이며 거부할 수 있습니다. 
						       다만, 수집에 동의하지 않을 경우 서비스 이용이 제한됩니다.
         				</textarea>
					</div>

					<div>
						<input type="radio" name="rdo01" value="true" id="agreeBtn1">
						<label for="radio10">동의</label> <input type="radio" name="rdo01"
							value="false" id="agreeBtn2" checked> <label
							for="radio11">동의하지않음</label>
					</div>
					<div>
						<input type="reset" value="리셋"> <input type="submit"
							value="확인">
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
	<script src="${path }/js/askForm.js"></script>

</body>
</html>