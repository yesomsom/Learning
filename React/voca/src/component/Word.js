import { useState } from "react";

export default function Word({word}) {
  const [isShow, setIsShow] = useState(false);
  const [isDone, setIsDone] = useState(word.isDone);

  function toggleShow() {
    setIsShow(!isShow);
  }

  function toggleDone() {
    setIsDone(!isDone);
  }

  return (
    <tr className={isDone ? "turn_off" : ""}>
      <td>
        <input type="checkbox" checked={isDone} onChange={toggleDone}></input>
      </td>
      <td>{word.eng}</td>
      <td className="word_kor">{isShow && word.kor}</td>
      <td>
        <button className="btn_check" onClick={toggleShow}>{isShow ? "숨기기" : " 뜻확인"}</button>
        <button className="btn_del">삭제</button>
      </td>
    </tr>    
  );
}