package com.example.test4

/*
by lazy로 선언된 객체 지연 초기화
 */
class Person6(val name: String, val age: Int)
fun main() {
    var isPersonInstantiated: Boolean = false

    val person6 : Person6 by lazy {
        isPersonInstantiated = true
        Person6("Kim", 23)
    }
    val personDelegate = lazy { Person6("Hong", 40) }

    println("Person Init: $isPersonInstantiated")
    println("personDelegate Init: ${personDelegate.isInitialized()}")
    println("person6.name = ${person6.name}")
    println("personDelegate.value.name = ${personDelegate.value.name}")
    println("person Init: $isPersonInstantiated")
    println("personDelegate Init: ${personDelegate.isInitialized()}")
}

/*
Person Init: false
personDelegate Init: false
person6.name = Kim
personDelegate.value.name = Hong
person Init: true
personDelegate Init: true
 */