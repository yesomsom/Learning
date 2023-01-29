import './App.css';
import CounterContainer from './containers/CounterContainer';
import TodosContainer from './containers/TodosContainer';
import DoubleContainer from './containers/DoubleContainer';

function App() {
  return (
    <div className="App">
      <CounterContainer></CounterContainer>
      <hr />
      <TodosContainer />
      <hr />
      <DoubleContainer />
    </div>
  );
}

export default App;
