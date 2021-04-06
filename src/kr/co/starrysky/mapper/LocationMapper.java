package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.starrysky.beans.Location2Bean;

public interface LocationMapper {

	@Select("select * from location2 where location2_id=#{location2_id}")
	Location2Bean expandLocationKey(String location2_id);
	
	
	//불리언 체크용(존재 확인용) 
	@Select("select location1_id from location1 where location1_id=#{location_id}")
	String location1IdSearch(String location_id);
	
	//불리언 체크용(존재 확인용)
	@Select("select location2_id from location2 where location2_id=#{location_id}")
	String location2IdSearch(String location_id);
}
