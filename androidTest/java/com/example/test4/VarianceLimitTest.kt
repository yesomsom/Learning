package com.example.test4

open class Animal3(val size:Int) {
    fun feed() = println("Feeding...")
}
class Cat3(val jump:Int):Animal3(50)
class Spider3(val poison:Boolean):Animal3(1)

// 형식 매개변수를 Animal로 제한
class Box3<out T:Animal3>(val element: T) {
    fun getAnimal3():T = element
}

fun main() {
    // 일반적인 객체 선언
    val c1:Cat3 = Cat3(10)
    val s1:Spider3 = Spider3(true)
    
    // 클래스의 상위 자료형 변환은 문제 없음
    var a1:Animal3 = c1
    a1 = s1
    println("a1.size = ${a1.size}")
    
    // 공변성 - Cat은 Animal의 하위 자료형
    val c2:Box3<Animal3> = Box3<Cat3>(Cat3(10))
    println("c2.element.size = ${c2.element.size}")
    
    // 반공변성 불가
/*    val c3: Box3<Cat3> = Box3<Animal3>(10)*/
    
    // 자료형이 제한되어 Animal과 하위 클래스 이외에는 사용 불가
/*    val c4: Box<Any> = Box<Int>(10)*/
}