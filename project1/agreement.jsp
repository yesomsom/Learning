<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/agreement.css">
<!-- 전체 div 묶음 -->
<div class="container">

	<!-- 타이틀 title -->
	<h1>회원가입</h1>

	<!-- 이용약관 테이블 table -->
	<table>
		<!-- 모두 동의 체크 -->
		<thead>
			<tr>
				<td><input type="checkbox" id="cbx_chkAll" /></td>
				<td>이용약관, 개인정보 수집 및 이용에 모두 동의합니다.</td>
			</tr>
		</thead>
		<!-- 체크 항목 & textarea -->
				<tbody>
					<tr>
						<td><input type="checkbox" name="chk"></td>
						<td>이용약관 <span class="font_red">(필수)</span></td>
					</tr>
					<tr>
						<td colspan="2"><textarea cols="70" rows="7">전자상거래(인터넷사이버) 표준약관 - 표준약관 제 xxxx호</textarea></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk"></td>
						<td>개인정보수집 및 이용 <span class="font_red">(필수)</span></td>
					</tr>
					<td colspan="2">
						<textarea cols="70" rows="7">
1. 수집하는 개인정보 항목
 회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.

2. 수집하는 개인정보 항목
 회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
					</textarea>
					</td>
					<!-- 마케팅 수신 동의 체크항목 (선택 체크) -->
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>마케팅 수신 동의 (
					<input type="checkbox" name="agreeMar"> 이메일
					<input type="checkbox" name="agreeMar"> SMS )
					<span class="font_red">(선택)</span>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea cols="70" rows="5">본 사이트에서 제공하는 유익한 이벤트 소식을 이메일 및 SMS로 받으실 수 있습니다.</textarea>
				</td>
			</tr>
		</tbody>
	</table>

	<!-- 버튼 button -->
	<div id="button_all">
		<input class="btn" type="button" value="동의">
		<input class="btn" type="button" value="비동의">
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function () {
		$("#cbx_chkAll").click(function () {
			if ($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
			else $("input[name=chk]").prop("checked", false);
		});

		$("input[name=chk]").click(function () {
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;

			if (total != checked) $("#cbx_chkAll").prop("checked", false);
			else $("#cbx_chkAll").prop("checked", true);
		});
	});
</script>