package com.example.test3

fun main() {
    var a: Any = 1
    a = 20L
    println("a: $a type: ${a.javaClass}") //a: 20 type: class java.lang.Long
}