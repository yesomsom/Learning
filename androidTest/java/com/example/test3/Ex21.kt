package com.example.test3

fun main() {
    print("숫자 입력 : ")
    var data = readLine()!!.toDouble()
    if(data > 10) {
        println("data > 10")
    } else if (data > 0 && data <= 10) {
        println("data > 0 && data <= 10")
    } else {
        println("data <= 0")
    }
}

/*
숫자 입력 : 11
data > 10
 */