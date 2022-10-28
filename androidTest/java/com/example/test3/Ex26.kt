package com.example.test3

fun main() {
    var data = arrayOf<Int>(40,50,60)
    for((index, value ) in data.withIndex()) {
        print(value)
        if(index !==data.size -1) print(",")
    }
}