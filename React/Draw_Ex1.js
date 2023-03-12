import { useState } from 'react';
import person from './person.jpg';

const Draw = () => {
  const [isTarget, setIsTarget] = useState(false); 
  const [pointList, setPointList] = useState([
    {
      point0: 10,
      point1 : 10,
      point2 : 50,
      point3: 50
    },
    {
      point0: 60,
      point1 : 70,
      point2 : 90,
      point3: 100
    },
  ])
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
    let canvas = document.getElementById('originalDrawCanvas');
    let circleCanvas = document.getElementById('circleDrawCanvas');
    circleCanvas.width = canvas.width;
    circleCanvas.height = canvas.height;

    pointList.map((item, ind) => {
      let point0 = item.point0;
      let point1 = item.point1;
      let point2 = item.point2;
      let point3 = item.point3;
      let width = point2-point0;
      let height = point3-point1;
      let ctx = circleCanvas.getContext('2d');
      ctx.lineWidth = 3;
      ctx.arc((point0+point2)/2,(point1+point3)/2,width/2,0,Math.PI*2);
      console.log(point0,point1,point2,point3);
      console.log('point', (point0+point2)/2, (point1+point3)/2);
      ctx.strokeStyle = isTarget ? 'blue' : 'yellow';
      ctx.stroke();
      ctx.beginPath();
    })
  }

  return (
    <>
      <img 
        src={person}
        id="uploadImage"
        style={{width:'100px', height:'100px'}}
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
          const circleCanvas = e.currentTarget;

          const { offsetX, offsetY } = e.nativeEvent;
          if (pointList.find((human) => offsetX >= human.point0 && offsetX <= human.point2 && offsetY >= human.point1 && offsetY <= human.point3)) {
            // console.log(offsetX, offsetY);
            circleCanvas.style.cursor = 'pointer';
            circleCanvas.style.backgroundColor = 'red';
          } else {
            circleCanvas.style.cursor = 'default';
            circleCanvas.style.backgroundColor = 'green';
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
