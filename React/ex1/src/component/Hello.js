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
  return (
    <div>
      <p style={{
        color : "#ccc",
        borderRight : "2px solid #fff",
        marginBottom: "50px",
      }}>Hello</p>
      <World />
      <div className={styles.box}>
       okay
      </div> 
      <button>Show name</button>
      <button>Show age</button>
    </div>
  );
}