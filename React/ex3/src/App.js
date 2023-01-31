import './App.css';
import { Route, Routes } from 'react-router-dom';
import Home from './pages/Home';
import About from './pages/About';
import Profile from './pages/Profile';

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
    </Routes>
  );
}

export default App;
