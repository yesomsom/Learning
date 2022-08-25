package com.spring.ex04;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class LazyTest {

	public static void main(String[] args) {
		ApplicationContext context = new FileSystemXmlApplicationContext("lazy.xml");
		System.out.println("Bean 얻기");
		context.getBean("thirdBean");
		context.getBean("secondBean");
		context.getBean("firstBean");
	}
}
