package com.example.test4

class Person2 {
    lateinit var name: String

    fun test() {
        if(!::name.isInitialized) {
            println("not initialized")
        } else {
            println("initialized")
        }
    }
}
fun main() {
    val kildong = Person2()
    kildong.test()
    kildong.name = "kildong"
    kildong.test()
    println("name = ${kildong.name}")
}

/*
not initialized
initialized
name = kildong
 */