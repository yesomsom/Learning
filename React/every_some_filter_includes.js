let data = [
  {id: 1, age: 23},
  {id: 2, age: 33},
  {id: 3, age: 12},
  {id: 4, age: 11},
];

let arr = [12,23];

let result = data.every(_=>_.age>=30);
console.log(result);
let result1 = data.some(_=>_.age>=30);
console.log(result1);
let filt = data.filter((i) => !arr.includes(i.age));
console.log(filt);
