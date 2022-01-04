package com.minieyes.practice.p05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.minieyes.practice.p05.bo.WeatherBO;

@Controller
@RequestMapping("/p05")
public class WeatherController {
	
	@Autowired
	private WeatherBO weatherBO;
	
	@RequestMapping("/05")
	public String weather(Model model) {
		
		model.addAttribute("weatherHistory", weatherBO.getWeatherHistory());
		
		return "/practice05/05/weatherInfo";
	}
}
