<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="${path}/css }/css/userMean.css">
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>1:1 문의하기</title>
</head>
<script type="text/javascript">
    function a()
    {
        var f = document.myform.tx.value;
        if(confirm("문의하시겠습니까?"))
        {
            if(f=="")
            {
                alert("내용을 입력해주세요.");
                document.myform.tx.focus();
                return false;
            }
        }
        else
        {
            return false;
        }
    }
</script>
<body>
	<!--메인 컨테이너-->
	<div id="usermean">
		<h1>1:1 문의하기</h1>
	</div>


	<div class="mean_container">
		<hr width="900px">

		<!--문의 유형-->
		<div id="mean_option">
			<p>
				문의 유형 <select name="mean">
					<option value="studycafe" selected>스터디 카페</option>
					<option value="conference">컨퍼런스 룸</option>
					<option value="community">커뮤니티</option>
					<option value="reserve">예약</option>
				</select>
			</p>
		</div>
		<form action="meanResult.html" name="myform" method="post">
			<!-- 문의 내용-->
			<div id="mean_content">
				<p>문의 내용</p>
				<!-- 텍스트 상자 길이 고정-->
				<textarea id="tx" rows="15" cols="150" name="tx"
					placeholder="문의 내용을 입력해주세요." onfocus="placeholder=''"
					onblur="placeholder='문의 내용을 입력해주세요.'"></textarea>
			</div>

			<!-- 파일 첨부 버튼(bootstrap 적용 예정)-->
			<div id="mean_file">
				<p>
					파일 첨부
					<button>+ 파일 첨부하기</button>
				</p>
			</div>
			<!-- 문의하기 버튼-->
			<div id="mean_button">
				<button id="Usermeanbutton1" onclick="return a();">문의하기</button>
			</div>
		</form>
</body>
</html>