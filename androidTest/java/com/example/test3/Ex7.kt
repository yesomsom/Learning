package com.example.test3

fun main() {
    val a: Int = 128
    val b: Int = 128

    println("(a == b) = " + (a == b))
    println("(a === b) = " + (a === b))

    val c: Int = 128
    val d: Int? = 128

    println("(c == d) = " + (c == d))
    println("(c === d) = " + (c === d))
}