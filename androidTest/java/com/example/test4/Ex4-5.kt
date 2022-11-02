package com.example.test4

class User1(_id:Int, _name:String, _age:Int) {
    val id:Int = _id
    var name: String = _name
    var age:Int = _age
}
class User2(val id2:Int, var name2:String, var age2:Int)

fun main() {
    val user1 = User1(1, "sea", 30)
    val name1 = user1.name
    user1.age =41

    val user2 = User2(2, "g", 20)
    val name2 = user2.name2

    println("name1: $name1 의 나이는 ${user1.age}")
    println("name2: $name2 의 나이는 ${user2.age2}")
}

/*
name1: sea 의 나이는 41
name2: g 의 나이는 20
 */