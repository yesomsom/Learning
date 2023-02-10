import React from "react";

const Ex1 = () => {
  let person = {name: 'glory', age: 29}; // person.name, person.age로 사용
  console.log(person.name);
  console.log(person.age);
  let { name, age } = person; // name, age로 사용 가능

  let array = [1, 2, 3, 4];
  let [head, ...rest] = array;
  let [header, mid, last] = array;

  let a = 1, b = 2;
  [a, b] = [b, a];

  function add(a: number, b: number) { return a+b };
  const minus = (a: number, b: number) => a - b;

  return (
    <div>
      <div>
        {person.name} & {person.age}
      </div>
      <div>
        {name} & {age}
      </div>
      <div>
        {head} & {rest}
      </div>
      <div>
        {header} & {mid} & {last}
      </div>
      <div>
        {a} & {b}
      </div>
      <div>
        {add(2,3)} & {minus(5,6)}
      </div>
    </div>
  );
};

export default Ex1;