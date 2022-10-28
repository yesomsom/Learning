package com.example.test3

fun main() {
    print("Enter the score: ")
    val score = readLine()!!.toInt()
    var grade: Char = 'F'

    when(score) {
        in 90..100 -> grade = 'A'
        in 80..89 -> grade = 'B'
        in 70..79 -> grade = 'C'
        !in 70..100 -> grade = 'D'
    }

    println("Score: $score, Grade: $grade")
}

/*
Enter the score: 89
Score: 89, Grade: B
 */