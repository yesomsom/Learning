import { useState } from 'react';
import './App.css';
import Counter from './Counter';
import Info from './Info';
import Info1 from './Info1';

function App() {
  const [visible, setVisible] = useState(false);
  return (
    <div className="App">
      <button onClick={()=> {
        setVisible(!visible);
      }}>
        {visible ? '숨기기' : '보이기'}
      </button>
      <hr />
      {visible && <Info />}
      <hr />
      <Counter />
      <hr />
      <Info1 />
    </div>
  );
}

export default App;
