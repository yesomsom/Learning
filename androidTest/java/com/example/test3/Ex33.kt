package com.example.test3

fun main() {
    labelBreak1()
/*
labelBreak
i:1, j:1
i:1, j:2
after for j
i:2, j:1
i:2, j:2
after for j
i:3, j:1
i:3, j:2
after for j
i:4, j:1
i:4, j:2
after for j
i:5, j:1
i:5, j:2
after for j
after for i
*/

    labelContinue1()
/*
labelBreak
i:1, j:1
i:1, j:2
i:1, j:4
i:1, j:5
after for j
i:2, j:1
i:2, j:2
i:2, j:4
i:2, j:5
after for j
i:3, j:1
i:3, j:2
i:3, j:4
i:3, j:5
after for j
i:4, j:1
i:4, j:2
i:4, j:4
i:4, j:5
after for j
i:5, j:1
i:5, j:2
i:5, j:4
i:5, j:5
after for j
after for i
 */

    labelBreak2()
/*
labelBreak
i:1, j:1
i:1, j:2
after for i
 */

    labelContinue2()
/*
labelBreak
i:1, j:1
i:1, j:2
i:2, j:1
i:2, j:2
i:3, j:1
i:3, j:2
i:4, j:1
i:4, j:2
i:5, j:1
i:5, j:2
after for i

 */
}

fun labelBreak1() {
    println("labelBreak")
    for(i in 1..5) {
        second@ for (j in 1..5) {
            if(j == 3) break
            println("i:$i, j:$j")
        }
        println("after for j")
    }
    println("after for i")
}

fun labelContinue1() {
    println("labelBreak")
    for(i in 1..5) {
        second@ for (j in 1..5) {
            if(j == 3) continue
            println("i:$i, j:$j")
        }
        println("after for j")
    }
    println("after for i")
}

fun labelBreak2() {
    println("labelBreak")
    first@ for(i in 1..5) {
        second@ for (j in 1..5) {
            if(j == 3) break@first
            println("i:$i, j:$j")
        }
        println("after for j")
    }
    println("after for i")
}

fun labelContinue2() {
    println("labelBreak")
    first@ for(i in 1..5) {
        second@ for (j in 1..5) {
            if(j == 3) continue@first
            println("i:$i, j:$j")
        }
        println("after for j")
    }
    println("after for i")
}