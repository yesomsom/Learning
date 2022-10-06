<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%> 
<link rel="stylesheet" href="${path}/css}/css/best.css">

<div class="container">

    <ul class="tabs">
      <li class="tab-link current" data-tab="tab-1">ALL</li>
      <li class="tab-link" data-tab="tab-2">STUDY CAFE</li>
      <li class="tab-link" data-tab="tab-3">CONFERENCE ROOM</li>
    </ul>
  
    <div id="tab-1" class="tab-content current">
      <div>
        <h1>PREMIUM</h1>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <h1>BEST PLACE</h1>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div id="view_more">
        더보기
      </div>
    </div>

    <div id="tab-2" class="tab-content">
      <div>
        <h1>PREMIUM</h1>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <h1>BEST PLACE</h1>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div id="view_more">
        더보기
      </div>
    </div>

    <div id="tab-3" class="tab-content">
      <div>
        <h1>PREMIUM</h1>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <h1>BEST PLACE</h1>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div>
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
        <img src="${path}/img/room.jpg" alt="">
      </div>
      <div id="view_more">
        더보기
      </div>
    </div>
  
  </div>
  
<script>
    $(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

})
</script>