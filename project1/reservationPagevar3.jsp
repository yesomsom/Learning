<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://tbnpg.settlebank.co.kr/resources/js/SettlePG.js"></script>
    <title>예약페이지</title>
    <style>
        #month{text-align: center;}
        #year{text-align: center;}
    </style>
</head>
<body>
<body>
<a href="/index.html">Kim's Shop</a>
<br>
    <div id="showEmail"></div>
    <a href="myPage.html" >마이페이지</a>
    <a href="#" onclick="doLogOut()" >로그아웃</a>
    <a href="/showReservationPage.html">예약내역 페이지</a>
<br>
a-1<input type="radio" onclick="showMonth('a-1')" name="seat" >
a-2<input type="radio" onclick="showMonth('a-2')" name="seat" >
a-3<input type="radio" onclick="showMonth('a-3')" name="seat" >
a-4<input type="radio" onclick="showMonth('a-4')" name="seat" >
<div id="year"></div>
<div id="nextButton2"></div><div id="beforeButton2"></div>
<div id="month"></div>
<div id="nextButton"></div><div id="beforeButton"></div>
<table  style="margin-left: auto; margin-right: auto;">
    <tr id="dayArea"></tr>
    <tr id="dateArea1"></tr>
    <tr id="dateArea2"></tr>
    <tr id="dateArea3"></tr>
    <tr id="dateArea4"></tr>
    <tr id="dateArea5"></tr>
    <tr id="dateArea6"></tr>
</table>
<div id="showSelectedDate"></div>
<div id="timeArea"></div>
<br>
<div id="insertOrCancle"></div>
<input type="hidden" id="test" value="no">
<script src="/lib/js/jslib.js"></script>
<script>
var xhr=new XMLHttpRequest();
var requestUrl;
var result;
var selectMonth;
var selectSeat;
var selectDate;
var selectTime=[];
var selectYear;
var clicked=0;
var maxPeopleOfDate=60;
var maxPeopleOfTime=6;
var date=new Date();
var price;
var countFlag;
var vankDate;
var email;
var name;
var phoneNum;
var address;
var postCode;
var itemArray;
var other;

