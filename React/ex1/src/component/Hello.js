// const Hello = function() {
//   <p>Hello</p>;
// };

// const Hello = () => {
//   <p>Hello</p>;
// };

// export default Hello;

import World from "./World";

export default function Hello() {
  return (
    <div>
      <p>Hello</p>
      <World />
      <World />
    </div>
  );
}