package com.example.test4

class Smartphone(val model2:String) {
    private val cpu = "Exynos"
    inner class ExternalStorage(val size: Int) {
        fun getInfo() = "${model2}: Installed on $cpu with ${size}Gb"
    }
}
fun main() {
    val mySdcard = Smartphone("S7").ExternalStorage(32)
    println(mySdcard.getInfo())
    println(mySdcard.size)
}
/*
S7: Installed on Exynos with 32Gb
32
 */