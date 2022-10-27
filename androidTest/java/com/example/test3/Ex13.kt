package com.example.test3

fun main() {
    println(sum(10,5)) //15
    println(sum(-2,5)) //3
}
fun sum(a: Int, b: Int): Int{
    var sum = a+b
    return sum
}