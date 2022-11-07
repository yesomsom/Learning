package com.example.test4

class GenericNull<T> {
    fun EqualityFunc(arg1:T, arg2:T) {
        println(arg1?.equals(arg2))
    }
}
fun main(args:Array<String>) {

    val obj = GenericNull<String>()
    obj.EqualityFunc("Hello", "World") //false
    obj.EqualityFunc("a","a") //true

    val obj2 = GenericNull<Int?>()
    obj2.EqualityFunc(null, 10) //null
    obj2.EqualityFunc(5,5) //true
}