package com.example.test4

class Smartphone(val model2:String) {
    private val cpu = "Exynos"
    inner class ExternalStorage(val size: Int) {
        fun getInfo() = "${model2}: Installed on $cpu with ${size}Gb"
    }

    fun powerOn(): String {
        class Led(val color:String) {
            fun blink():String = "Blinking $color on $model2"
        }
        val powerStatus = Led("Red")
        return powerStatus.blink()
    }
}
fun main() {
    val mySdcard = Smartphone("S7").ExternalStorage(32)
    println(mySdcard.getInfo())
    println(mySdcard.size)

    val myphone = Smartphone("Note10")
    myphone.ExternalStorage(128)
    println(myphone.powerOn())
}
/*
S7: Installed on Exynos with 32Gb
32
Blinking Red on Note10
 */