import { useState } from 'react';
import './App.css';
import Map from './Map';

function App() {
  const [mapObject, setMapObject] = useState({});
  const [clickProps, setClickProps] = useState(false);
  const [clickOverLayProps, setClickOverLayProps] = useState(false);

  return (
    <div className="App">
      <div id='map1' value={mapObject} style={{height: '500px'}}> 
        <Map 
          mapObject = {mapObject}
          setMapObject = {setMapObject}
          clickProps = {clickProps}
          clickOverLayProps = {clickOverLayProps}
        />
      </div>

      <button 
        onClick={() =>{
          setClickProps(true);
          //console.log(clickProps);
        }}
      >
        현재 위치 표시
      </button>
      <button
        onClick={() =>{
          setClickOverLayProps(true);
        }}
      >
        오버레이로 표시
      </button>
    </div>
  );
}

export default App;
