package com.example.test3

fun main() {
    checkArg("Hello")
    checkArg(5)
}

fun checkArg(x: Any) {
    if(x is String) {
        println("x is String: $x") //x is String: Hello
    }
    if(x is Int) {
        println("x is Int: $x") //x is Int: 5
    }
}