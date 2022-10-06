<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/meanresult.css">
<!-- 완료 안내문 -->
<div class="save_container">
    <h2>문의하신 내용이 정상적으로 접수되었습니다.</h2>
     문의에 대한 답변은 MY 문의에서 확인 가능합니다.

<!-- 각종 내역 링크 -->
<div id="save_after">
    <button id = "home" onclick="location.href='#'">고객센터 홈</button>
    <button onclick="location.href='#'">회원 My 문의 내역</button>
    <button onclick="location.href='#'">비회원 문의 내역</button>  
</div>

</div>