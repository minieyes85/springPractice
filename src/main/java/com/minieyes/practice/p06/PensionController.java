package com.minieyes.practice.p06;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pension")
public class PensionController {
	
	@RequestMapping("/main")
	public String main() {
		return "/practice06/total/mainpage";
	}
	
}
