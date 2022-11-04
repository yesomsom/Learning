package com.example.test4

fun main() {
    println(cus1 == cus2)
    println(cus1.equals(cus2))
    println("${cus1.hashCode()},${cus2.hashCode()}")
    val cus3=cus1.copy(name = "Alice")
    println(cus1.toString())
    println(cus3.toString())
}
val cus1 = Customer1("Sean", "Sean@email.com")
val cus2 = Customer1("Sean", "Sean@email.com")

data class  Customer1(var name:String, var email:String) {
    var job:String = "Unknown"
    constructor(name:String, email: String, _job:String):this(name, email) {
        job = _job
    }
    init {
    }
}

/*
true
true
-828557041,-828557041
Customer1(name=Sean, email=Sean@email.com)
Customer1(name=Alice, email=Sean@email.com)
 */


