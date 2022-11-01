package com.example.test4

open class Bird9(var name9:String, var wing9:Int, var beak9:String, var color9:String) {
    fun fly9() = println("Fly wing9: $wing9")
    open fun sing9(vol9:Int) = println("Sing9 vol9:$vol9")
}
class Parrot9(name9: String, wing9: Int=2, beak9: String,color9: String,var language9:String="natural") :Bird9(name9, wing9, beak9, color9) {
    fun speak9() = println("Speak! $language9")
    override fun sing9(vol9: Int) {
        println("I'm a parrot! The volume level is $vol9")
        speak9()
    }
}
fun main() {
    val parrot9 = Parrot9(name9 = "myParrot", beak9 = "short", color9 = "multiple")
    parrot9.language9 = "English"
    println("Parrot9: ${parrot9.name9}, ${parrot9.wing9}, ${parrot9.beak9}, ${parrot9.color9}, ${parrot9.language9}")
    parrot9.sing9(9)
}

/*
Parrot9: myParrot, 2, short, multiple, English
I'm a parrot! The volume level is 9
Speak! English
 */