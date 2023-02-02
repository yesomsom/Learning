import { useState, useMemo, useCallback, useRef } from "react";

const getAverage = numbers =>{
  console.log('평균값 계산중...');
  if(numbers.length === 0) return 0;
  const sum = numbers.reduce((a,b) => a+b);
  return sum/numbers.length;
}

const Average = () => {
  const [list, setList] = useState([]);
  const [number, setNumber] = useState('');
  const inputRef = useRef(null);

  const onChange2 = useCallback(e => {
    setNumber(e.target.value);
  }, []);
  const onInsert = useCallback(e => {
    const nextList = list.concat(parseInt(number));
    setList(nextList);
    setNumber('');
    inputRef.current.focus();
    console.log(inputRef.current);
  }, [number, list]);

  const avg = useMemo(() => getAverage(list), [list]);

  return (
    <div>
      <input value={number} onChange={onChange2} ref={inputRef}></input>
      <button onClick={onInsert}>등록</button>
      <ul>
        {list.map((value, index) => (
          <li key={index}>{value}</li>
        ))}
      </ul>
      <div>
        <b>평균값: </b> { avg }
      </div>
    </div>
  );
};

export default Average;