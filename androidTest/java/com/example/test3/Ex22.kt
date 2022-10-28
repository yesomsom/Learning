package com.example.test3

fun main() {
    var data = -1
    val result = if(data>0) {
        println("data > 0")
        true
    } else {
        println("data <= 0")
        false
    }
    println(result)
}

/*
data <= 0
false
 */