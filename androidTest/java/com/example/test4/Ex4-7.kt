package com.example.test4

interface Nameable {
    var name: String
}
class StaffName: Nameable {
    override var name:String = "Sean"
}

class Work: Runnable {
    override fun run() {
        println("work...")
    }
}

class Person4(name:Nameable, work: Runnable) : Nameable by name, Runnable by work

fun main() {
    val person4 = Person4(StaffName(), Work())
    println(person4.name)
    person4.run()
}

/*
Sean
work...
 */