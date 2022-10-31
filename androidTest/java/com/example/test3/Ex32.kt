package com.example.test3

fun main() {
    val getMessage1 = lambda@ { num: Int ->
        if(num !in 1..100) {
            return@lambda "Error"
        }
        "Success"
    }

    println(getMessage1(3)) //Success
    println(getMessage1(101)) //Error


    val getMessage2 = fun(num: Int): String {
        if(num !in 1..100) {
            return "Error"
        }
        return "Success"
    }

    val result = getMessage2(99)
    println("result: " + result) //result: Success
}