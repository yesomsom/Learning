package com.example.test4

class Calc4<T: Number> {
    fun plus(arg1:T,arg2:T):Double {
        return arg1.toDouble() + arg2.toDouble()
    }
}
fun main(args: Array<String>) {
    val calc = Calc4<Int>()
    println(calc.plus(10,20)) //30.0
    
    val calc2 = Calc4<Double>()
    val calc3 = Calc4<Long>()
/*    val calc4 = Calc4<String>() // 제한된 자료형으로 인해 오류 발생 */
    
    println(calc2.plus(2.5,3.5)) //6.0
    println(calc3.plus(5L, 10L)) //15.0
}