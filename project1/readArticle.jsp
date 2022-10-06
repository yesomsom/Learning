<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/readArticle.css">
<div class="container">
    <a href="#"><h1>커뮤니티</h1></a>
    <!-- 글제목칸-->
    <div id="con_header"> 
      <div id="con_header_1">글 번호:5</div>
      <div><h2>글 제목</h2></div>
    </div>

    <div id="con_header2">
      <div>작성자:</div>
      <div id="con_header2_1">
        <div>조회수:</div>
      <div>작성일:</div>
      </div>          
    </div>    
    <div class="con_content">
      글내용
    </div>
    <!-- 댓글 -->
    <div>
      <div>
        
        <div id="input_con">
          <div style="text-align: right; margin-bottom:3px;">댓글 
            <span>0</span>
          </div>
          <input placeholder="댓글을 입력해 주세요.">
          <button>등록</button>
        </div>
      </div>
    </div>
  </div>