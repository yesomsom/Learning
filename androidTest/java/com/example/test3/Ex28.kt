package com.example.test3

fun main() {
    var data = 10
    val result = when {
        data <= 0 -> "data is <= 0"
        data > 100 -> "data is > 100"
        else -> "data is valid"
    }
    println(result) //data is valid
}