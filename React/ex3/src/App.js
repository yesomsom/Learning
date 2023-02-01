import './App.css';
import { Route, Routes } from 'react-router-dom';
import Home from './pages/Home';
import About from './pages/About';
import Profile from './pages/Profile';
import About1 from './pages/About1';
import Article from './pages/Article';
import Articles from './pages/Articles';
import Layout from './Layout';
import NotFound from './pages/NotFound';
import Login from './pages/Login';
import MyPage from './pages/MyPage';

function App() {
  return (
    <Routes>
      <Route element={ <Layout  /> }>
        <Route
          index
          element={ <Home /> }
        />
        <Route
          path='/about'
          element={ <About /> }
        />
        <Route
          path='/profile/:userName'
          element={ <Profile /> }
        />
        <Route
          path='/about1'
          element={ <About1 /> }
        />  
      </Route>
      <Route path='/login' element={<Login/>} />
      <Route path='/mypage' element={<MyPage/>} />
      <Route path='/articles' element={ <Articles  /> }>
        <Route path=':id' element={ <Article  /> } />
      </Route>
      <Route path='*' element={<NotFound />} />
    </Routes>
  );
}

export default App;
