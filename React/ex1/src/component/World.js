import { useState } from "react";

export default function World(props) {
    const [text, setText] = useState('Hello~~');
    const [num, setNum] = useState(props.num);
    const msg = (num >= 10) ? "10을 넘었습니다." : "10 이하 입니다.";
    function changeText() {
      setText(text === 'Hello~~' ? "World!!" : "Hello~~");
    }
    console.log(num);
  return (
  <div>
    <h3>{text}</h3>
    <button onClick={changeText}>Change Text Click here!!</button>
    <p>{num}</p>
    <button onClick={()=>{
      setNum(num+1);
      alert(msg);
    }}>Increasing number!!</button>
  </div>
  );
};