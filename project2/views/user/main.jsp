<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/style.css">
</head>
<body>
	<button id="crawlingButton" onclick="cgv();">cgv크롤링해오기</button>
</body>
<script type="text/javascript">
	
<%response.sendRedirect("main.do");%>
	function cgv() {
		$.ajax({
			url : '/page/crawlCgv.do',
			type : 'get',
			contentType : 'application/json: charset:UTF-8',
			success : function(data) {
				crawlingData = setData(data);
				if (crawlingData.length === 0) {
					location.href = "/page/main.do";
				}
				setList(data);
				reserveEvent();
			},
		});
	}
</script>
</html>
