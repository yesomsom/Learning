package com.example.test4

open class Parent2
class Child2:Parent2()
class Cup<T>
fun main() {
    val obj1:Parent2 = Child2()
/*    val obj2: Child2 = Parent2() // 에러! 하위 형식인 Child의 객체 obj2는 Parent로 변환되지 않음
    val obj3: Cup<Parent2> = Cup<Child2>() // 에러! 자료형 형식이 일치하지 않음
    val obj4: Cup<Child2> = Cup<Parent2>() // 에러! 자료형 형식이 일치하지 않음*/

    val obj3: Cup<Parent2> = Cup<Parent2>()
    val obj4: Cup<Child2> = Cup<Child2>()
    val obj5 = Cup<Child2>()
    val obj6:Cup<Child2> = obj5
}
