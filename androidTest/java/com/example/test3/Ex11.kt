package com.example.test3

fun main() {
    var num1 = 10
    var num2 = 10
    val result1 = ++num1
    val result2 = num2++

    println("result1: $result1") //result1: 11
    println("result2: $result2") //result2: 10
    println("num1: $num1") //num1: 11
    println("num2: $num2") //num2: 11
}