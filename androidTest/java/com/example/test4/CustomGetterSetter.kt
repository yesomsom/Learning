package com.example.test4

/*
커스텀 게터와 세터 사용하기
 */
class User3(_id:Int, _name:String, _age:Int) {
    val id:Int = _id
    var name:String = _name
        set(value) {
            println("The name was changed")
            field = value.toUpperCase()
        }
    var age:Int = _age
}
fun main() {
    val user3 = User3(1, "park", 30)
    user3.name = "coco"
    println("user3.name = ${user3.name}")
}

/*
The name was changed
user3.name = COCO
 */