import "./ex1.css";
export default function Ex1() {
  return (
    <div className="App">
      <div className="container">
        <input id="dropdown" type="checkbox" />
        <label className="dropdownLabel" for="dropdown">
          <div>dropdown</div>
          <div>icon</div>
        </label>
        <div className="content">
          <ul>
            <li>
              <input type="checkbox" id="item1" />
              <label htmlFor="item1">item1</label>
            </li>
            <li>
              <input type="checkbox" id="item2" />
              <label htmlFor="item2">item2</label>
            </li>
            <li>
              <input type="checkbox" id="item3" />
              <label htmlFor="item3">item3</label>
            </li>
          </ul>
        </div>
      </div>
    </div>
  );
}