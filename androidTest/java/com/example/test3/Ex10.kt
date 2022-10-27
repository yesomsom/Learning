package com.example.test3

fun main() {
    numCon(3) //n is an Odd number
    numCon(4) //n is an Even number
}

fun numCon(n: Int) {
    if((n%2) == 1) {
        println("n is an Odd number")
    } else {
        println("n is an Even number")
    }
}