package kr.co.starrysky.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.starrysky.beans.StarIndicatorBean;
import kr.co.starrysky.beans.WeatherBean;
import kr.co.starrysky.mapper.WeatherMapper;

@Repository
public class WeatherDao {

	@Autowired
	private WeatherMapper weatherMapper;
	
	public List<String> location1_list(){
		return weatherMapper.location1_list();
	}
	
	public List<String> location2_list(){
		return weatherMapper.location2_list();
	}
	
	public void insertWeatherBean(WeatherBean bean) {
		weatherMapper.insertWeatherBean(bean);
	}
	
	public void updateWeatherBean(WeatherBean bean) {
		weatherMapper.updateWeatherBean(bean);
	}
	
	
	public WeatherBean getWeatherOfLocation1(String location1_id, String forecast_date) {
		return weatherMapper.getWeatherOfLocation1(location1_id, forecast_date);
	}
	
	
	public WeatherBean getWeatherOfLocation2(String location2_id, String forecast_date) {
		return weatherMapper.getWeatherOfLocation2(location2_id, forecast_date);
	}
	
	public void insertStarIndicator(StarIndicatorBean bean) {
		weatherMapper.insertStarIndicator(bean);
	}
	
	public void updateStarIndicator(String star_indicator_data) {
		weatherMapper.updateStarIndicator(star_indicator_data);
	}
	
}
