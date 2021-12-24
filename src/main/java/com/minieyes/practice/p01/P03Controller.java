package com.minieyes.practice.p01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class P03Controller {

	@RequestMapping("/pr01/03")
	public String view() {
		return "practice01/pr03";
	}
	
}
