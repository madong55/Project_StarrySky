package kr.co.starrysky.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
