package com.zjut.map.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *MapController.java
 */
@Controller
@RequestMapping("/map")
public class MapController {
	@RequestMapping("")
	public String mapNav(){
		return "content/mapnav";
	}
}
