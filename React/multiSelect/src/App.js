import './App.css';
import React, { useState } from 'react';
import { default as ReactSelect , components } from "react-select";
import Ex1 from "../src/component/ex1";

export const colourOptions = [
  { value: "ocean1", label: "Ocean" },
  { value: "blue", label: "Blue" },
  { value: "purple", label: "Purple" },
  { value: "red", label: "Red" },
  { value: "orange", label: "Orange" },
  { value: "yellow", label: "Yellow" },
  { value: "green", label: "Green" },
  { value: "forest", label: "Forest" },
  { value: "slate", label: "Slate" },
  { value: "silver", label: "Silver" }
];

function App() {
  const [optionSelected, setOptionSelected] = useState('');
  const handleChange = (selected) => {
    setOptionSelected(selected);
  }
  const Option = (props) => {
    return (
      <div>
        <components.Option {...props}>
          <input
            type="checkbox"
            checked={props.isSelected}
            onChange={()=>null}  
          />{" "}
          <label>{props.label}</label>
        </components.Option>
      </div>
    )
  }

  return (
    <div className="App">
      <span
        class="d-inline-block"
        data-toggle="popover"
        data-trigger="focus"
        data-content="Please selecet account(s)"
      >
        <ReactSelect
          options={colourOptions}
          isMulti
          closeMenuOnSelect={false}
          hideSelectedOptions={false}
          components={{
            Option
          }}
          onChange={handleChange}
          allowSelectAll={false}
          value={optionSelected}
        />
      </span>
      <Ex1 />
    </div>
  );
}

export default App;
