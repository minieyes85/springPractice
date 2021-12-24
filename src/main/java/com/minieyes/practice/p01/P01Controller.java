package com.minieyes.practice.p01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/practice01/01")
@RestController
public class P01Controller {
	
	@RequestMapping("/01")
	public String printString() {
		return "To making test project is success.";
	}
	
	@RequestMapping("/02")
	public Map<String, Integer> printMap() {
		Map<String, Integer> map = new HashMap<>();
		map.put("국어", 80);
		map.put("수학", 90);
		map.put("영어", 85);
		
		return map;
	}

}
