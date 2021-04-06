package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface WeatherMapper {

	@Select("select location1_id from location1")
	List<String> location1_list();
	
	@Select("select location2_id from location2")
	List<String> location2_list();
	
	
}
