package com.example.test3

fun main() {
    var check = (5>3) && (5>2)
    println(check) //true

    check = (5>3) || (2>5)
    println(check) //true

    check = !(5>3)
    println(check) //false
}