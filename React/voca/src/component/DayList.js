//import dummy from "../db/data.json";
import { useEffect, useState } from "react";
import {Link} from "react-router-dom";

export default function DayList() {
  //console.log(dummy);
  const [days, setDays] = useState([]);

  useEffect(() => {
    console.log("change");
  });

  return (  
    <ul className="list_day">
      {days.map(days => (
        <li className="list_day_li" key={days.id}>
          <Link to={`/day/${days.day}`} id="fontColorWhite">Day {days.day}</Link>
        </li>
      ))}
    </ul>
  )
}