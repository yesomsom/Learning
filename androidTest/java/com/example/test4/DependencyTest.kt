package com.example.test4

class Patient1(val name:String, var id:Int) {
    fun doctorList1(d: Doctor1) {
        println("Patient: $name, Doctor: ${d.name}")
    }
}
class Doctor1(val name:String, val p: Patient1) {
    val customerId1: Int = p.id

    fun patientList1() {
        println("Doctor1: $name, Patient1: ${p.name}")
        println("Patient1 Id: $customerId1")
    }
}
fun main() {
    val patient1 = Patient1("kim", 123)
    val doctor1 = Doctor1("joung", patient1)
    doctor1.patientList1()
}

/*
Doctor1: joung, Patient1: kim
Patient1 Id: 123
 */