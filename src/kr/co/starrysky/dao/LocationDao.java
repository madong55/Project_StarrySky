package kr.co.starrysky.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.mapper.LocationMapper;
import kr.co.starrysky.mapper.WeatherMapper;

@Repository
public class LocationDao {

	@Autowired
	private LocationMapper locationMapper;

	
	Location2Bean expandLocationKey(String location2_id){
		return locationMapper.expandLocationKey(location2_id);
	}
	
	String location1IdSearch(String location_id) {
		return locationMapper.location1IdSearch(location_id);
	}
	
	String location2IdSearch(String location_id) {
		return locationMapper.location2IdSearch(location_id);
	}
	
}
