package com.minieyes.practice.p05.bo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minieyes.practice.p05.dao.WeatherDAO;
import com.minieyes.practice.p05.model.WeatherHistory;

@Service
public class WeatherBO {
	
	@Autowired
	private WeatherDAO weatherDAO;
	
	public List<WeatherHistory> getWeatherHistory() {
		return weatherDAO.selectWeatherHistory();
	}
	
	public int addWeatherHistory(WeatherHistory inputWeather, String dateStr) {
		
		Date date = new Date();
		try {
			date = new SimpleDateFormat("yyyy-MM-dd").parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}  
		inputWeather.setDate(date);
		
		return weatherDAO.insertWeatherHistory(inputWeather);
	}

}
