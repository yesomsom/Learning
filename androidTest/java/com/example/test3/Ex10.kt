package com.example.test3

fun main() {
    numCon(3)
    numCon(4)
}

fun numCon(n: Int) {
    if((n%2) == 1) {
        println("n is an Odd number")
    } else {
        println("n is an Even number")
    }
}