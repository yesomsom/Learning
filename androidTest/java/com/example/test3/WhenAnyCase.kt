package com.example.test3

class MyClass

fun main() {
    cases("Hello") //String: Hello
    cases(1) //Int: 1
    cases(System.currentTimeMillis()) //Long: 1666922904360
    cases(MyClass()) //Not a String
    cases("Good") //A String
    cases(2) //Not a String
}

fun cases(obj: Any) {
    when(obj) {
        1 -> println("Int: $obj")
        "Hello" -> println("String: $obj")
        is Long -> println("Long: $obj")
        !is String -> println("Not a String")
        is String -> println("A String")
        else -> println("Unknown")
    }
}
