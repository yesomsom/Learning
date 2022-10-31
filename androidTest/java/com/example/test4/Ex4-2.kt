package com.example.test4

class Bird3 {
    var name3: String
    var wing3: Int
    var beak3: String
    var color3: String

    constructor(name3: String, wing3: Int, beak3: String, color3: String) {
        this.name3 = name3
        this.wing3 = wing3
        this.beak3 = beak3
        this.color3 = color3
    }

    constructor(_name: String, _beak: String) {
        name3 = _name
        wing3 = 2
        beak3 = _beak
        color3 = "grey"
    }
    fun fly3() = println("fly wing3: $wing3")
    fun sing3(vol3:Int) = println("Sing vol3: $vol3")
}

fun main() {
    val cocoBird1 = Bird3("coco", 2, "short", "red")
    val cocoBird2 = Bird3("coco", "long")
    println("cocoBird1.color3: ${cocoBird1.color3}")
    println("cocoBird2.color3: ${cocoBird2.color3}")
    cocoBird1.fly3()
    cocoBird2.fly3()
    cocoBird1.sing3(4)
    cocoBird2.sing3(0)
}
/*
cocoBird1.color3: red
cocoBird2.color3: grey
fly wing3: 2
fly wing3: 2
Sing vol3: 4
Sing vol3: 0
 */