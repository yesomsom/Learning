package com.example.test4

/*
프로퍼티의 오버라이딩 사용하기
 */
open class First {
    open val x:Int = 0
        get() {
            println("First x")
            return  field
        }
    val y:Int = 0
}
class Second: First() {
    override val x:Int = 0
        get() {
            println("Second x")
            return field + 3
        }
}
fun main() {
    val second = Second()
    println("second.x = "+ second.x)
    println("second.y = "+ second.y)
}

/*
Second x
second.x = 3
second.y = 0
 */