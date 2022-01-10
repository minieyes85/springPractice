package com.minieyes.practice.p06;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/p06")
public class AjaxController {
	
	@RequestMapping("/test")
	public String ajaxTest() {
		
		return "/practice06/ajaxTest";
	}

}
