package com.example.test3

fun main() {
    val a: Int = 128
    val b = a

    println("(a === b) = " +(a === b)) //true
    val c: Int? = a
    val d: Int? = a
    val e: Int? = c
    println("(c == d) = "+(c == d)) //true
    println("(c === d) = "+(c === d)) //false
    println("(c === e) = "+(c === e)) //true
    println("(d === e) = "+(d === e)) //false
    println("(a === e) = "+(a === e)) //true
    println("(a === d) = "+(a === d)) //true
    println("(b === d) = "+(b === d)) //true
    println("(b === e) = "+(b === e)) //true

    //a === b === c === e
    //a === b === d

}