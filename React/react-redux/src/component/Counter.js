// App.js 에 삽입

const Counter = ({ num, onIncrease, onDecrease }) => {
  return (
    <div>
      <h1>{num}</h1>
      <div>
        <button onClick={onIncrease}>+1</button>
        <button onClick={onDecrease}>-1</button>
      </div>
    </div>
  );
};

export default Counter;