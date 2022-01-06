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
	
	@RequestMapping("/01")
	public String practice01() {
		return "/practice06/01";
	}
	
	@RequestMapping("/add")
	public int addFavorite() {
		
		return 1;
	}

}
