import './App.css';
import TodosContainer from './containers/TodosContainer';
import EventPractice from './EventPractice';
import EventPracticeFun from './EventPracticeFun';
import EventPracticeFun1 from './EventPracticeFun1';

function App() {
  return (
    <div className="App">
      <TodosContainer />
      <hr />
      <EventPractice />
      <hr  />
      <EventPracticeFun  />
      <hr  />
      <EventPracticeFun1  />
    </div>
  );
}

export default App;
