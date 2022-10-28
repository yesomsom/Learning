package com.example.test3

fun main() {
    retFunc1()
    retFunc2()
    retFunc3()
}

fun inlineLambda1(a: Int, b: Int, out: (Int, Int) -> Unit) {
    out(a, b)
}

//암묵적 라벨
fun retFunc1() {
    println("start of retFunc1")
    inlineLambda1(13,3) { a,b ->
        val result = a+b
        if(result > 10) return@inlineLambda1
        println("result: $result")
    }
    println("end of retFunc1")
}

//람다식에서 라벨 사용
fun retFunc2() {
    println("start of retFunc2")
    inlineLambda1(13,3) lit@{a,b ->
        val result = a+b
        if(result>10) return@lit
        println("result: $result")
    }
    println("end of retFunc2")
}

// 익명 함수의 사용
fun retFunc3() {
    println("start of retFunc3")
    inlineLambda1(13,3,fun(a,b) {
        val result = a+b
        if(result > 10) return
        println("result: $result")
    })
    println("end of retFunc3")
}

/*
start of retFunc1
end of retFunc1
start of retFunc2
end of retFunc2
start of retFunc3
end of retFunc3
 */