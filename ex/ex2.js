let today = new Date();

let year = today.getFullYear(); //년도
let month = today.getMonth(); //월
let date = today.getDate(); //일
let day = today.getDay(); //요일
if(day == 1) {
  day = '월';
} else if(day == 2) {
  day = '화';
} else if(day == 3) {
  day = '수';
} else if(day == 4) {
  day = '목';
} else if(day == 5) {
  day = '금';
} else if(day == 6) {
  day = '토';
} else {
  day = '일';
}

document.write(year+'년'+month+'월'+date+'일'+day+'요일')


function solution(a, b) {
  return ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'][new Date(2016, a - 1, b).getDay()];
}

function clickSol() {
  let result = solution(12,2);
  alert(result);
}

function ex1(a) {
  let ex1 = ['1번 선택','2번 선택','3번 선택'][a];
  alert(ex1);
}
