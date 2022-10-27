package com.example.test3

fun main() {
    val name ="홍"
    val email = "hong@test.com"

    add(name)
    add(name,email)
    add("둘리","dooly@test.com")
    defaultArgs()
    defaultArgs(200)
}
fun add(name: String, email: String = "default") {
    val output = "${name}님의 이메일은 ${email}입니다."
    println(output)
}
fun defaultArgs(x: Int = 100, y: Int = 200) {
    println(x+y)
}
/*
홍님의 이메일은 default입니다.
홍님의 이메일은 hong@test.com입니다.
둘리님의 이메일은 dooly@test.com입니다.
300
400
 */