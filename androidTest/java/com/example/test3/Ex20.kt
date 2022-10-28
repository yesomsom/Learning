package com.example.test3

fun main() {
    val a = 12
    val b = 7

    val max = if (a > b) {
        println("a 선택")
        a
    } else {
        println("b 선택")
        b
    }
    println(max)
}

/*
a 선택
12
 */