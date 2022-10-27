package com.example.test3

import java.util.*
import com.example.test2.User
import com.example.test2.data
import com.example.test2.formatData

fun main() {
    data = 20
    println(data)
    var saydate = formatData(Date())
    println(saydate)
    User().sayHello()
}