<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/payment.css">
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 및 결제</title>
    <link rel="stylesheet" type="text/css" href="${path}/css/payment.css">
</head>
<script type="text/javascript">

function check()
{
    // 결제 방법 체크 여부 확인
    var sum = 0;
    const target = document.getElementById('change_msgnum')

    for(i=0;i<document.pay.test.length;i++){
          if(document.pay.test[i].checked == false){
              sum +=sum;
          }
          else{
              sum = sum+1;
          }
    }

    if(target.disabled == false)
    {
        alert("휴대전화번호를 먼저 저장하세요.");
        return false;
    }
    else if(target.disabled == true)
    {
        if(sum == 0)
        {
            alert("결제 방법을 선택해 주세요.");
            return false;
        }
    }
    else{
        document.test.submit();
    }
}

function change()
{
    const target = document.getElementById('change_msgnum');
    target.disabled = false;
}

//구매자, 방문객 동일 여부 체크(체크 해제시 입력 목록 출력)
function samecheck()
{
    if(!document.getElementById("checkboxed").checked)
    {
        document.getElementById("pay_information_3_box").style.display = 'block';
    }
    else
    {
        document.getElementById("pay_information_3_box").style.display = 'none';
    }
}

function hpcheck()
{
    if(document.getElementById("changehp").click)
    {
        document.getElementById("changehp").style.display = 'none';
        document.getElementById("savehp").style.display = 'inline';
    }
}

function hpsave()
{
    var t = document.myform.phone.value;
    var t2 = t.length

    if(t2!=11)
    {
        alert("정확한 휴대전화번호를 입력하세요.");
        document.myform.phone.focus();
        return false;
    }
    else
    {
        document.getElementById("changehp").style.display = 'inline';
        document.getElementById("savehp").style.display = 'none';
        const target = document.getElementById('change_msgnum');
        target.disabled = true;
    }
}

</script>
<body>
    <div class="container">
        <h1>예약 및 결제</h1>
        <h2>예약자 정보</h2>

        <!-- 예약자 정보 테이블-->
        <div id="pay_information">
            <table border="1" style="border: none;">

                <tr align="right">
                    <td id="td_main1">이름</td>
                    <td id="td_contents1">홍길동</td>
                </tr>

                <tr align="right">
                    <td id="td_main2">이메일</td>
                    <td id="td_contents2">test@test.com</td>
                </tr>

                <!-- 번호 인증 API 사용 예정-->
                <form name="myform" method="post" onsubmit="return false;">
                <tr align="right">
                    <td id="td_main3">휴대폰 번호</td>
                    <td id="td_contents3">
                      <input type="text" id="change_msgnum" 
                      oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"
                      maxlength="11" name="phone" disabled>
                      <button onclick="change(); hpcheck();" id="changehp">수정</button>
                      <button onclick="hpsave();" id="savehp" style="display:none;">저장</button>
                      예약내역 정보는 구매한 분의 번호로 전송됩니다.
                      <!--색상 강조-->
                      <p id="table_p">* 인증번호를 못 받았다면, 0000-0000 번호 차단 및 스팸 설정을 확인해주세요.</p>
                    </td>
                </tr>
            </form>
            </table>
        </div>
        <br><br>

        <!--예약 룸 정보-->
        <div id="pay_information_2">
            그린 아트 컨퍼런스 룸 1005호, 2022년 9월 6일(월) 14:00 ~ 2022년 9월 6일(월) 16:00, 2시간
        </div>

        <!--예약자 인적사항 및 요청사항-->
        <div id="pay_information_3">

            <div id="pay_information_3_01">
                01. 구매자와 방문객이 다른 경우, 아래 체크 박스를 눌러 실제 방문객 정보를 입력해주세요.
                <p>
                    <input type="checkbox" id="checkboxed" onclick="samecheck()" checked/>구매자와 방문객이 동일합니다.
                </p>
            </div>

            <div id="pay_information_3_box">
                <label style="margin-left: 20px;">방문객 이름(대표자) : </label>
                <input type="text"><br>

                <label style="margin-left: 20px;">연락처(핸드폰) : </label>
                <input type="text"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"
                maxlength="11" style="margin-left: 37px;"><br>

                <label style="margin-left: 20px;">이메일 : </label>
                <input type="text" style="margin-left: 95px;"> @ <input type="text"><br>
            </div>

            <div id="pay_information_3_02">
                <p>
                    02. 방문 시 요청사항이 있으시다면 작성해주세요. [선택]
                </p>

                <p style="font-size: 12px;">
                    요청사항은 가급적으로 반영해 드리지만, 방문 지점의 사정에 따라 반드시 보장되지는 않습니다.
                </p>

                <textarea cols="120%" name ="textwrite" placeholder="요청 사항을 입력해주세요." 
                onfocus="placeholder=''" onblur ="placeholder='요청 사항을 입력해주세요.'"></textarea>
            </div>

        </div>
        <br><br>

        <!-- 예약 상품-->
        <div id="pay_information_4">

            <div id="pay_information_4_01">
                <h1>예약 상품</h1>
            <hr>
            <p>
                그린 아트 컨퍼런스 룸 1005호, 중형 회의실, 성인 10명
                <br>
                2022년 9월 6일(월) 14:00 ~ 2022년 9월 6일(월) 16:00
            </p>
            <ul>
                <li>당일 예약 변경 및 취소 불가</li>
                <li>환불 불가</li>
            </ul>
            </div>

        </div>
        <br>

        <!--결제 정보-->
        <div id="pay_information_5">
            <h1>결제 정보</h1>
            <table border="1" style="border: none;">

                <tr align="right">
                    <td id="td_main1">총상품가격</td>
                    <td id="td_contents1">적립금</td>
                </tr>

                <tr align="right">
                    <td id="td_main2">할인쿠폰</td>
                    <td id="td_contents2">0원</td>
                </tr>

                <tr align="right">
                    <td id="td_main3">적립금</td>
                    <td id="td_contents3">
                      0원       보유 : 1000원
                    </td>
                </tr>

                <tr align="right">
                    <td id="td_main3">총결제금액</td>
                    <td id="td_contents3">
                      120,000원
                    </td>
                </tr>

                <!-- model 사용 예정-->
        <form name=pay method=post>
                <tr align="right">
                    <td id="td_main3">결제방법</td>
                    <td id="td_contents3">
                      <input type="radio" name="test" value="transfer"/>계좌이체
                      <input type="radio" name="test" value="kakaopay"/>카카오 페이
                      <input type="radio" name="test" value="checkcard"/>신용/체크 카드
                      <input type="radio" name="test" value="creditcard"/>법인카드
                      <input type="radio" name="test" value="phone"/>휴대폰
                      <input type="radio" name="test" value="deposit"/>무통장 입금(가상계좌)
                    </td>
                </tr>
            </form>
            </table>
        </div>

        <!-- 현금 영수증-->
        <div id="pay_information_6">
            <h1>현금 영수증</h1>
            <div id="pay_information_6_01">
                <input style="zoom:2.0;" type="checkbox" class="checkbox">현금 영수증 신청
            </div>
        </div>
        <br><br>

        <!-- 예약, 결제하기 버튼-->
        <div id="pay_button">
            <button id="reservebutton" onclick="">
                <b>예약하기</b><br>
                나중에 결제하기
            </button>

            <button id="paymentbutton" onclick="check(); checkphone();">
                <b>결제하기</b>
            </button>
        </div>
    </div>
</body>
</html>