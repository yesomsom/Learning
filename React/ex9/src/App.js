import './App.css';
import MapEx1 from './component/MapEx1';
import WeatherEx1 from './component/WeatherEx1';

// map() function

function App() {
  let numbers = [1,2,3,4,5];

  let doubleNumbers = numbers.map((num) => {
    return num * num;
  });

  console.log(doubleNumbers);

  return (
    <div className="App">
      <WeatherEx1 />
      <MapEx1 />
    </div>
  );
}

export default App;
