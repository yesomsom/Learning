package com.example.test2

import java.text.SimpleDateFormat
import java.util.*

var data = 10

fun formatData(date: Date): String {
    val sdformat = SimpleDateFormat("yyyy-MM-dd")
    return sdformat.format(date)
}

class User {
    var name = "hello"

    fun sayHello() {
        println("name : $name")
    }
}