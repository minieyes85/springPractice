package com.minieyes.practice.p05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.minieyes.practice.p05.model.WeatherHistory;

@Repository
public interface WeatherDAO {
	
	public List<WeatherHistory> selectWeatherHistory();
	
	public int insertWeatherHistory(WeatherHistory inputWeather);
	
}
