package kr.co.starrysky.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.starrysky.beans.Location1Bean;
import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.dao.LocationDao;
import kr.co.starrysky.mapper.LocationMapper;

@Service
public class LocationService {
	@Autowired
	private LocationDao locationDao;

	public Location2Bean expandLocationKey(String location2_id){
		return locationDao.expandLocationKey(location2_id);
	}
	
	public Location1Bean getLocation1Data(String location1_id) {
		return locationDao.getLocation1Data(location1_id);
	}
	
	public String location1IdSearch(String location_id) {
		return locationDao.location1IdSearch(location_id);
	}
	
	public boolean isLocation1Id(String location_id) {
		String checker = locationDao.location1IdSearch(location_id);
		if(checker!=null) {
			return true;
		}
		return false;
	}
	
	public boolean isLocation2Id(String location_id) {
		String checker = locationDao.location2IdSearch(location_id);
		if(checker!=null) {
			return true;
		}
		return false;
	}
	
	public String location2IdSearch(String location_id) {
		
		return locationDao.location2IdSearch(location_id);
	}
	
	public List<String> getLocation1IdList(){
		System.out.println(locationDao.getLocation1List().size());
		return locationDao.getLocation1List();
	}
	
	public List<String> getLocation2IdList(){
		System.out.println(locationDao.getLocation2List().size());
		return locationDao.getLocation2List();
	}
	
	public List<String> getAllLocationIdList(){
		List<String> list = new ArrayList<>();
		
		list.addAll(getLocation1IdList());
		list.addAll(getLocation2IdList());
		
		System.out.println("service list size : "+list.size());
		
		return list;
	}
}
