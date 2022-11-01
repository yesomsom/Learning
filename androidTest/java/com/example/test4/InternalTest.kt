package com.example.test4

internal class InternalClass {
    internal var i = 1
    internal fun icFunc() {
        i += 1
        println("icFunc i: "+i)
    }
    fun access() {
        icFunc()
    }
}
class Other {
    internal val ic = InternalClass()
    fun test() {
        ic.i
        ic.icFunc()
    }
}
fun main() {
    val mic = InternalClass()
    println("mic.i : "+mic.i)
    mic.icFunc()
    val otheric = InternalClass()
    println("otheric.i : "+otheric.i)
    otheric.icFunc()
}

/*
mic.i : 1
icFunc i: 2
otheric.i : 1
icFunc i: 2
 */