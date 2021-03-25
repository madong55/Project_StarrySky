package kr.co.starrysky.beans;

import java.sql.Date;

public class WeatherBean {

	private int location1_key;
	private int location2_key;
	private Date forecast_date;
	
	//WeatherData
	private String headline; // 5일간의 날씨중에 중요한 사건을 나타내는 헤드라인
	
	private int cloud_cover;  // 구름양
	
	private String sun_rise; // 일출 시간
	private String sun_set;  // 일몰 시간
	
	private String moon_rise; // 달 뜨는 시간
	private String moon_set;  // 달 지는 시간
	private int moon_age; 	  // 월령
	
	private String short_phrase; // 날씨 정보 간략하게 나오는
	private String long_phrase;  // 날씨 정보 길게
	
	private int air_and_pollen_category_value; // 꽃가루, 대기오염 물질정도 -> 숫자로
	
	private double tem_min_value; // 온도 최소값
	private double tem_max_value; // 온도 최대값
	
	//RainData
	private int rain_probability; // 비 올 확률
	private double rain_value;	 // 강수량
	private String rain_unit; 	// 강수량 단위
	private int rain_unit_type; // 강수량 단위 타입
	
	private boolean rain_precipitation_exist; // 강수량 있으면 true
	private String rain_precipitation_intensity; // 강수량 있을때만 반환 
	
	private float rain_per_hour; // 비가 몇 시간 동안 오는지

	//SnowData
	private int snow_probability; // 눈 올 확률
	private double snow_value; // 적설량
	private String snow_unit;  // 적설량 단위
	private int snow_unit_type; // 적설량 단위 타입
	
	private float snow_per_hour; // 눈이 몇시간동안 오는지
	
	//WindData
	private double wind_speed_value; // 바람 세기
	private String wind_speed_unit;  // 바람 단위
	private int wind_speed_unit_type; // 바람 단위 타입
	
	
	public String getHeadline() {
		return headline;
	}
	public void setHeadline(String headline) {
		this.headline = headline;
	}
	public int getCloud_cover() {
		return cloud_cover;
	}
	public void setCloud_cover(int cloud_cover) {
		this.cloud_cover = cloud_cover;
	}
	public String getSun_rise() {
		return sun_rise;
	}
	public void setSun_rise(String sun_rise) {
		this.sun_rise = sun_rise;
	}
	public String getSun_set() {
		return sun_set;
	}
	public void setSun_set(String sun_set) {
		this.sun_set = sun_set;
	}
	public String getMoon_rise() {
		return moon_rise;
	}
	public void setMoon_rise(String moon_rise) {
		this.moon_rise = moon_rise;
	}
	public String getMoon_set() {
		return moon_set;
	}
	public void setMoon_set(String moon_set) {
		this.moon_set = moon_set;
	}
	public int getMoon_age() {
		return moon_age;
	}
	public void setMoon_age(int moon_age) {
		this.moon_age = moon_age;
	}
	public String getShort_phrase() {
		return short_phrase;
	}
	public void setShort_phrase(String short_phrase) {
		this.short_phrase = short_phrase;
	}
	public String getLong_phrase() {
		return long_phrase;
	}
	public void setLong_phrase(String long_phrase) {
		this.long_phrase = long_phrase;
	}
	public int getAir_and_pollen_category_value() {
		return air_and_pollen_category_value;
	}
	public void setAir_and_pollen_category_value(int air_and_pollen_category_value) {
		this.air_and_pollen_category_value = air_and_pollen_category_value;
	}
	public double getTem_min_value() {
		return tem_min_value;
	}
	public void setTem_min_value(double tem_min_value) {
		this.tem_min_value = tem_min_value;
	}
	public double getTem_max_value() {
		return tem_max_value;
	}
	public void setTem_max_value(double tem_max_value) {
		this.tem_max_value = tem_max_value;
	}
	public int getRain_probability() {
		return rain_probability;
	}
	public void setRain_probability(int rain_probability) {
		this.rain_probability = rain_probability;
	}
	public double getRain_value() {
		return rain_value;
	}
	public void setRain_value(double rain_value) {
		this.rain_value = rain_value;
	}
	public String getRain_unit() {
		return rain_unit;
	}
	public void setRain_unit(String rain_unit) {
		this.rain_unit = rain_unit;
	}
	public int getRain_unit_type() {
		return rain_unit_type;
	}
	public void setRain_unit_type(int rain_unit_type) {
		this.rain_unit_type = rain_unit_type;
	}
	public boolean isRain_precipitation_exist() {
		return rain_precipitation_exist;
	}
	public void setRain_precipitation_exist(boolean rain_precipitation_exist) {
		this.rain_precipitation_exist = rain_precipitation_exist;
	}
	public String getRain_precipitation_intensity() {
		return rain_precipitation_intensity;
	}
	public void setRain_precipitation_intensity(String rain_precipitation_intensity) {
		this.rain_precipitation_intensity = rain_precipitation_intensity;
	}
	public float getRain_per_hour() {
		return rain_per_hour;
	}
	public void setRain_per_hour(float rain_per_hour) {
		this.rain_per_hour = rain_per_hour;
	}
	public int getSnow_probability() {
		return snow_probability;
	}
	public void setSnow_probability(int snow_probability) {
		this.snow_probability = snow_probability;
	}
	public double getSnow_value() {
		return snow_value;
	}
	public void setSnow_value(double snow_value) {
		this.snow_value = snow_value;
	}
	public String getSnow_unit() {
		return snow_unit;
	}
	public void setSnow_unit(String snow_unit) {
		this.snow_unit = snow_unit;
	}
	public int getSnow_unit_type() {
		return snow_unit_type;
	}
	public void setSnow_unit_type(int snow_unit_type) {
		this.snow_unit_type = snow_unit_type;
	}
	public float getSnow_per_hour() {
		return snow_per_hour;
	}
	public void setSnow_per_hour(float snow_per_hour) {
		this.snow_per_hour = snow_per_hour;
	}
	public double getWind_speed_value() {
		return wind_speed_value;
	}
	public void setWind_speed_value(double wind_speed_value) {
		this.wind_speed_value = wind_speed_value;
	}
	public String getWind_speed_unit() {
		return wind_speed_unit;
	}
	public void setWind_speed_unit(String wind_speed_unit) {
		this.wind_speed_unit = wind_speed_unit;
	}
	public int getWind_speed_unit_type() {
		return wind_speed_unit_type;
	}
	public void setWind_speed_unit_type(int wind_speed_unit_type) {
		this.wind_speed_unit_type = wind_speed_unit_type;
	}
	public int getLocation1_key() {
		return location1_key;
	}
	public void setLocation1_key(int location1_key) {
		this.location1_key = location1_key;
	}
	public int getLocation2_key() {
		return location2_key;
	}
	public void setLocation2_key(int location2_key) {
		this.location2_key = location2_key;
	}
	public Date getForecast_date() {
		return forecast_date;
	}
	public void setForecast_date(Date forecast_date) {
		this.forecast_date = forecast_date;
	}
	
	
}
