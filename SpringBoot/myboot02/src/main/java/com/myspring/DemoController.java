package com.myspring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DemoController {
	@ResponseBody
	@RequestMapping("/")
	public String home() {
		System.out.println("Hello Boot!!");
		return "Hello Boot!!";
	}
	
	@RequestMapping("/songyudong.do")
	public String hello(Model model) {
		System.out.println("안녕하세요");
		model.addAttribute("message","hello.JSP입니다.!");
		return "hello";
	}
	
	/*
	 * @RequestMapping("/hello.do") public String hello(Model model) {
	 * System.out.println("�븞�뀞�븯�꽭�슂"); model.addAttribute("message","hello.html�엯�땲�떎.!");
	 * return "hello"; }
	 */
}
