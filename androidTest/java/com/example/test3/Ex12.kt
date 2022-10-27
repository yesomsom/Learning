package com.example.test3

fun main() {
    var check = (5>3) && (5>2)
    println(check)

    check = (5>3) || (2>5)
    println(check)

    check = !(5>3)
    println(check)
}