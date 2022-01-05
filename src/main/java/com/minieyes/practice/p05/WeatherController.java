package com.minieyes.practice.p05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.minieyes.practice.p05.bo.WeatherBO;
import com.minieyes.practice.p05.model.WeatherHistory;

@Controller
@RequestMapping("/p05")
public class WeatherController {
	
	@Autowired
	private WeatherBO weatherBO;
	
	@RequestMapping("/05")
	public String weatherInfo(Model model) {
		
		model.addAttribute("weatherHistory", weatherBO.getWeatherHistory());
		
		return "/practice05/05/weatherInfo";
	}
	
	@RequestMapping("/05_add")
	public String weatherAddPage() {		
		
		return "/practice05/05/weatherAdd";
	}
	
	@RequestMapping("/05_add.do")
	public String weatherAdd(@ModelAttribute WeatherHistory inputWeather,
			@RequestParam (value="dateString" , required=true) String dateStr) {		
		
		weatherBO.addWeatherHistory(inputWeather, dateStr);
		
		return "redirect:/p05/05";
	}
	
	
}
