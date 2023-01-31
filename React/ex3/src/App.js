import './App.css';
import { Route, Routes } from 'react-router-dom';
import Home from './pages/Home';
import About from './pages/About';
import Profile from './pages/Profile';
import About1 from './pages/About1';

function App() {
  return (
    <Routes>
      <Route
        path='/'
        element={ <Home /> }
      />
      <Route
        path='/About'
        element={ <About /> }
      />
      <Route
        path='/Profile/:userName'
        element={ <Profile /> }
      />
      <Route
        path='/About1'
        element={ <About1 /> }
      />
    </Routes>
  );
}

export default App;
