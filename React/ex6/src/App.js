import { useEffect, useRef, useState } from 'react';
import './App.css';
import CatImage from '../src/img/cat_1280.png';

function App() {
  const canvas = useRef(null);
  const [ctx, setCtx] = useState(undefined);
  const [isMouse, setIsMouse] = useState(false);

  const handleMouseMove = e => {
    if(ctx && isMouse) {
      var rect = canvas.current.getBoundingClientRect();
      ctx.fillStyle = 'black';
      ctx.fillRect(e.clientX-rect.left, e.clientY-rect.top, 2,2);
    }
  }

  const handleReset = () => {
    if(ctx) {
      ctx.clearRect(0,0,canvas.current.width, canvas.current.height);
    }
  }

  const getImage = () => {
    var img = new Image();
    img.onload = function() {
      ctx.drawImage(img, 0, 0, canvas.current.width, canvas.current.height);
    };
    img.src = CatImage;
  }
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
      {/* <img src={CatImage} /> */}
    </div>
  );
}

export default App;
