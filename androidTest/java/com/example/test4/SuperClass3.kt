package com.example.test4

open class Bird10 (var name10:String, var wing10:Int, var beak10:String, var color10:String) {
    fun fly10() = println("Fly wing10: $wing10")
    open fun sing10(vol10:Int) = println("Sing10 vol10:$vol10")
}
class Parrot10(name10: String,wing10: Int,beak10: String,color10: String, var language10:String = "natural") : Bird10(name10, wing10, beak10, color10) {
    fun speak10() = println("Speak! $language10")
    override fun sing10(vol10: Int) {
        super.sing10(vol10)
        println("I'm a parrot! The volume level is $vol10")
        speak10()
    }
}

fun main() {
    val  parrot10 = Parrot10("lee", 4, "long", "orange")
    parrot10.sing10(5)
}
/*
Sing10 vol10:5
I'm a parrot! The volume level is 5
Speak! natural
 */