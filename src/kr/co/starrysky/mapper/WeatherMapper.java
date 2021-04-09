package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.starrysky.beans.StarIndicatorBean;
import kr.co.starrysky.beans.WeatherBean;
import kr.co.starrysky.beans.WeatherStarBean;

public interface WeatherMapper {

	@Select("select location1_id from location1")
	List<String> location1_list();
	
	@Select("select location2_id from location2")
	List<String> location2_list();
	
	@Insert("INSERT INTO weather(location1_id, location2_id, forecast_date, icon, icon_phrase, headline, cloud_cover, sun_rise, sun_set, moon_rise, moon_set, moon_age, short_phrase, long_phrase, air_quality_value, tem_min_value, tem_max_value, rain_probability, rain_value, rain_unit, rain_unit_type, rain_precipitation_exist, hour_of_rain, snow_probability, snow_value, snow_unit, snow_unit_type, hour_of_snow, wind_speed_value, wind_speed_unit, wind_speed_unit_type) "
			+ " VALUES (#{location1_id}, #{location2_id}, #{forecast_date}, #{icon}, #{icon_phrase}, #{headline}, #{cloud_cover}, #{sun_rise}, #{sun_set}, #{moon_rise}, #{moon_set}, #{moon_age}, #{short_phrase}, #{long_phrase}, #{air_quality_value}, #{tem_min_value}, #{tem_max_value}, #{rain_probability}, #{rain_value}, #{rain_unit}, #{rain_unit_type}, #{rain_precipitation_exist}, #{hour_of_rain}, #{snow_probability}, #{snow_value}, #{snow_unit}, #{snow_unit_type}, #{hour_of_snow}, #{wind_speed_value}, #{wind_speed_unit}, #{wind_speed_unit_type})")
	void insertWeatherBean(WeatherBean bean);
	
	@Update("UPDATE weather set icon=#{icon}, icon_phrase=#{icon_phrase}, headline=#{headline}, cloud_cover=#{cloud_cover}, sun_rise=#{sun_rise}, sun_set=#{sun_set}, moon_rise=#{moon_rise}, moon_set=#{moon_set}, moon_age=#{moon_age}, short_phrase=#{short_phrase}, long_phrase=#{long_phrase}, air_quality_value=#{air_quality_value}, tem_min_value=#{tem_min_value}, tem_max_value=#{tem_max_value}, rain_probability=#{rain_probability}, rain_value=#{rain_value}, rain_unit=#{rain_unit}, rain_unit_type=#{rain_unit_type}, rain_precipitation_exist=#{rain_precipitation_exist}, hour_of_rain=#{hour_of_rain}, snow_probability=#{snow_probability}, snow_value=#{snow_value}, snow_unit=#{snow_unit}, snow_unit_type=#{snow_unit_type}, hour_of_snow=#{hour_of_snow}, wind_speed_value=#{wind_speed_value}, wind_speed_unit=#{wind_speed_unit}, wind_speed_unit_type=#{wind_speed_unit_type}"
			+ " where location1_id=#{location1_id} and location2_id=#{location2_id} and forecast_date=#{forecast_date}") 
	void updateWeatherBean(WeatherBean bean);

	@Select("select * from weather where location1_id=#{location1_id} and forecast_date=#{forecast_date}")
	WeatherBean getWeatherOfLocation1(@Param("location1_id")String location1_id, @Param("forecast_date")String forecast_date);
	
	@Select("select * from weather where location2_id=#{location2_id} and forecast_date=#{forecast_date}")
	WeatherBean getWeatherOfLocation2(@Param("location2_id")String location2_id, @Param("forecast_date")String forecast_date);
	
	@Insert("insert into star_indicator(location1_id, location2_id, forecast_date, star_indicator_data)"
			+" values(#{location1_id}, #{location2_id}, #{forecast_date}, #{star_indicator_data})")
	void insertStarIndicator(StarIndicatorBean bean);
	
	@Update("UPDATE star_indicator set star_indicator_data=#{star_indicator_data} where location1_id=#{location1_id} and location2_id=#{location2_id} and forecast_date=#{forecast_date}")
	void updateStarIndicator(StarIndicatorBean bean);
	
	@Select("select * from (select * from weather where location2_id=#{location2_id} and location1_id=#{location1_id} order by forecast_date desc) a1, star_indicator"
			+ " where rownum<=5 and star_indicator.forecast_date=a1.forecast_date and star_indicator.location1_id=a1.location1_id and star_indicator.location2_id=a1.location2_id"
			+ " order by star_indicator.forecast_date")
	List<WeatherStarBean> getRecent5Forecast(@Param("location2_id")String location2_id, @Param("location1_id")String location1_id);
}
