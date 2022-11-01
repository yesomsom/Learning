package com.example.test4

open class Base2 {
    private val a = 1
    protected open val b = 2
    internal val c = 3
    val d = 4
    protected class Nested {
        public val e: Int = 5
        private val f: Int = 6
    }
}
class Derived : Base2() {
    override val b = 5
}
class Other2(base2: Base2) {

}

fun main() {
    var base2 = Base2();
    println("${base2.c}") //3
    println("${base2.d}") //4
}