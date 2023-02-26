import { useState } from 'react';
import './App.css';
import Counter from './Counter';

function App() {
  const [pro, setPro] = useState('prop1');
  return (
    <div className="App">
      <Counter prop = {pro}/>
      <button onClick={() => {
        setPro('prop2');
      }}>prop change</button>
    </div>
  );
}

export default App;
