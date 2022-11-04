package com.example.test4
/* 단일 인스턴스로 객체 생성 */
abstract class Printer {
    abstract fun print()
}

val myPrinter = object : Printer() {
    override fun print() {
        println("출력합니다.")
    }
}
fun main() {
    myPrinter.print()
}

/*
출력합니다.
 */