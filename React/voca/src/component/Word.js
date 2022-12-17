import { useState } from "react";

export default function Word({word}) {
  const [isShow, setIsShow] = useState(false);

  function toggleShow() {
    setIsShow(!isShow);
  }

  return (
    <tr>
      <td>
        <input type="checkbox"></input>
      </td>
      <td>{word.eng}</td>
      <td className="word_kor">{isShow && word.kor}</td>
      <td>
        <button className="btn_check" onClick={toggleShow}>뜻 확인</button>
        <button className="btn_del">삭제</button>
      </td>
    </tr>    
  );
}