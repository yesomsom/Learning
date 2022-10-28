package com.example.test3

fun main() {
    print("Enter the score: ")
    var score = readLine()!!.toDouble()
    var grade: Char = 'F'

    when {
        score >= 90.0 -> grade = 'A'
        score in 80.0..89.9 -> grade = 'B'
        score in 70.0..79.9 -> grade = 'C'
        score < 70.0 -> grade = 'F'
    }
    println("Score: $score, Grade: $grade")
}

/*
Enter the score: 88
Score: 88.0, Grade: B
 */