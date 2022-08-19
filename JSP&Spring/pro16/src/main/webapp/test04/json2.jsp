<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json1</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("#checkJson").click(function () {
			var jsonStr = '{ "name": ["홍길동","이순신","임꺽정"]}';
			var jsonInfo = JSON.parse(jsonStr);
			var output = "회원 이름<br>";
			output += "=========<br>";
			for (var i in jsonInfo.name) {
				output += jsonInfo.name[i] + "<br>";
			}
			$("#output").html(output);
		});
	});
</script>
</head>
<body>
	<input id="checkJson" type="button" value="출력" /><br><br>
	<div id="output"></div>
</body>
</html>