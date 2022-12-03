import './App.css';
import Hello from './component/Hello';
import Welcome from './component/Welcome';

function App() {
  const name = "Jake";
  const naver = {
    name: "네이버",
    url: "https://naver.com"
  }
  return (
    <div className="App">
      <h1 style={{
        color: 'red'
      }}>
        Welcome to voca education page
      </h1>
      <p>Hello, {name}</p>
      <a href={naver.url}>{naver.name}</a>
      <Hello />
      <Hello />
      <Welcome />
    </div> 
  );
}

export default App;