window.onload=function(){
    getUserInfor();
}
function getUserInfor(){
	var requestUrl='http://localhost:8080/api/userInfor';
    result=fisrtRequest(requestUrl,null);
    document.getElementById('showEmail').innerHTML=(result.email+"님 환영합니다");
    email=result.email;
    name=result.name;
    phoneNum=result.phoneNum;   
    address=result.address+' '+result.detailAddress;
    postCode=result.postCode;        
}
function nextYear(){
    console.log(year);
    var year=document.getElementById('year').innerHTML;
    var month=document.getElementById('month').innerHTML;
    year*=1;
    year+=1;
    console.log(year+"nextyear");
    if(year<=2050){
        clearDateAndButton();
        var seat=selectSeat;
        showDate(selectSeat,month,year);
        document.getElementById('year').innerHTML=year;
    }else{
        year=2050;
        alert('마지막연도 입니다');
    }
}
function beforeYear(){
    console.log(year);
    var year=document.getElementById('year').innerHTML;
    var month=document.getElementById('month').innerHTML;
    year*=1;
    year-=1;
    console.log(year+"beforeYear");
    if(year>=date.getFullYear()){
        clearDateAndButton();
        var seat=selectSeat;
        showDate(selectSeat,month,year);
        document.getElementById('year').innerHTML=year;
    }else{
        alert('처음 연도 입니다');
    }
}
function nextMonth(){
    console.log(month);
    var month=document.getElementById('month').innerHTML;
    month*=1;
    month+=1;
    console.log(month+"nextMOnth");
    if(month<=12){
        clearDateAndButton();
        var year= document.getElementById('year').innerHTML;
        var seat=selectSeat;
        showDate(selectSeat,month,year);
        document.getElementById('month').innerHTML=month;
    }else{
        alert('마지막월 입니다');
    }
}
function beforeMonth() {
    console.log(month);
    var month=document.getElementById('month').innerHTML;
    var year=document.getElementById('year').innerHTML;
    month*=1;
    month-=1;
    console.log(month+"nextMOnth");
    if(year>date.getFullYear()&&month>=1){
        clearDateAndButton();
        var year= document.getElementById('year').innerHTML;
        showDate(selectSeat,month,year);
        document.getElementById('month').innerHTML=month;
    }
    else if(month>date.getMonth()){
        clearDateAndButton();
        var year= document.getElementById('year').innerHTML;
        showDate(selectSeat,month,year);
        document.getElementById('month').innerHTML=month;
    }else{
        month=date.getMonth();
        alert('마지막월 입니다');
    }
}
function showMonth(seat){
    document.getElementById('month').innerHTML=date.getMonth()+1;
    document.getElementById('year').innerHTML=date.getFullYear();
    var month=document.getElementById('month').innerHTML;
    var year= document.getElementById('year').innerHTML;
    selectSeat=seat;
    clearDateAndButton();
    document.getElementById('dayArea').innerHTML=("<th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th><th>일</th>");
    showDate(seat,month,year);
}
function showDate(seat,month,year) {
    $('#timeArea').empty();
    $('#beforeButton').empty();
    $('#nextButton').empty();
    requestUrl='http://localhost:8080/api/getDateBySeat';
    seat=seat;
    console.log(seat);
    console.log(month+'showDate');
    let data=JSON.stringify({
		 "seat":seat,
		 "month":month,
         "year":year
	});
    result=fisrtRequest(requestUrl,data);
    console.log(result+' 제일위');
    var dates=result.dates;
    $('#dateArea').empty();
    $('#nextButton').append("<input type='button' value='다음달' onclick='nextMonth()'>");
    $('#beforeButton').append("<input type='button' value='이전달' onclick='beforeMonth()'>");
    $('#nextButton2').append("<input type='button' value='다음연도' onclick='nextYear()'>");
    $('#beforeButton2').append("<input type='button' value='이전연도' onclick='beforeYear()'>");
    var num=1;
    for(var i=1;i<dates.length;i++){
        if(dates[i][2]==100){
            $('#dateArea'+num).append("<td><input type='button' id='date' onclick='getTime("+dates[i][0]+")' value='"+dates[i][0]+"' disabled></td>");
        }
        else{
            $('#dateArea'+num).append("<td><input type='button'  id='date' onclick='getTime("+dates[i][0]+")' value='"+dates[i][0]+"'></td>");
        }
        if(i%7==0){
            num+=1;
        }
    }
}  
function getTime(date){
    requestUrl='http://localhost:8080/api/getTimeByDate';
    console.log(selectSeat+'getTime');
    console.log(date+'getTime');
    console.log(document.getElementById('month').innerHTML+"gettime");
    selectDate=date;
    let data=JSON.stringify({
		 "seat":selectSeat,
		 "date":selectDate,
         "month":document.getElementById('month').innerHTML,
         "year":document.getElementById('year').innerHTML
	});
    result=fisrtRequest(requestUrl,data);
    document.getElementById('showSelectedDate').innerHTML=('선택일: '+document.getElementById('year').innerHTML+"-"+document.getElementById('month').innerHTML+"-"+selectDate);
    console.log(result+' 제일위');
    var times=result.times;
    $('#timeArea').empty();
    $('#insertOrCancle').empty();

                for(var i=0;i<times.length;i++){
                    if(times[i][2]==100){
                        console.log('시간이 지났거나 예약이 다참');
                        $('#timeArea').append("<input type='checkbox' onclick='checkTime()' name='time' value='"+times[i][0]+"' disabled>"+times[i][0]+'시~'+(times[i][0]+1)+'시'+times[i][1]+"/"+maxPeopleOfTime+"&nbsp;");
                    }
                    else{
                        $('#timeArea').append("<input type='checkbox' onclick='checkTime("+times[i][0]+")' name='time' value='"+times[i][0]+"'>"+times[i][0]+'시~'+(times[i][0]+1)+'시'+times[i][1]+"/"+maxPeopleOfTime+"&nbsp;");
                    }
                    if(i>=3&&i%3==0){
                        $('#timeArea').append('<br>');
                    }
                }
                $('#insertOrCancle').append("<input type='button' onclick='requestCard()' value='카드예약'>");
                $('#insertOrCancle').append("<input type='button' value='가상계좌 예약' onclick='requestVbank()'>");
                $('#insertOrCancle').append("<input type='button' value='카카오페이' onclick='kakaopay()'>");
}
function buy(){
    selectYearAndDate();
    selectTimes();
    makeItemCountOhter();
}
function requestCard() {
    buy();
    var requestUrl='http://localhost:8080/api/getSha256Hash';
    let data=JSON.stringify({
         "mchtId":"nxca_jt_il",
         "kind":"reservation",
         "method":"card",
         "seat":selectSeat,
         "month":selectMonth,
         "date":selectDate,
         "year":selectYear,
         "times":selectTime,
         "productNameAndCount":itemArray
	});
	result=fisrtRequest(requestUrl,data);
    console.log(result);
    if(result.bool){
        var trdDt=result.trdDt;
        var trdTm=result.trdTm;
        var trdAmt=result.trdAmt;
        var mchtTrdNo=result.mchtTrdNo;
        var pktHash=result.pktHash;
        var itemName=selectSeat;
        var mchtCustId=result.mchtCustId;
        card(trdDt,trdTm,mchtTrdNo,itemName,trdAmt,mchtCustId,pktHash);
    }else{
        alert(result.message);
    }
    selectTime=[];
   
}
function requestVbank() {
    buy();
        var requestUrl='http://localhost:8080/api/getSha256Hash';
        let data=JSON.stringify({
            "mchtId":"nx_mid_il",
            "kind":"reservation",
            "method":"vbank",
            "seat":selectSeat,
            "month":selectMonth,
            "date":selectDate,
            "year":selectYear,
            "times":selectTime,
            "productNameAndCount":itemArray
        });
        result=fisrtRequest(requestUrl,data);
        console.log(result);
        if(result.bool){
            var trdDt=result.trdDt;
            var trdTm=result.trdTm;
            var trdAmt=result.trdAmt;
            var mchtTrdNo=result.mchtTrdNo;
            var pktHash=result.pktHash;
            var itemName=selectSeat;
            var mchtCustId=result.mchtCustId;
            var expireDt=result.expiredate;
            Vbank(trdDt,trdTm,expireDt,itemName,trdAmt,mchtCustId,pktHash,mchtTrdNo);
        }else{
            alert(result.message);
        }
    selectTime=[];
}
function kakaopay() {
    buy();
    console.log(itemArray+" 선택한 상품정보");
    requestUrl='http://localhost:8080/api/kakaopay';
    let other=[];
    other[0]=selectYear;
    other[1]=selectMonth;
    other[2]=selectDate;
    var jsonArray= new Array();

    /*for (var i=0; i<selectTime.length; i++) {
        var jsonObj= new Object();
        let data=JSON.stringify({
		 "item":selectSeat,
         "count":1,
         "time":selectTime[i],
	    });
        jsonObj.itme= data;
        jsonObj.year=selectYear;
        jsonObj.month=selectMonth;
        jsonObj.date=selectDate;
        jsonObj = JSON.stringify(jsonObj);
        //String 형태로 파싱한 객체를 다시 json으로 변환
        jsonArray.push(JSON.parse(jsonObj));
    }
    console.log(jsonArray);*/
    let data=JSON.stringify({
         "itemArray":itemArray,
         "other":other,
         "kind":"reservation"
	});
    result=fisrtRequest(requestUrl,data);
    console.log(result+' 제일위');
    if(result.bool){
        selectTime=[];
        var url=result.message;
        var childWin=window.open(url,'width=300','height=300');
  
    }else{
        selectTime=[]
        alert(result.message);
    }
    
}
function makeItemCountOhter(){
    var array=make2DArray(selectTime.length,3);
    for(var i=0;i<array.length;i++){
        array[i][0]=selectSeat;
        array[i][1]=1;
        array[i][2]=selectTime[i];
    }
    itemArray=array;

}
function selectYearAndDate(){
    selectYear=document.getElementById('year').innerHTML;
    selectMonth=document.getElementById('month').innerHTML;
}
function selectTimes(){
    var obj_length = document.getElementsByName("time").length;
    for (var i=0; i<obj_length; i++) {
            if (document.getElementsByName("time")[i].checked == true) {
                selectTime[selectTime.length]=document.getElementsByName("time")[i].value;
            }
        }
    for(var i=0;i<selectTime.length;i++){
        console.log(selectTime[i]+'time');
    }
    selectTime.sort(function (a,b){ return a-b; });
}
function clearDateAndButton(){
    $('#showSelectedDate').empty();
    $('#beforeButton2').empty();
    $('#nextButton2').empty();
    $('#beforeButton').empty();
    $('#nextButton').empty();
    $('#dateArea1').empty();
    $('#dateArea2').empty();
    $('#dateArea3').empty();
    $('#dateArea4').empty();
    $('#dateArea5').empty();
    $('#dateArea6').empty();
    $('#timeArea').empty();
    $('#insertOrCancle').empty();
}
</script>
</body>
</html>