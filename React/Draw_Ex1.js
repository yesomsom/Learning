import { useState } from 'react';
import person from './person.png';

const Draw = () => {
  const [isTarget, setIsTarget] = useState(false); 
  console.log(isTarget);
  const onClickFun = () => {
    let canvas = document.getElementById('originalDrawCanvas');
    // let tempCanvas = document.createElement('canvas');
    let target = document.getElementById('uploadImage');
    const img_temp = new Image();
    img_temp.src = person;
    img_temp.onload = (e) => {
      canvas.width = img_temp.width;
      canvas.height = img_temp.height;
      // tempCanvas.width = img_temp.width;
      // tempCanvas.height = img_temp.height;
      let ctx = canvas.getContext('2d');
      ctx.drawImage(target, 0, 0, img_temp.width, img_temp.height);
    }
  }
  const drawCircle = () => {
    let canvas = document.getElementById('circleDrawCanvas');
    let point0 = 10;
    let point1 = 10;
    let point2 = 50;
    let point3 = 50;
    let width = point2-point0;
    let height = point3-point1;
    let ctx = canvas.getContext('2d');
    ctx.lineWidth = 3;
    ctx.arc(point0+point2/2,point1+point3/2,width/2,0,Math.PI*2);
    ctx.strokeStyle = isTarget ? 'blue' : 'yellow';
    ctx.stroke();
  }

  return (
    <>
      <img 
        src={person}
        id="uploadImage"
      />
      {/* 복제해서 그리기 */}
      <canvas 
        id='originalDrawCanvas'
        style={{position: 'absolute', top: '50%', left: '50%'}}
      />
      {/* 사진 위에 동그라미 그리기 */}
      <canvas 
        id='circleDrawCanvas'
        style={{position: 'absolute', top: '50%', left: '50%'}}
        onMouseMove={(e) => {
          let point0 = 10;
          let point1 = 10;
          let point2 = 50;
          let point3 = 50;
          const { offsetX, offsetY } = e.nativeEvent;
          const circleCanvas = e.currentTarget;
          if(offsetX>point0&&offsetX<point2&&offsetY>point1&&offsetY<point3) {
            circleCanvas.style.cursor = 'pointer';
          } else {
            circleCanvas.style.cursor = 'default';
          }
        }}
        onMouseUp={(e)=> {
          setIsTarget(true);
        }}
      />
      <button
        onClick={onClickFun}
      >
        클릭1
      </button>
      <button
        onClick={drawCircle}
      >
        클릭2
      </button>
    </>
  );
};

export default Draw;
