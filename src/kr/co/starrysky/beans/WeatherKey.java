package kr.co.starrysky.beans;

import java.sql.Date;

public class WeatherKey {
	
	private int location_key;
	private Date forecast_date;
	
	public int getLocation_key() {
		return location_key;
	}
	public void setLocation_key(int location_key) {
		this.location_key = location_key;
	}
	
	public Date getForecast_date() {
		return forecast_date;
	}
	public void setForecast_date(Date forecast_date) {
		this.forecast_date = forecast_date;
	}
	
}
