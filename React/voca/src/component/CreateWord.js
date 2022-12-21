import useFetch from "../hooks/useFetch";
import {useRef} from "react";

export default function CreatWord(){
  const days = useFetch("http://localhost:3002/days");

  function onSubmit(e) {
    e.preventDefault(); // 버튼 눌러도 새로고침 되지 않음

    console.log(engRef.current.value); // current: 해당 속성에 접근, value: input의 값
    console.log(korRef.current.value);
    console.log(dayRef.current.value);
  }

  // dom요소 생성 후 접근 가능
  const engRef = useRef(null);
  const korRef = useRef(null);
  const dayRef = useRef(null);

  return (
    <form className="create_word_form" onSubmit={onSubmit}>
      <div className="input_area">
        <label>Eng</label>
        <input className="input_text" ref={engRef} type="text" placeholder="소문자 알파벳" />
      </div>
      <div className="input_area">
        <label>Kor</label>
        <input className="input_text" ref={korRef} type="text" placeholder="한글" />
      </div>
      <div className="input_area">
        <label>Day</label>
        <select className="input_select" ref={dayRef}>
          {days.map(day => (
            <option key={day.id} value={day.day}>{day.day}</option>
          ))}
        </select>
      </div>
      <div>
        <button className="save_btn">SAVE</button>
      </div>
    </form>
  )
}