package com.example.test4

/*fun <T> add(a:T, b:T):T {
    return a+b
}*/

fun <T> add(a:T, b:T, op: (T,T) -> T):T {
    return op(a,b)
}
fun main() {
    val result = add(2,3,{a,b->a+b})
/*    val result1 = add<Int>(2,3)*/
    println(result)
/*    println(result1)*/
}
