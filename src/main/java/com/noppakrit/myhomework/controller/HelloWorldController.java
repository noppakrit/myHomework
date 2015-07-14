package com.noppakrit.myhomework.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {

	@RequestMapping("/helloWorld.do")
	public String todoList(Model model) {
		model.addAttribute("groupId","com.noppakrit");
		model.addAttribute("artifactId","myHomework");
		return "/helloWorld";
	}
}
