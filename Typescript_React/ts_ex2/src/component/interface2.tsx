import React from "react";

interface Add {
  (num1: number, num2: number): number;
}

const add: Add = function(x, y) {
  return x + y;
}

interface IsAdult {
  (age:number):boolean;
}

const boo:IsAdult = (age) => {
  return age > 19;
}
console.log(boo(30));

const AddFunction = () => {
  return (
    <>
      <div>{add(20, 25)}</div>
      <div>{boo(10)}</div>
    </>
  );
};

export default AddFunction;

