package com.example.test3

fun main() {
    var str1 : String? = "Hello Kotiln"
    str1 = null
    println("str1: $str1 length: ${str1?.length ?: -1}") //str1: null length: -1
}