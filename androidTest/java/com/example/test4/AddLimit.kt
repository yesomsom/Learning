package com.example.test4

fun <T: String> addLimit(a:T,b:T,op:(T,T)->T):T {
    return op(a,b)
}

fun main() {
    val result = addLimit("abc","def",{a,b ->a+b})
    println(result)
}

/*
abcdef
 */
