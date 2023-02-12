import React from "react";

type Score = 'A' | 'B' | 'C' | 'F';

interface User {
  name: string;
  age: number; 
  gender?: string;
  readonly birthYear: number;
  [grade: number]: Score;
}

let user : User = {
  name: 'xx',
  age: 30,
  birthYear: 2000,
  1 : 'A',
  2 : 'B'
}

user.age = 10;
user.gender = "male";
// user.birthYear = 2001; // 읽기 전용이라 불가

const PersonInfo = () => {
  return (
    <div>
      <div>{user.name}</div>
      <div>{user.age}</div>
      <div>{user.gender}</div>
      <div>{user.birthYear}</div>
    </div>
  );
};

export default PersonInfo;