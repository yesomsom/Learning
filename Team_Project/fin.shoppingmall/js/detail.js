$(document).ready(function(){
  $("div#cat_title").click(function(){
    $("div#cat_title_toggle").slideToggle("fast")({
    });
  });
});
$(document).ready(function(){
  $("h3#explan_title").click(function(){
    $("div#explan_toggle").slideToggle("fast")({
    });
  });
});
$(document).ready(function(){
  $("h3#requi_title").click(function(){
    $("div#requi_toggle").slideToggle("fast")({
    });
  });
});
//이미지 마우스 오른쪽 버튼 클릭 막기 적용
document.addEventListener('DOMContentLoaded', () => {
  const imgs = document.querySelectorAll('.dontclick')

  imgs.forEach((img) => {
      img.addEventListener('contextmenu', (event)=> {
          event.preventDefault()
      });
  });
});
