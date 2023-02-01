import './App.css';
//import notify from './notify';
import { lazy, Suspense, useState } from 'react';

const SplitMe = lazy(() => import('./SplitMe'));


function App() {
  const [visible, setVisible] = useState(false);

  const onClick = () => {
    import('./notify').then(result => result.default());
  };

  const onClick1 = () => {
    setVisible(true);
  };

  const onMouseOver = () => {
    SplitMe.preload();
  };

  return (
    <div className="App">
      <p onClick={onClick}>Hello</p>
      <p onClick={onClick1}>React</p>
      <Suspense fallback={<div>loading...</div>}>
        { visible && <SplitMe /> }
      </Suspense>
      <p onClick={onClick1} onMouseOver={onMouseOver}>Preload</p>
    </div>
  );
}

export default App;

