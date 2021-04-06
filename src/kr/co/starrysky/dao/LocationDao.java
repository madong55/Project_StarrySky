package kr.co.starrysky.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.starrysky.beans.Location1Bean;
import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.mapper.LocationMapper;
import kr.co.starrysky.mapper.WeatherMapper;

@Repository
public class LocationDao {

	@Autowired
	private LocationMapper locationMapper;

	
	public Location2Bean expandLocationKey(String location2_id){
		return locationMapper.expandLocationKey(location2_id);
	}
	
	public Location1Bean getLocation1Data(String location1_id) {
		return locationMapper.getLocation1Data(location1_id);
	}
	
	public String location1IdSearch(String location_id) {
		return locationMapper.location1IdSearch(location_id);
	}
	
	public String location2IdSearch(String location_id) {
		return locationMapper.location2IdSearch(location_id);
	}
	
	public List<String> getLocation1List(){
		return locationMapper.getLocation1List();
	}
	
	public List<String> getLocation2List(){
		return locationMapper.getLocation2List();
	}
	
}
