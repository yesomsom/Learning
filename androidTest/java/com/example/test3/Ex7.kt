package com.example.test3

fun main() {
    val a: Int = 128
    val b: Int = 128

    println("(a == b) = " + (a == b)) //(a == b) = true
    println("(a === b) = " + (a === b)) //(a === b) = true

    val c: Int = 128
    val d: Int? = 128

    println("(c == d) = " + (c == d)) //(c == d) = true
    println("(c === d) = " + (c === d)) //(c === d) = true
}