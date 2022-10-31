package com.example.test4

open class Bird8(var name8: String, var wing8: Int, var beak8: String, var color8: String) {
    fun fly8() = println("Fly wing8: $wing8")
    fun sing8(vol8: Int) = println("Sing vol: $vol8")
}

class Lark(name8: String, wing8: Int, beak8: String, color8: String) : Bird8(name8, wing8, beak8, color8) {
    fun singHitone() = println("Happy Song!")
}

class Parrot : Bird8 {
    val language8: String

    constructor(name8: String, wing8: Int, beak8: String, color8: String, language8: String) : super (name8, wing8, beak8, color8) {
        this.language8 = language8
    }
    fun speak8() = println("Speak! $language8")
}

fun main() {
    val coco8 = Bird8("myBird", 2, "short", "blue")
    val lark8 = Lark("myLark", 4,"long", "brown")
    val parrot8 = Parrot("myParrot", 2, "too short", "multiple", "korean")

    println("coco8: ${coco8.name8}, ${coco8.wing8}, ${coco8.beak8}, ${coco8.color8}")
    println("Lark: ${lark8.name8}, ${lark8.wing8}, ${lark8.beak8}, ${lark8.color8}")
    println("Parrot: ${parrot8.name8}, ${parrot8.wing8}, ${parrot8.beak8}, ${parrot8.color8}, ${parrot8.language8}")

    lark8.singHitone()
    parrot8.speak8()
    lark8.fly8()
}
/*
coco8: myBird, 2, short, blue
Lark: myLark, 4, long, brown
Parrot: myParrot, 2, too short, multiple, korean
Happy Song!
Speak! korean
Fly wing8: 4
 */