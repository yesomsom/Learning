import { Route, Routes } from 'react-router-dom';
import './App.css';
import AuthForm from './component/AuthForm';
import Login from './component/Login';

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={ <AuthForm /> } />
        <Route path="/login" element={ <Login /> } />
      </Routes>
    </div>
  );
}

export default App;

// npx json-server ./src/data/data.json --port 3003