package com.example.test4

class Bird7(var name7: String = "NONAME", var wing7: Int = 2, var beak7: String, var color7: String) {
    fun fly7() = println("Fly wing7: $wing7")
    fun sing7(vol7: Int) = println("Sing vol7: $vol7")
}

fun main() {
    val coco7 = Bird7(beak7 = "long", color7 = "red")

    println("coco7.name7: ${coco7.name7}, coco7.wing7: ${coco7.wing7}")
    println("coco7.color7: ${coco7.color7}, coco7.beak7: ${coco7.beak7}")
    coco7.fly7()
}

/*
coco7.name7: NONAME, coco7.wing7: 2
coco7.color7: red, coco7.beak7: long
Fly wing7: 2
 */