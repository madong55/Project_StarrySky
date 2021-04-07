package kr.co.starrysky.beans;

import java.sql.Date;

public class WeatherKey {
	
	private int location1_key;
	private int location2_key;
	private Date forecast_date;
	
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
