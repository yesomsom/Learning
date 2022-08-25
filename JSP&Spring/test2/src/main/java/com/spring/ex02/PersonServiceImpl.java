package com.spring.ex02;

public class PersonServiceImpl implements PersonService {
	private String name;
	private int age;
	private String id;
	
	public PersonServiceImpl(String name) {
		this.name = name;
	}
	
	public PersonServiceImpl(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	public PersonServiceImpl(String name, int age, String id) {
		this.name = name;
		this.age = age;
		this.id = id;
	}

	@Override
	public void sayHello() {
		System.out.println("name: "+name);
		System.out.println("age: "+age + "살");
		System.out.println("id: "+id);
	}
	
	
}
