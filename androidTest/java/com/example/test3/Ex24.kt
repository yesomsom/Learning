package com.example.test3

fun main() {
    var data = "hello"
    when (data) {
        "hello" -> println("data is hello")
        "world" -> println("data is world")
        else -> {
            println("data is not valid data")
        }
    }
}

/*
data is hello
 */