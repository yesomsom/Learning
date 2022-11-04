package com.example.test4

open class Superman() {
    fun work() = println("Taking photos")
    fun talk() = println("Taking with people.")
    open fun fly() = println("Flying in the air.")
}

fun main() {
    val pretendedMan = object : Superman() {
        override fun fly() = println("I'm not a real superman. I can't fly!")
    }
    pretendedMan.work()
    pretendedMan.talk()
    pretendedMan.fly()
}

/*
Taking photos
Taking with people.
I'm not a real superman. I can't fly!
 */