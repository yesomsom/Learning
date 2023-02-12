import './App.css';
//import Comp1 from './component/Comp1.ts';
import PersonInfo from './component/Interface.tsx';
import AddFunction from './component/interface2.tsx';
import InterfaceImp from './component/interfaceImp1.tsx';

function App() {
  return (
    <div className="App">
      {/* <Comp1/>   */}
      <PersonInfo/>    
      <AddFunction/>
      <InterfaceImp/>
    </div>
  );
}

export default App;
