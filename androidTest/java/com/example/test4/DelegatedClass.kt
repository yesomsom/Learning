package com.example.test4
/*
클래스의 위임 사용하기
 */
interface Car1 {
    fun go(): String
}
class VanImpl(val power:String):Car1 {
    override fun go() = "는 짐을 적재하며 $power 의 마력을 가집니다."
}
class SportImpl(val power: String):Car1 {
    override fun go() = "는 경주용에 사용되며 $power 의 마력을 가집니다."
}
class CarModel1(val model: String, impl: Car1): Car1 by impl {
    fun carInfo() {
        println("$model ${go()}")
    }
}
fun main() {
    val myDamas = CarModel1("Damas 2010", VanImpl("100마력"))
    val my350z = CarModel1("350Z 2008",SportImpl("250마력"))

    myDamas.carInfo()
    my350z.carInfo()
}

/*
Damas 2010 는 짐을 적재하며 100마력 의 마력을 가집니다.
350Z 2008 는 경주용에 사용되며 250마력 의 마력을 가집니다.
 */