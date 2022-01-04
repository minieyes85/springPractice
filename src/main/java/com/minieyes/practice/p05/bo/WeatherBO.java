package com.minieyes.practice.p05.bo;

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

}
