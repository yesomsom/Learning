const Double = ({ rawNum, onDouble }) => {
  return (
    <div>
      <h1>{rawNum}</h1>
      <button onClick={onDouble}>*2</button>
    </div>
  );
};

export default Double;