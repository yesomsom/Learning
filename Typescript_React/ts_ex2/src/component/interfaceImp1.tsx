import React from "react";

interface Car {
  color: string;
  wheels: number;
  start(): void;
}

class Bmw implements Car {
  color:string;
  wheels = 4;
  constructor(c:string) {
    this.color = c;
  }
  start(): void {
      console.log('go');
  }
}

const greenBmw = new Bmw('green');
console.log(greenBmw);
greenBmw.start();

// 확장하기 extend
interface Benz extends Car {
  door: number;
  stop(): void;
}

const benz: Benz = {
  door: 5,
  stop() {
    console.log('stop');
  },
  color: 'blue',
  wheels: 4,
  start() {
      console.log('go');
  },
}

// 동시 확장
interface Toy {
  name: string;
}

interface ToyCar extends Car, Toy {
  price: number;
}

export default function InterfaceImp() {
  return (
    <div>
      <div>{greenBmw.color}</div>
      <div>{greenBmw.wheels}</div>
    </div>
  );
}; 