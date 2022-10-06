<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/cancelAlert.css">
<!-- 전체 div 묶음 -->
<div class="container">

<!-- 취소 완료 문구 및 설명 -->
	<h1>취소신청이 완료되었습니다.</h1>
	<p>카드사로 결제 취소 요청이 전달되었습니다.</p>
	<p>카드사 취소 처리: <span>평일 3~7일 소요</span></p>

<!-- 주문 취소 안내 -->		
	<div class="cancel_detail_all">
		<h4 class="cancel_detail">주문 취소 안내</h4>
		<p>취소 기간은 카드 종류와 카드사 정책에 따라 달라질 수 있습니다.</p>
	</div>
	
<!-- 버튼 button -->
	<input class="btn" type="button" value="취소내역확인">
	<input class="btn" type="button" value="HOME">
</div>