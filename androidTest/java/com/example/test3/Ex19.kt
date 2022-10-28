package com.example.test3

fun main() {
    var map = mapOf<String, String>(Pair("one", "hello"), "two" to "world")
    var mutableMap = mutableMapOf<String, String>(Pair("1","1"))
    mutableMap.set("2","2")
    mutableMap.set("3","3")
    println(
        """
            map size : ${map.size}
            map data : ${map.get("one")}, ${map.get("two")}
        """.trimIndent()
    )
    println(
        """
            map size : ${mutableMap.size}
            map data : ${mutableMap.get("1")}, ${mutableMap.get("2")}, ${mutableMap.get("3")}
        """.trimIndent()
    )
}
/*
map size : 2
map data : hello, world
map size : 3
map data : 1, 2, 3
 */