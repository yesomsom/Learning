package com.example.test4

import java.lang.AssertionError

/*
임시적인 보조 프로퍼티
 */
class User4(_id:Int, _name:String, _age:Int) {
    val id: Int = _id
    private var tempName: String? = null
    var name: String = _name
        get() {
            if(tempName == null) tempName = "NONAME"
            return tempName ?: throw AssertionError("Asserted by others")
        }
    var age: Int = _age
}
fun main() {
    val user4 = User4(1, "kim", 35)
    user4.name = ""
    println("user4.name = ${user4.name}")
}

/*
user4.name = NONAME
 */