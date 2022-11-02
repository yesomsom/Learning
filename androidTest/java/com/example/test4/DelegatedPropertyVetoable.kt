package com.example.test4

import kotlin.properties.Delegates

fun main() {
    var max: Int by Delegates.vetoable(0) {
        prop, old, new ->
        new > old
    }
    println(max) //0
    max = 10
    println(max) //10

    max=5
    println(max) //10
}

/*
0
10
10
 */