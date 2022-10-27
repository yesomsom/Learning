package com.example.test2

import java.util.*
import com.example.test2.User
import com.example.test2.data
import com.example.test2.formatData

fun main() {
    data = 20
    println(data) //20
    var saydate = formatData(Date())
    println(saydate) //2022-10-27
    User().sayHello() //name : hello
}