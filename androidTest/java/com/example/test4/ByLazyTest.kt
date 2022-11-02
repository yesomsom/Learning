package com.example.test4
/*
by lazy로 선언된 프로퍼티 지연 초기화하기
 */
class LazyTest {
    init {
        println("init block")
    }
    val subject by lazy {
        println("lazy initialized")
        "Kotlin Programming"
    }
    fun flow() {
        println("not initialized")
        println("subject one: $subject")
        println("subject two: $subject")
    }
}

fun main() {
    val test = LazyTest()
    test.flow()
}
/*
init block
not initialized
lazy initialized
subject one: Kotlin Programming
subject two: Kotlin Programming
 */