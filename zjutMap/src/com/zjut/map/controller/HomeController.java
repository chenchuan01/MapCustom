package com.zjut.map.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *HomeController.java
 */
@Controller
@RequestMapping("/home")
public class HomeController {
	@RequestMapping({"","/nav"})
	public String home(){
		return "home";
	}
}
