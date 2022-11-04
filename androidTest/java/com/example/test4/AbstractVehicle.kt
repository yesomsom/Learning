package com.example.test4
/* 추상 클래스 Vehicle 사용 */
abstract class Vehicle(val name: String, val color: String, val weight:Double) {
    abstract var maxSpeed: Double
    var year = "2018"
    abstract fun start()
    abstract fun stop()
    fun displaySpecs() {
        println("Name: $name, Color: $color, Weight: $weight, Year: $year, Max Speed: $maxSpeed")
    }
}
class Car2(name: String, color: String, weight: Double, override var maxSpeed: Double)
    :Vehicle(name, color, weight) {
    override fun start() {
        println("Car2 Started")
    }
    override fun stop() {
        println("Car2 Stopped")
    }
}
class Motorcycle(name: String, color: String, weight: Double, override var maxSpeed: Double)
    :Vehicle(name, color, weight) {
        override fun start() {
            println("Bike Started")
        }
        override fun stop() {
            println("Bike Stopped")
        }
    }
fun main() {
    val car2 =Car2("SuperMatiz", "yellow", 1110.0, 270.0)
    val motor = Motorcycle("DreamBike","red", 173.0, 100.0)
    car2.year = "2022"

    car2.displaySpecs()
    car2.start()
    motor.displaySpecs()
    motor.start()
}

/*
Name: SuperMatiz, Color: yellow, Weight: 1110.0, Year: 2022, Max Speed: 270.0
Car2 Started
Name: DreamBike, Color: red, Weight: 173.0, Year: 2018, Max Speed: 100.0
Bike Started
 */
