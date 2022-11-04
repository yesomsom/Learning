package com.example.test4

interface Pet2 {
    var category: String
    val msgTags:String
        get() = "I'm your lovely pet!"
    fun feeding()
    fun patting() {
        println("Keep patting!")
    }
}
open class Animal(val name: String)

class Dog2(name: String, override var category: String) : Animal(name), Pet {
    override fun feeding() {
        println("Feed the dog a bone")
    }
}
class Cat2(name: String, override var category: String) : Animal(name), Pet {
    override fun feeding() {
        println("Feed the cat a tuna")
    }
}
class Master2 {
    fun playWithPet(dog2: Dog2) {
        println("Enjoy with my dog, ${dog2.name}.")
    }
    fun playWithPet(cat2: Cat2) {
        println("Enjoy with my cat, ${cat2.name}.")
    }
}
fun main() {
    val master2 = Master2()
    val dog2 = Dog2("Toto", "small")
    val cat2 = Cat2("Coco", "BigFat")

    master2.playWithPet(dog2)
    master2.playWithPet(cat2)
}
/*
Enjoy with my dog, Toto.
Enjoy with my cat, Coco.
 */