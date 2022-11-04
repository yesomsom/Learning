package com.example.test4

interface Pet1 {
    var category: String
    val msgTags: String
        get() = "I'm your lovely pet!"
    fun feeding()
    fun patting() {
        println("Keep patting")
    }
}
class Cat1(override var category: String):Pet1{
    override fun feeding() {
        println("Feed the cat a tuna can!")
    }
}
fun main() {
    val obj = Cat1("small")
    println("Pet Message Tags: ${obj.msgTags}")
    obj.feeding()
    obj.patting()
}
/*
Pet Message Tags: I'm your lovely pet!
Feed the cat a tuna can!
Keep patting
 */