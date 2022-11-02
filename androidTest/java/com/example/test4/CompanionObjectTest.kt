package com.example.test4
/*
컴패니언 companion 객체 사용
 */
class Person7 {
    var id:Int = 0
    var name:String = "Youngdeok"
    companion object {
        var language: String = "Korean"
        fun work() {
            println("working...")
        }
    }
}
fun main() {
    println(Person7.language)
    Person7.language = "English"
    println(Person7.language)
    Person7.work()
}