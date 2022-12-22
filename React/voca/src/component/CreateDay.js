import useFetch from "../hooks/useFetch";
import {useNavigate} from "react-router-dom";

export default function CreateDay() {
  const days = useFetch("http://localhost:3002/days");
  const history = useNavigate();

  function addDay() {
    fetch(`http://localhost:3002/days/`, {
      method : 'POST',
      headers : {
        'Content-Type' : 'application/json', //보내는 리소스 타입 (json 타입으로 보냄)
      },
      body : JSON.stringify({
        day: days.length + 1,
      }),
    }).then(res => {
      if (res.ok) {
        alert("생성이 완료되었습니다.");
        history(`/`);
      }
    });
  }
  return (
    <div>
      <h3>현재 일수 : {days.length}일</h3>
      <button onClick={addDay}>Day 추가</button>
    </div>
  );
}