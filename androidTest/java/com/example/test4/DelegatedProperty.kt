package com.example.test4
import kotlin.properties.Delegates
/*
observable의 간단한 사용의 예
 */
class User5 {
    var name: String by Delegates.observable("NONAME") {
        prop, old, new ->
        println("$old -> $new")
    }
}
fun main() {
    val user5 = User5()
    user5.name = "kim"
    user5.name = "Doo"
}