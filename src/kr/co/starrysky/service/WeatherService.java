package kr.co.starrysky.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.starrysky.beans.WeatherBean;
import kr.co.starrysky.dao.WeatherDao;

@Service
public class WeatherService {

	@Autowired
	WeatherDao weatherDao;
	
	public List<String> location1_list(){
		return weatherDao.location1_list();
	}
	
	public List<String> location2_list(){
		return weatherDao.location2_list();
	}
	

	public void insertWeatherBean(WeatherBean bean) {
		weatherDao.insertWeatherBean(bean);
	}
	
	public void updateWeatherBean(WeatherBean bean) {
		weatherDao.updateWeatherBean(bean);
	}
	
	public WeatherBean getWeatherOfLocation1(String location1_id, String forecast_date) {
		return weatherDao.getWeatherOfLocation1(location1_id, forecast_date);
	}
	
	public WeatherBean getWeatherOfLocation2(String location2_id, String forecast_date) {
		return weatherDao.getWeatherOfLocation2(location2_id, forecast_date);
	}
}


