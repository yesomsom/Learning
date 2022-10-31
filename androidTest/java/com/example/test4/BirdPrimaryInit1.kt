package com.example.test4

class Bird5(var name5: String, var wing5: Int, var beak5: String, var color5: String) {
    fun fly5() = println("Fly wing5: $wing5")
    fun sing5(vol5: Int) = println("Sing vol5: $vol5")
}

fun main() {
    val coco5 = Bird5("bird" ,11, "long", "orange")
    println("coco5.name5: ${coco5.name5}, coco5.wing5: ${coco5.wing5}")
    println("coco5.color5: ${coco5.color5}, coco5.beak5: ${coco5.beak5}")
}

/*
coco5.name5: bird, coco5.wing5: 11
coco5.color5: orange, coco5.beak5: long
 */