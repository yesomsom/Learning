package com.example.test4

fun <T> find(a:Array<T>, Target:T):Int {
    for(i in a.indices) {
        if(a[i] == Target) return i
    }
    return  -1
}
fun main() {
    val arr1:Array<String> = arrayOf("Apple", "Banana", "Cherry", "Durian")
    val arr2:Array<Int> = arrayOf(1,2,3,4,5,6,7)

    println("arr1.indices ${arr1.indices}") // arr1.indices 0..3
    println("arr2.indices ${arr2.indices}") //arr2.indices 0..6
    println(find<String>(arr1, "Cherry")) //2
    println(find(arr2,2)) //1
}