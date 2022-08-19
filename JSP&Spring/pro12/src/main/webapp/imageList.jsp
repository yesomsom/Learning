<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul class="1st_type">
		<li>
		<span style='margin-left:50px'>이미지</span>
		<span style='margin-left:80px'>이미지 이름</span>
		<span style='margin-left:80px'>선택하기</span>
		</li>
		<%
		for(int i=0;i<10;i++){
		%>
		<li>
			<a href='#' style='margin-left:50px' >
				<img src='images/img2.jpg' width='90' height='90' alt=''  /></a>
			<a href='#' style='margin-left:50px' ><strong>이미지 이름: 듀크<%=i %></strong></a>
			<a href='#' style='margin-left:50px' ><input name='chk<%=i %>' type='checkbox'  /></a>
		</li>
		<%
		}
		%>
	</ul>
</body>
</html>