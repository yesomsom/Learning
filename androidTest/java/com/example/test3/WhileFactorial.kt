package com.example.test3

fun main() {
    print("Enter the number: ")
    var number = readLine()!!.toInt()
    var factorial: Long = 1

    while (number > 0) {
        factorial *= number
        --number
    }

    println("Factorial: $factorial")
    println("number: $number")
}

/*
Enter the number: 5
Factorial: 120
 */