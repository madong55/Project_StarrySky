package kr.co.starrysky.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
