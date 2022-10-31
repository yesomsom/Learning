package com.example.test4

class Bird4 constructor(_name:String, _wing: Int, _beak: String, _color:String) {
    var name4: String = _name
    var wing4: Int = _wing
    var beak4: String = _beak
    var color4: String = _color

    fun fly4() = println("Fly wing4: $wing4")
    fun sing4(vol4: Int) = println("sing vol4: $vol4")
}

fun main() {
    var cocoBird4 = Bird4("Hello", 2, "long", "green")
    println("cocoBird4.name4: ${cocoBird4.name4}")
}

/*
cocoBird4.name4: Hello
 */