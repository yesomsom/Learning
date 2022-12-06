import dummy from "../db/data.json";
import {Link} from "react-router-dom";

export default function DayList() {
  console.log(dummy);
  return (  
    <ul className="list_day">
      {dummy.days.map(days => (
        <li key={days.id}>
          <Link to="/day" id="fontColorWhite">Day {days.day}</Link>
        </li>
      ))}
    </ul>
  )
}