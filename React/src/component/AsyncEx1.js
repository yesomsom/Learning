// 3초 뒤 실행
function printAfter3000() {
  console.log('print after 3000');
}
// 0초 뒤 실행
function printRightNow() {
  console.log('print right now');
}

setTimeout(printAfter3000, 3000);
setTimeout(printRightNow, 0);
console.log('시작');
console.log('대기중...');

// 1초 뒤에 10 더함
function increase10(num, cb) {
  setTimeout(()=>{
    const result = num + 10;
    if(cb) {
      cb(result);
    }
  }, 1000)
}

increase10(0, result => {
  console.log(result);
});

// 1초마다 10씩 더함
// 콜백지옥 - 지양하는 형태
console.log('작업 시작');
increase10(0, result => {
  console.log(result);
  increase10(result, result => {
    console.log(result);
    increase10(result, result => {
      console.log(result);
      console.log('작업 완료');
    })
  })
})


// promise 사용

function increase1(num) {
  const promise = new Promise((resolve, reject) => {
    // resolve는 성공, reject는 실패
    setTimeout(()=>{
      const result = num + 1;
      if(result > 3) {
        const e = new Error('NumberTooBig');
        // 에러 반환
        return reject(e);
      }
      // result 반환
      resolve(result);
    }, 1000);
  });
  return promise;
}

increase1(0)
  .then(num => {
    console.log(num);
    return increase1(num);
  })
  .then(num => {
    console.log(num);
    return increase1(num);
  })
  .then(num => {
    console.log(num);
    return increase1(num);
  })
  .catch(e => {
    console.log(e);
  });


// async/await 사용
function decrease(num) {
  const promiseDe = new Promise((resolve, reject) => {
    setTimeout(()=> {
      const result = num - 3;
      if(result < 0) {
        const e = new Error('NumberBelowZero');
        return reject(e);
      }
      resolve(result);
    }, 1000)
  });
  return promiseDe;
}

async function runTasks() {
  try {
    let result = await decrease(10);
    console.log(result); // 7 
    result = await decrease(result);
    console.log(result); // 4
    result = await decrease(result);
    console.log(result); // 1
    result = await decrease(result);
    console.log(result); // error
  } catch (e) {
    console.log(e);
  }
}

runTasks();

const AsyncEx1 = () => {
  return (
    <div></div>
  );
};

export default AsyncEx1;