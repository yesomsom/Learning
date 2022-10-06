var btn = document.querySelector('#goods_inf');
var div = document.querySelector('.toggle_content');

btn.addEventListener('click', () =>{
  if(div.style.display === 'none'){
    div.style.display = 'block';
  }else{
    div.style.display = 'none';
  }
  }
)