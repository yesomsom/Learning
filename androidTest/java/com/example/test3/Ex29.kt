package com.example.test3

fun main() {
    var i = 1
    while (i <= 5) {
        println("$i")
        ++i
    }
    tempError()
}

fun tempError() {
    print("Enter the temperature: ")
    var temp = readLine()!!.toDouble()

    if(temp >= 100.0) {
        println("100도가 넘었습니다.")
    } else {
        println("아직 100가 안됐습니다.")
    }
}

/*
1
2
3
4
5
Enter the temperature: 100.0
100도가 넘었습니다.
 */