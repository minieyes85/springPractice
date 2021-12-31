package com.minieyes.practice.p05;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/p05")
public class JSTLController {
	
	@RequestMapping("/01")
	public String practice01() {
		return "/practice05/01";
	}
}
