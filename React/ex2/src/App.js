import './App.css';
import TodosContainer from './containers/TodosContainer';
import EventPractice from './EventPractice';
import EventPracticeFun from './EventPracticeFun';

function App() {
  return (
    <div className="App">
      <TodosContainer />
      <hr />
      <EventPractice />
      <hr  />
      <EventPracticeFun  />
    </div>
  );
}

export default App;
