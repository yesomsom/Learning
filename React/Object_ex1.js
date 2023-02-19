const obj = {
  first: {name: 'aa', price : 1000}, 
  second: {nickname: 'bb', age : 20},
  third: {name: 'cc', price: 3000}
};
const { first, second, third } = obj;

const ex1 = Object.keys(first); //name,price
const ex2 = Object.keys(first).filter((key) => first[key]); //name,price
const ex3 = Object.values(first); //aa,1000
const ex4 = Object.keys(second).filter((key) => second[key]); //nickname,age
Object.keys(second).filter((item) => second[item]).map((item) => {
    console.log(item); // "nickname", "age"
});
Object.keys(third).filter((item) => third[item]).map((item) => {
    console.log(third[item]); // "cc", 3000
});
document.writeln("ex1: ", ex1);
document.writeln("ex2: ", ex2);
document.writeln("ex3: ", ex3);
document.writeln("ex4: ", ex4);

const ex5 = Object.keys(first).find((_)=>_); // name
document.writeln("ex5: ", ex5);

const ex6 = Object.values(first).find((_)=>_);
document.writeln("ex6: ", ex6); // aa
