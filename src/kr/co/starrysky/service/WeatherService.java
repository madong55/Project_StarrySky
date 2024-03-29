package kr.co.starrysky.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.starrysky.beans.StarIndicatorBean;
import kr.co.starrysky.beans.WeatherBean;
import kr.co.starrysky.beans.WeatherStarBean;
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
	
	public void insertStarIndicator(StarIndicatorBean bean) {
		weatherDao.insertStarIndicator(bean);
	}
	
	public void updateStarIndicator(StarIndicatorBean bean) {
		weatherDao.updateStarIndicator(bean);
	}
	
	public List<WeatherStarBean> getRecent5Forecast(String location2_id, String location1_id){
		return weatherDao.getRecent5Forecast(location2_id, location1_id);
	}
}


