package com.example.test3

fun main() {
    var str1 : String? = "Hello Kotlin"
    str1 = null
    println("str1: $str1")

    val data1: Any = 10
    val data2: Any = "hello"

    class User
    val data3: Any = User()

    println("data1 = " + data1)
    println("data2 = " + data2)
    println("data3 = " + data3)

    val data4: Unit = Unit
    val data5 = Unit

    fun some(): Unit {
        println(10+20)
    }
    fun some1() {
        println(10+25)
    }
    println("data4 = " + data4)
    println("data5 = " + data5)
    some()
    some1()
}