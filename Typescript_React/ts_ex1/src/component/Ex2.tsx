import React from "react";

interface IPerson {
  name: string
  age: number
  etc?: boolean
}

let good1: IPerson = {name: 'Ham', age: 33}
let good2: IPerson = {name: 'Yang', age: 20, etc: true}
let good3: {
  name: string
  age: number
  etc?: boolean
} = {name: 'park', age: 21, etc: false}

const Ex2 = () => {
  const List = [good1, good2, good3];

  return(
    <div>
      {List.map(com => <li>{com.etc ? com.age : com.name}</li>)}
    </div>
  );
};

export default Ex2;