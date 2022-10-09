<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <title>예약내역 페이지</title>
</head>
<body>
    <a href="${path}/css }/page/check/reservationPagevar3.do">예약페이지</a>
<div>가상계좌 미입금시 금액은 합산되어있는 금액입니다
<br>
<br>
<input type="button" value="예약취소" onclick="cancleReservation()">
<table id="table"  style="margin-left: auto; margin-right: auto;">
    <tr id="header"></tr>
    <tr id="body0"></tr>
    <tr id="body1"></tr>
    <tr id="body2"></tr>
    <tr id="body3"></tr>
    <tr id="body4"></tr>
    <tr id="body5"></tr>
    <tr id="body6"></tr>
    <tr id="body7"></tr>
    <tr id="body8"></tr>
    <tr id="body9"></tr>
</table>
<div id="showEmthy"></div>
<div id="nowPage">1</div>/<div id="totalPage"></div>
<input type="button" value="다음" onclick="next()">&nbsp;<input type="button" value="이전" onclick="before()">
<br>
시작<input type='date' id='startDate' value=''/>종료<input type='date' id='endDate' value=''/><input type="button" value="검색" onclick="search()">

<script src="/lib/js/jslib.js"></script>
<script>
var xhr=new XMLHttpRequest();  
var nowPage=document.getElementById('nowPage').innerHTML;
var totalPage=document.getElementById('totalPage').innerHTML;
var paging=10;
var selectTime=[];
var requestUrl;
var result;
var startDate;
var endDate;
window.onload = function () {
    getEmail();
    getReservation();
}
function getEmail(){
    requestUrl='http://localhost:8080/api/email'; 
    result=fisrtRequest(requestUrl,null);
    console.log(result+' 젤위');
    document.getElementById('showEmail').innerHTML=(result.email);
}
function cancleReservation(){
    selectIds();
    requestUrl='http://localhost:8080/api/canclePay';
    let data=JSON.stringify({
		 "ids":selectTime,
         "kind":"reservation"
	}); 
    result=fisrtRequest(requestUrl,data);
    alert(result.message);  
    location.reload();
}
function next(){
    console.log(document.getElementById('startDate').value+' startDate'+document.getElementById('endDate').value);
    nowPage=document.getElementById('nowPage').innerHTML;
    if(nowPage==totalPage){
        alert('마지막 페이지입니다');
        return;
    }
    nowPage=nowPage*1+1;
    console.log(nowPage+' 다음 페이지');
    getReservation();
}
function before(){
    if(nowPage<=1){
        alert('1페이지입니다');
        return;
    }
    nowPage=nowPage*1-1;
    console.log(nowPage+' 이전 페이지');
    getReservation();
}
function search() {
    nowPage=1;
    getReservation();
}
function getReservation(){
    requestUrl='http://localhost:8080/api/getClientReservation';
        let data=JSON.stringify({
		 "nowPage":nowPage*1-1,
         "startDate":document.getElementById('startDate').value,
         "endDate":document.getElementById('endDate').value
		}); 
        result=fisrtRequest(requestUrl,data);
                    if(result.bool){
                        document.getElementById('header').innerHTML=("<tr id='header'><th>예약번호</th><th>예약일자</th><th>사용일자</th><th>예약자리</th><th>취소</th><th>결제상황</th><th>계좌번호/결제수단</th><th>결제기한/결제완료일</th><th>금액</th></tr>");
                        var reservations=result.reservations;
                        if(reservations==null||reservations.length==0){
                            for(var i=0;i<paging;i++){
                                document.getElementById('body'+i).innerHTML=("");
                            }
                        }
                        for(var i=0;i<reservations.length;i++){
                            if(reservations[i].cantflag){
                                document.getElementById('body'+i).innerHTML=("<td class='reservationId'>"+result.reservations[i].id+"</td><td class='created'>"+result.reservations[i].created+"</td><td class='dateAndTime'>"+result.reservations[i].dateAndTime+"</td><td class='seat'>"+result.reservations[i].seat+"</td><td id='reservationId'><input type='checkbox' name='rid' value='"+result.reservations[i].id+"'disabled></td><td class='status'>"+result.reservations[i].status+"</td><td class='usedKind'>"+result.reservations[i].usedKind+"</td><td class='paidDate'>"+result.reservations[i].paidDate+"</td><td class='paidPrice'>"+result.reservations[i].paidPrice+"</td>");
                            }else{
                                document.getElementById('body'+i).innerHTML=("<td class='reservationId'>"+result.reservations[i].id+"</td><td class='created'>"+result.reservations[i].created+"</td><td class='dateAndTime'>"+result.reservations[i].dateAndTime+"</td><td class='seat'>"+result.reservations[i].seat+"</td><td id='reservationId'><input type='checkbox' name='rid' value='"+result.reservations[i].id+"'></td><td class='status'>"+result.reservations[i].status+"</td><td class='usedKind'>"+result.reservations[i].usedKind+"</td><td class='paidDate'>"+result.reservations[i].paidDate+"</td><td class='paidPrice'>"+result.reservations[i].paidPrice+"</td>");
                            }
                        }
                        var remainder=reservations.length%paging;
                        console.log(remainder+" 나머지");
                            if(remainder!=0){
                                for(var i=paging-1;i>=remainder;i--){
                                    document.getElementById('body'+i).innerHTML=("");
                                }
                            }
                            document.getElementById('totalPage').innerHTML=(result.totalPage);
                            document.getElementById('nowPage').innerHTML=(result.nowPage);
                            return;
                    }
                    if(nowPage>=totalPage){
                        nowPage-=1;
                    }
                    alert(result.message);
}
function selectIds(){
    var obj_length = document.getElementsByName("rid").length;
    for (var i=0; i<obj_length; i++) {
            if (document.getElementsByName("rid")[i].checked == true) {
                selectTime[selectTime.length]=document.getElementsByName("rid")[i].value;
            }
        }
    for(var i=0;i<selectTime.length;i++){
        console.log(selectTime[i]+'rid');
    }
}
</script>
</body>
</html>