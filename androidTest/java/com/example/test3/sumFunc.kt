package com.example.test3

fun main() {
    val result1 = sum1(3,2)
    val result2 = sum1(6,7)

    println(result1) //5
    println(result2) //13
}

fun sum1(a: Int, b: Int): Int {
    var sum1 = a+b
    return sum1
}