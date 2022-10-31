package com.example.test4

class Bird6(var name6: String, var wing6: Int, var beak6: String, var color6: String) {
    init {
        println("----------초기화 블록 시작----------")
        println("이름은 $name6, 부리는 $beak6")
        this.sing6(7)
        println("----------초기화 블록 끝 ----------")
    }

    fun fly6() = println("Fly wing6: $wing6")
    fun sing6(vol6: Int) = println("Sing vol6: $vol6")
}

fun main() {
    val coco6 = Bird6("YouBird", 2, "long enough", "pink")
    println("coco6.name6: ${coco6.name6}, coco6.wing6: ${coco6.name6}")
    println("coco6.color6: ${coco6.color6}, coco6.beak6: ${coco6.beak6}")
}

/*
----------초기화 블록 시작----------
이름은 YouBird, 부리는 long enough
Sing vol6: 7
----------초기화 블록 끝 ----------
coco6.name6: YouBird, coco6.wing6: YouBird
coco6.color6: pink, coco6.beak6: long enough
 */