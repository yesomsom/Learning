package com.example.test4

class Patient(val name: String) {
    fun doctorList(d:Doctor) {
        println("Patient: $name, Doctor: ${d.name}")
    }
}

class Doctor(val name: String) {
    fun patientList(p: Patient) {
        println("Doctor: $name, Patient: ${p.name}")
    }
}

fun main() {
    val doc1 = Doctor("Kim")
    val patient1 = Patient("kildong")
    doc1.patientList(patient1)
    patient1.doctorList(doc1)
}

/*
Doctor: Kim, Patient: kildong
Patient: kildong, Doctor: Kim
 */