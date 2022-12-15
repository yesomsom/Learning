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
            <td>{word.eng}</td>
            <td>{word.kor}</td>
          </tr>
        ))}
      </tbody>
    </table>
  </>
}