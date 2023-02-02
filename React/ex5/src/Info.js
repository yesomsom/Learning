import { useState } from "react";

const Info = () => {
  const [inputText, setInputText] = useState('');
  const changInput = e => {setInputText(e.target.value);};
  return (
    <div>
      <input type="text" value={inputText} onChange={changInput}></input>
      <div>입력한 값: {inputText}</div>
    </div>
  );
};

export default Info;