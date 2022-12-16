import dummy from "../db/data.json";
import { useParams } from "react-router-dom"; //url 변수 가져옴

export default function Day() {

  const day = useParams().dayEle;
  //const {day} = useParams();
  const wordlist = dummy.words.filter(word=>word.day === Number(day)); 

  return <>
  <h2 className="day_title_color">Day {day}</h2>
    <table>
      <tbody>
        {wordlist.map(word => (
          <tr key={word.id}>
            <td>
              <input type="checkbox"></input>
            </td>
            <td>{word.eng}</td>
            <td>{word.kor}</td>
            <td>
              <button className="btn_check">뜻 확인</button>
              <button className="btn_del">삭제</button>
            </td>
          </tr>
        ))}
      </tbody>
    </table>
  </>
}