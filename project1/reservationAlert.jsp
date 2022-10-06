<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/reservationAlert.css">
<!-- 전체 묶음 div -->
<div class="container">
	<h1>예약이 완료되었습니다.</h1>
	
<!-- 날짜 가져오는 거 구현해야됨 -->
	<p>결제 만료일은 <span>2022년 10월 1일 23시 59분 59초</span> 까지 입니다.</p>
	<p>결제하기를 누르시면 마이페이지로 이동합니다.</p>
	
<!-- 버튼 button -->
	<input class="btn" type="button" value="결제하기">
	<input class="btn" type="button" value="HOME">
</div>