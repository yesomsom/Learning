document.addEventListener('DOMContentLoaded', () => {
  let status = false

  const checkbox = document.querySelector('.check')
  checkbox.addEventListener('change', (event) => {
    status = event.currentTarget.checked
  })
  const link = document.querySelector('.changeCheck')
  link.addEventListener('click', (event) => {
    if (status) {
      alert("수정 완료")
    }

    if (!status) {
      event.preventDefault()
    }
  })
});
document.addEventListener('DOMContentLoaded', () => {
  let status = false

  const checkbox = document.querySelector('.check1')
  checkbox.addEventListener('change', (event) => {
    status = event.currentTarget.checked
  })
  const link = document.querySelector('.changeCheck1')
  link.addEventListener('click', (event) => {
    if (status) {
      alert("수정 완료")
    }

    if (!status) {
      event.preventDefault()
    }
  })
});
document.addEventListener('DOMContentLoaded', () => {
  let status = false

  const checkbox = document.querySelector('.check2')
  checkbox.addEventListener('change', (event) => {
    status = event.currentTarget.checked
  })
  const link = document.querySelector('.changeCheck2')
  link.addEventListener('click', (event) => {
    if (status) {
      alert("수정 완료")
    }

    if (!status) {
      event.preventDefault()
    }
  })
});
document.addEventListener('DOMContentLoaded', () => {
  let status = false

  const checkbox = document.querySelector('.check3')
  checkbox.addEventListener('change', (event) => {
    status = event.currentTarget.checked
  })
  const link = document.querySelector('.changeCheck3')
  link.addEventListener('click', (event) => {
    if (status) {
      alert("수정 완료")
    }

    if (!status) {
      event.preventDefault()
    }
  })
});
$(document).ready(function(){
  $("div#cat_title").click(function(){
    $("div#cat_title_toggle").slideToggle("fast")({
    });
  });
});




/*document.addEventListener('DOMContentLoaded', () => {
  let status = false

  const checkbox = document.querySelector('.check1')
  checkbox.addEventListener('change', (event) => {
    const status = document.querySelector(check1)
    
    check1.forEach((check1) => { 
      check1.addEventListener('change', (event) => { 
      const current = event.currentTarget
      if (current.checked) {
        output.textContent = `변경완료` 
      } 
      }) 
      }) 
      }) 
});
$(document).ready(function(){
  $("div#cat_title").click(function(){
    $("div#cat_title_toggle").slideToggle("fast")({
    });
  });
});*/