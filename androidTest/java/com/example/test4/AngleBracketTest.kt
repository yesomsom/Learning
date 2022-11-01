package com.example.test4

open class A1 {
    open fun f1() = println("A1 Class f1()")
    fun a1() = println("A1 Class a1()")
}
interface B1 {
    fun f1() = println("B1 interface f1()")
    fun b1() = println("B1 interface b1()")
}
class C1: A1(), B1 {
    override fun f1() = println("C Class f1()")
    fun test1() {
        f1()
        a1()
        b1()
        super<A1>.f1()
        super<B1>.f1()
    }
}
fun main() {
    val c1 = C1()
    c1.test1()
}

/*
C Class f1()
A1 Class a1()
B1 interface b1()
A1 Class f1()
B1 interface f1()
 */