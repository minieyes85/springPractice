package com.minieyes.practice.p05;

import java.util.ArrayList;
import java.util.List;

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
	
	@RequestMapping("/02")
	public String practice02(Model model) {
		
		List<String> musicRanking = new ArrayList<>();
		musicRanking.add("강남스타일");
		musicRanking.add("벚꽃엔딩");
		musicRanking.add("좋은날");
		musicRanking.add("거짓말");
		musicRanking.add("보고싶다");
		
		model.addAttribute("musicRanking", musicRanking);
		
		return "/practice05/02";
	}
}
