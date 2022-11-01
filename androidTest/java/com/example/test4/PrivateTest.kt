package com.example.test4

private class PrivateClass {
    private var i = 1
    private fun privateFunc() {
        i += 1
    }
    fun access(): Int {
/*        privateFunc()*/
        return i
    }
}
class OtherClass {
    private val opc = PrivateClass()
    fun test() {
        val pc = PrivateClass()
    }
}
fun main() {
    val pc = PrivateClass()
/*    pc.i
    pc.privateFunc()*/
/*    pc.access()*/
    println("${pc.access()}")
}
fun TopFunction() {
    val tpc = PrivateClass()
}