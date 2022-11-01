package com.example.test4

class Person1(firstName1:String, out:Unit = println("[Primary Constructor] Parameter")) {
    val fName = println("[Property] Person1 fName: $firstName1")

    init {
        println("[init] Person init block")
    }

    constructor(firstName1: String, age1:Int, out: Unit = println("[Secondary Constructor] Parameter")): this(firstName1) {
        println("[Secondary constructor] Body: $firstName1, $age1")
    }
}
fun main() {
    val p1 = Person1("Kildong",30)
    println()
    val p2 = Person1("Dooly")
}
/*
[Secondary Constructor] Parameter
[Primary Constructor] Parameter
[Property] Person1 fName: Kildong
[init] Person init block
[Secondary constructor] Body: Kildong, 30

[Primary Constructor] Parameter
[Property] Person1 fName: Dooly
[init] Person init block
 */