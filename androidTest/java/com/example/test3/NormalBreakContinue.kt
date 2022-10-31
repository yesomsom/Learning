package com.example.test3

fun main() {
    for(i in 1..5) {
        if (i==3) break
        print(i)
    }
    println()
    println("outside")

    for(i in 1..5) {
        if (i==3) continue
        print(i)
    }
    println()
    println("outside")
}

/*
12
outside
1245
outside
 */