package com.example.test3

import java.lang.Exception

class InvalidNameException(message: String) : Exception(message)

fun main() {
    var name = "kildong12"
    try {
        validateName(name)
    } catch (e : InvalidNameException) {
        println(e.message)
    } catch (e : Exception) {
        println(e.message)
    }
}
fun validateName(name : String) {
    if(name.matches(Regex(".*\\d+.*"))) {
        throw InvalidNameException("Your name : $name : contains numerals.")
    }
}
/*
Your name : kildong12 : contains numerals.
 */