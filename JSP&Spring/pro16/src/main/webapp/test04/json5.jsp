<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<C:set var="contextPath" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json5</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("#checkJson").click(function () {
			var _jsonInfo = '{"name":"박지성", "age":"25", "gender":"남자", "nickname":"날센돌이"}';
		$.ajax({
			type:"post",
			async:false,
			url:"${contextPath}/json",
			data : {jsonInfo: _jsonInfo},
			success:function (data, textStatus) {
			},
			error:function(data, textStatus) {
				alert("에러가 발생했습니다.");
			},
			complete:function(data, textStatus) {
			}
		});
		});
	});
</script>
</head>
<body>
	<input id="checkJson" type="button" value="출력" /><br><br>
	<div id="output"></div>
</body>
</html>