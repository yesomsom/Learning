import person from './person.png';

const Draw = () => {
  const onClickFun = () => {
    let canvas = document.getElementById('originalDrawCanvas');
    let tempCanvas = document.createElement('canvas');
    let target = document.getElementById('uploadImage');
    const img_temp = new Image();
    img_temp.src = person;
    img_temp.onload = (e) => {
      canvas.width = img_temp.width;
      canvas.height = img_temp.height;
      tempCanvas.width = img_temp.width;
      tempCanvas.height = img_temp.height;
      let ctx = canvas.getContext('2d');
      ctx.drawImage(target, 0, 0, img_temp.width, img_temp.height);
    }
  }

  return (
    <>
      <img 
        src={person}
        id="uploadImage"
      />
      <canvas 
        id='originalDrawCanvas'
      />
      {/* <canvas 
        id='rectDrawCanvas'
      /> */}
      <button
        onClick={onClickFun}
      >
        클릭
      </button>
    </>
  );
};

export default Draw;
