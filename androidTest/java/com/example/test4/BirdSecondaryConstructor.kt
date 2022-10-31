package com.example.test4

fun main() {
    val coco = Bird1("mybird", 2, "short", "blue")
    println("coco.color1: ${coco.color1}")
    println("coco.beak1: ${coco.beak1}")
    coco.fly1()
    coco.sing1(3)
}

class Bird1 {
    var name1: String
    var wing1: Int
    var beak1: String
    var color1: String

    constructor(name1: String, wing1: Int, beak1: String, color1: String) {
        this.name1 = name1
        this.wing1 = wing1
        this.beak1 = beak1
        this.color1 = color1
    }

    fun fly1() = println("Fly wing1: $wing1")
    fun sing1(vol1: Int) = println("Sing vol1: $vol1")

}

/*
coco.color1: blue
coco.beak1: short
Fly wing1: 2
Sing vol1: 3
 */