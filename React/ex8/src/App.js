import './App.css';
import AsyncEx1 from './component/AsyncEx1';
import { useState } from 'react';
import axios from 'axios';
import AsyncEx2 from './component/AsyncEx2';

function App() {
  const [data, setData] = useState(null);
  const onClick = () => {
    axios.get('https://jsonplaceholder.typicode.com/todos/1').then(response => {
      setData(response.data);
    }).catch(e => {
      console.log(e);
    });
  };

  // JSON.stringify(JSON data, null, 공백)}
  return (
    <div className="App">
      <AsyncEx1 />
      <button onClick={onClick}>데이터 불러오기</button>
      <div>{data && <textarea rows={7} cols={35} value={JSON.stringify(data, null, 2)} readOnly={true}/>}</div>
      <div>
        <h2>데이터 Aysnc로 불러오기</h2>
        <AsyncEx2 />
      </div>
    </div>
  );
}

export default App;
