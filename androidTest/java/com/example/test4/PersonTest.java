package com.example.test4;
/*
자바의 Person 클래스와 접근 메서드
 */
public class PersonTest {
    private String name;
    private int age;

    public PersonTest(String name, int age) {
        this.name = name;
        this.age = age;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getAge() {
        return age;
    }
}
