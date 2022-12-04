// const Hello = function() {
//   <p>Hello</p>;
// };

// const Hello = () => {
//   <p>Hello</p>;
// };

// export default Hello;

import World from "./World";
import styles from "./Hello.module.css"
export default function Hello() {
  function showName() {
    console.log("Mike");
  }
  function showAge(age) {
    console.log(age)
  }
  function showText(e) {
    console.log(e.target.value);
  }

  return (
    <div>
      <p style={{
        color : "#ccc",
        borderRight : "2px solid #fff",
        marginBottom: "50px",
      }}>Hello</p>
      <World num={0} />
      <div className={styles.box}>
       okay
      </div> 
      <button onClick={showName}>Show name</button>
      <button onClick={
        () => {
          showAge(20);
        }
      }>Show age</button>
      <input type="text" onChange={showText}></input>
    </div>
  );
}