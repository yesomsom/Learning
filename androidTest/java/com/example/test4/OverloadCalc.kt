package com.example.test4

fun main() {
    val calc = Calc()
    println(calc.add(3,2))
    println(calc.add(3.2,2.5))
    println(calc.add(3,2,5))
    println(calc.add("Hello"," nice"))
}

class Calc {
    fun add(x: Int, y: Int): Int = x+y
    fun add(x: Double, y: Double): Double = x+y
    fun add(x: Int, y: Int, z: Int): Int = x+y+z
    fun add(x: String, y: String): String = x+y
}

/*
5
5.7
10
Hello nice
 */