package com.example.test4

/* 호출 연산자 (함수 호출을 돕는데 사용) */
class Manager {
    operator fun invoke(value: String) {
        println(value)
    }
}
fun main() {
    val manager = Manager()
    manager("Do something for me!")
}

/*
Do something for me!
 */