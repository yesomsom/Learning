import person from './person.png';

const Draw = () => {
  const onClickFun = () => {
    let canvas = document.getElementById('originalDrawCanvas');
  }

  return (
    <>
      <img 
        src={person}
      />
      <canvas 
        id='originalDrawCanvas'
      />
      <canvas 
        id='rectDrawCanvas'
      />
      <button
        onClick={onClickFun}
      >
        클릭
      </button>
    </>
  );
};

export default Draw;
