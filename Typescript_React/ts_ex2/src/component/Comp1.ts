let car:string = 'bmw';

car = 'h';

let age:number = 30;
let isPerson:boolean = true;
let a:number[] = [1,2,3];
let b:Array<number> = [1,2,3];
let week1:string[] = ['mon', 'tue', 'wed'];
let week2:Array<string> = ['thu','fri','sat'];

week2.push('sun');
// week2.push(1);

// 튜플(Tuple)
let c:[string, number];
c = ['z', 1];

c[0].toLowerCase();
// c[1].toLowerCase();

// void 반환형이 없을때
function sayHello():void {
  console.log('hello');
}

// never 무한
function showErro():never {
  throw new Error();
}

function whileLoop():never {
  while(true);
}

// enum 비슷한 값끼리 묶음
enum Os {
  window = 3, // 3
  Ios = 5, // 5
  Android // 6
}
console.log(Os[6]); // Android
console.log(Os['Ios']); // 5

enum Animal {
  dog = 'cute',
  cat = 'lovely'
}

let myAni:Animal;

myAni = Animal.dog;
console.log(myAni);

let d:null = null;
let e:undefined = undefined;

