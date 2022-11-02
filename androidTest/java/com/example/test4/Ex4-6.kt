package com.example.test4

data class Person3(var name:String, var age:Int)

lateinit var person3: Person3

fun main() {
    person3 = Person3("kil", 20)
    println(person3.name + " is " + person3.age.toString())
    println(person3.name + " is " + person3.age)
}

/*
kil is 20
kil is 20
 */