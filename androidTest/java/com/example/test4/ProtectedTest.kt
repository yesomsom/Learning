package com.example.test4

open class Base1 {
    protected var i1 = 1
    protected fun protectedFunc1() {
        println(i1)
        i1 += 1
        println(i1)
    }
    fun access1(): Int {
        protectedFunc1()
        return i1
    }
    protected class Nested
}
class Derived1 : Base1() {
    fun test1(base1: Base1): Int {
        protectedFunc1()
        return i1
    }
}
fun main() {
    val base1 = Base1()
/*    base1.i
    base1.protectedFunc()*/
    println("${base1.access1()}")

    val derived1 = Derived1()
}
