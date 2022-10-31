package com.example.test4

class Bird2 {
    var name2: String
    var wing2: Int
    var beak2: String
    var color2: String

    constructor(_name:String, _wing:Int, _beak: String, _color:String) {
        name2 = _name
        wing2 = _wing
        beak2 = _beak
        color2 = _color
    }

    fun fly2() = println("Fly wing2: $wing2")
    fun sing2(vol2: Int) = println("Sing vol2: $vol2")
}

fun main() {
    val coco = Bird2("coco", 2, "long", "white")
    println("coco.color2: ${coco.color2}")
    coco.fly2()
    coco.sing2(5)
}

/*
coco.color2: white
Fly wing2: 2
Sing vol2: 5
 */