package com.example.test3

import java.lang.ArithmeticException
import java.lang.Exception

fun main() {
    val a = 6
    val b = 0
    var c : Int

    try {
        c = a/b
    } catch (e : Exception) {
        println("Exception is handled.")
    } finally {
        println("finally 블록은 반드시 항상 실행됨")
    }
/*
Exception is handled.
finally 블록은 반드시 항상 실행됨
 */
    try {
        c = a/b
    } catch (e : ArithmeticException) {
        println("Exception is handled. ${e.message}")
    } finally {
        println("finally 블록은 반드시 항상 실행됨")
    }
/*
Exception is handled. / by zero
finally 블록은 반드시 항상 실행됨
 */
    try {
        c = a/b
    } catch (e : Exception) {
        e.printStackTrace()
    } finally {
        println("finally 블록은 반드시 항상 실행됨")
    }
/*
finally 블록은 반드시 항상 실행됨
java.lang.ArithmeticException: / by zero
	at com.example.test3.TryCatchKt.main(TryCatch.kt:28)
	at com.example.test3.TryCatchKt.main(TryCatch.kt)
 */
}
