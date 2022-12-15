import './App.css';
import DayList from './component/DayList';
import Header from './component/Header';
import Day from './component/Day';
import {BrowserRouter, Route, Routes} from "react-router-dom";
import EmptyPage from './component/EmptyPage';

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <Header />
        <Routes>
          <Route path='/' element={ <DayList /> } />
          <Route path='/day/:dayEle'element={ <Day /> } /> // :dayEle = 1
          <Route path='*' element={ <EmptyPage /> } />
        </Routes> 
      </div>    
    </BrowserRouter>
  );
}

export default App;
