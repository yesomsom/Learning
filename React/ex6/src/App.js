import { useEffect, useRef, useState } from 'react';
import './App.css';
import CatImage from '../src/img/cat_1280.png';

function App() {
  const canvas = useRef(null);
  const [ctx, setCtx] = useState(undefined);
  const [isMouse, setIsMouse] = useState(false);
  const inputFillRef = useRef(null);

  // 마우스로 그림 그릴 때 실행
  const handleMouseMove = e => {
    if(ctx && isMouse) {
      var rect = canvas.current.getBoundingClientRect();
      ctx.fillStyle = 'black';
      ctx.fillRect(e.clientX-rect.left, e.clientY-rect.top, 2,2);
      // input에 글씨씀
      ctx.font = '80px Sans-serif';
      ctx.fillStyle = 'red';
      ctx.fillText(inputFillRef.current.value, 400, 400);
      ctx.textAlign = 'center';
    }
  }

  // 초기화 -> 새로운 캔버스로 덮어씌움
  const handleReset = () => {
    if(ctx) {
      ctx.clearRect(0,0,canvas.current.width, canvas.current.height);
    }
  }

  // 이미지 출력
  const getImage = () => {
    var img = new Image();
    img.onload = function() {
      ctx.drawImage(img, 0, 0, canvas.current.width, canvas.current.height);
    };
    img.src = CatImage;
  }

  // 랜더링 시 최초 1번
  useEffect(() => {
    setCtx(canvas.current.getContext('2d'));
  },[]);

  return (
    <div className="App">
      <canvas 
        ref={canvas} 
        width={800} 
        height={800}
        onMouseMove={handleMouseMove}
        onMouseDown={e=>{
          setIsMouse(true);
        }}
        onMouseUp={e=>{
          setIsMouse(false);
        }}
      />
      <button onClick={handleReset}>초기화</button>
      <button onClick={getImage}>이미지 가져오기</button>
      <input type="text" ref={inputFillRef}></input>
      {/* <img src={CatImage} /> */}
    </div>
  );
}

export default App;
